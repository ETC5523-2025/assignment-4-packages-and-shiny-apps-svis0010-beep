
library(shiny)

library(shinythemes)

library(shiny)

library(myPackage)
fwi <- mydata
names(mydata) <- c("year", "fwi_index")

fwi <- myPackage::fwi




#TRIAL 3

ui <- fluidPage(
  theme = shinytheme("cerulean"), # you can change theme if you like
  tags$style(HTML("
    body { background-color: #ffccff; }  /* Pink background */
    h3 { color: #99004d; }
    p { font-size: 14px; }
  ")),

  titlePanel("FWI Explorer"),

  sidebarLayout(
    sidebarPanel(
      sliderInput("n", "Number of years to display:",
                  min = 1, max = nrow(fwi), value = nrow(fwi))
    ),
    mainPanel(
      h3("Fire Weather Index (FWI) Over Time"),
      p("This is a scatterplot of Fire Weather Index across years."),
      p("The data was sourced from: ",
        a("KNMI Climate Explorer",
          href = "https://climexp.knmi.nl/getindices.cgi?WMO=SEAustralia/fwi_era5_monmean_97-18_nsw&STATION=FWI_era5_monmean_nsw&TYPE=i&id=")),
      p("The data was initially monthly, but has been averaged across years."),
      p("FWI is a meteorological system representing fire danger by combining weather variables like temperature, rainfall, humidity, and wind speed. A higher index indicates more extreme weather events."),
      p("Use the slider to explore changes across years."),
      plotOutput("fwi_plot")
    )
  )
)

# Server
server <- function(input, output) {
  output$fwi_plot <- renderPlot({
    req(fwi)  # ensure dataset exists
    data <- fwi[1:input$n, ]

    plot(
      data$year, data$fwi_index,
      type = "b",
      col = "#99004d",
      pch = 19,
      xlab = "Year",
      ylab = "FWI Yearly Index",
      main = "FWI Yearly Index over Time"
    )
  })
}

# Run the app
shinyApp(ui = ui, server = server)

