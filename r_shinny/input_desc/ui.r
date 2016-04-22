shinyUI(fluidPage(
  titlePanel("Changing the values of inputs from the server"),
  sidebarLayout(
    sidebarPanel(
      
      fluidRow(
        column(6, wellPanel(
          h4("These inputs control the other inputs on the page"),
          textInput("control_label",
                    "This controls some of the labels:",
                    "LABEL TEXT"),
          sliderInput("control_num",
                      "This controls values:",
                      min = 1, max = 20, value = 15)
        )),
        
        column(6, wellPanel(
          textInput("inText",  "Text input:", value = "start text"),
          
          numericInput("inNumber", "Number input:",
                       min = 1, max = 20, value = 5, step = 0.5),
          numericInput("inNumber2", "Number input 2:",
                       min = 1, max = 20, value = 5, step = 0.5),
          
          sliderInput("inSlider", "Slider input:",
                      min = 1, max = 20, value = 15),
          sliderInput("inSlider2", "Slider input 2:",
                      min = 1, max = 20, value = c(5, 15)),
          sliderInput("inSlider3", "Slider input 3:",
                      min = 1, max = 20, value = c(5, 15)),
          
          dateInput("inDate", "Date input:"),
          
          dateRangeInput("inDateRange", "Date range input:")
        ))
        
      ), length(100)
      
    ),
    
    
    
    mainPanel(
      h2("what is in side"),
      selectInput("inSelect", "Select input:",list("users","user_track")),

      tabsetPanel(id = "inTabset",
                  tabPanel("panel1", h2("This is the first panel.")),
                  
                  
                  
                  tabPanel("panel2", h2("This is the second panel."))
      )
      
    )
    
    )
)
)
