
library(shiny)

library(shinythemes)

library(shiny)

ui <- fluidPage(
  tags$head(
    tags$style(HTML("
      body {
        background-color: #ffe6f2;  /* light pink background */
      }
    "))
  ),

  titlePanel("MTCARS Explorer"),

  p("This Shiny app helps you explore relationships between variables in the mtcars dataset.
   The dataset contains information about various car models, such as their fuel efficiency and engine size."),

  p("Use the selectors on the left to choose which variables appear on the X and Y axes.
   For example, selecting 'mpg' on the Y-axis and 'disp' (engine displacement) on the X-axis
   shows how fuel efficiency changes as engine size increases."),

  p("Interpretation: As displacement increases, miles per gallon (mpg) generally decreases,
   showing a negative, downward-sloping trend.
   This means larger engines tend to consume more fuel per distance traveled."),

  p("The slider below lets you adjust how many car models are displayed in the plot."),

  sidebarLayout(
    sidebarPanel(
      helpText("Select variables to compare. The plot updates automatically."),
      selectInput("xvar", "X-axis:", choices = names(mtcars)),
      selectInput("yvar", "Y-axis:", choices = names(mtcars)),
      sliderInput("n", "Number of points to display:",
                  min = 1, max = nrow(mtcars), value = nrow(mtcars))
    ),
    mainPanel(
      plotOutput("scatter"),
      helpText("Each point represents a car. Use the slider to limit displayed cars.")
    )
  )
)

server <- function(input, output) {
  output$scatter <- renderPlot({
    data <- mtcars[1:input$n, ]
    plot(
      data[[input$xvar]], data[[input$yvar]],
      xlab = input$xvar,
      ylab = input$yvar,
      main = paste("MTCARS:", input$xvar, "vs", input$yvar),
      pch = 19,
      col = "#99004d"
    )
  })
}

shinyApp(ui = ui, server = server)






