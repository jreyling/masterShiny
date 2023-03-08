library(shiny)

ui <- fluidPage(
  textInput("name", "What's your name?"),
  textOutput("greeting")
)

# server <- function(input, output, session) {
#   output$greeting <- renderText(paste0("Hello ", input$name))
# }

# server <- function(input, output, session) {
#   string <- reactive(paste0("Hello ", input$name))
#   output$greeting <- renderText(string())
# }

server <- function(input, output, session) {
  output$greeting <- reactive(paste0("Hello, ", input$name))
}

shinyApp(ui, server)