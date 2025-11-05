getwd()
library(usethis)
library(devtools)
library(shiny)
library(rmarkdown)
desc_content <- "
Package: myPackage
Type: Package
Title: MTCARS Analysis Package
Version: 0.1.0
Author: Your Name
Maintainer: Your Name <your@email.com>
Description: An example R package containing a Shiny app and cleaned mtcars dataset.
License: MIT
Encoding: UTF-8
LazyData: true
"
if (!require(usethis)) install.packages("usethis")
library(usethis)

# Create a README.md in the root of your package
usethis::use_readme_md(open = TRUE)


writeLines(desc_content, "DESCRIPTION")


usethis::create_package(path = getwd(), open = FALSE)

usethis::use_data_raw("mtcars_clean")

writeLines("
# Load raw dataset
raw_data <- mtcars

# Clean (trivial here)
clean_data <- raw_data

# Save cleaned dataset for package
usethis::use_data(clean_data, overwrite = TRUE)
", "data-raw/mtcars_clean.R")

dir.create("inst/appdir", recursive = TRUE)

writeLines("
library(shiny)

ui <- fluidPage(
  titlePanel('MTCARS Explorer'),
  sidebarLayout(
    sidebarPanel(
      selectInput('xvar', 'X-axis:', choices = names(mtcars)),
      selectInput('yvar', 'Y-axis:', choices = names(mtcars)),
      sliderInput('n', 'Number of points:', min = 1, max = nrow(mtcars), value = nrow(mtcars))
    ),
    mainPanel(plotOutput('scatter'))
  )
)

server <- function(input, output) {
  output$scatter <- renderPlot({
    data <- mtcars[1:input$n, ]
    plot(data[[input$xvar]], data[[input$yvar]],
         xlab = input$xvar, ylab = input$yvar,
         main = paste('MTCARS:', input$xvar, 'vs', input$yvar))
  })
}

shinyApp(ui, server)
", "inst/appdir/app.R")

usethis::use_r("launch_app")

writeLines("
#' Launch the Shiny App
#' @export
launch_app <- function() {
  app_dir <- system.file('appdir', package = 'myPackage')
  shiny::runApp(app_dir, display.mode = 'normal')
}
", "R/launch_app.R")

usethis::use_vignette("introduction")

writeLines("
---
title: 'Introduction to myPackage'
output: rmarkdown::html_vignette
vignette: >
  %\\VignetteIndexEntry{Introduction to myPackage}
  %\\VignetteEngine{knitr::rmarkdown}
  %\\VignetteEncoding{UTF-8}
---

This vignette introduces **myPackage**, a simple R package for exploring **mtcars** with a Shiny app.
", "vignettes/introduction.Rmd")

library(devtools)
document()
devtools::document()
devtools::install()
library(myPackage)
launch_app()

system("git status")

logs <- system("git log --oneline", intern = TRUE)

# Print to console
cat(logs, sep = "\n")
