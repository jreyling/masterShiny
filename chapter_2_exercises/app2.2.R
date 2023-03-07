library(shiny)


ui <- fluidPage(
  # 2.2.8 - 1
  textInput('name','', placeholder = 'Your name'),
  # 2.2.8 - 2
  sliderInput('delivery', 'When should we deliver?', 
              min = as.Date('2020-09-14'),
              max = as.Date('2020-09-23'), 
              value = as.Date('2020-09-17')),
  # 2.2.8 - 3
  sliderInput('num3', 'Animated Slider', min = 0, max = 100, step = 5, value = 0,
              animate = animationOptions(interval = 250, loop = FALSE)), 
  # 2.2.8 - 4
  selectInput('num4', 'Moderately long list', selected = '',
              list(`Dogs` = list('St. Bernard', 'Shelty', 'Hound'),
                   `Cats` = list('Tortoise Shell', 'Tabby', 'Black'),
                   `Rodents` = list('Mouse', 'Rat', 'Squirrel')))
)
# 2.3.5 - 1
    # a. verbatimTextOutput()
    # b. textOutput()
    # c. verbatimTextOutput()
    # d. verbatimTextOutput()

server <- function(input, output, session) {
  
}

shinyApp(ui, server)