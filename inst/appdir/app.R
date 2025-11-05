
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

