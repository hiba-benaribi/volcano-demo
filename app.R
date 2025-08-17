library(shiny)

ui <- fluidPage(
  plotOutput("plot")
)

server <- function(input, output, session) {
  output$plot <- renderPlot({
    x <- rnorm(100)
    y <- -log10(runif(100))
    plot(x, y, pch = 19, col = "blue", main = "Base R Volcano Plot")
  })
}

shinyApp(ui, server)
