library(shiny)

ui <- fluidPage(
  sliderInput("x", label = "If x is", min = 1, max = 50, value = 30),
  sliderInput("y", label = "And y is", min = 1, max = 50, value = 30),
  "then x times y is",
  textOutput("product"),sliderInput('z', label = 'we can add', min = 0, max = 10, value = 0),
  'And we get a total of',
  textOutput('product_add')
  
)

server <- function(input, output, session) {
  output$product <- renderText({ 
    answer <- input$x * input$y
    answer
  })
  output$product_add <- renderText({
    xyz <- (input$x * input$y) + input$z
    xyz
  })
  
}

shinyApp(ui, server)