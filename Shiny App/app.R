library(shiny)
ui <- fluidPage(
  #Create the title
  titlePanel("Standard Normal Distribution"),
  sidebarLayout(
    sidebarPanel(
      #Give input of z_value with a default of 0
      numericInput(inputId = "z_value", label = "Input a z value.", value = 0)
    ),
    mainPanel("The corresponding P-value is", textOutput("p_value"))
  )
)
server <- function(input, output) {
  #Output the corresponding p-value for the input z_value using pnorm
  output$p_value <- reactive({pnorm(input$z_value)})
}
shinyApp(ui = ui, server = server)