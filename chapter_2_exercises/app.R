library(shiny)
library(reactable)

ui <- fluidPage(
  reactableOutput("table")
)
server <- function(input, output, session) {
  output$table <- renderReactable({
    reactable(mtcars, searchable = FALSE, filterable = FALSE, sortable = FALSE)
  })
}

shinyApp(ui, server)