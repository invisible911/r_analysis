#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel(h1("pannel")),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(    #lay out
    sidebarPanel('sider pannel'),
    
    
    
    
    
    mainPanel( h5('main pannel'),
               p("p creates a paragraph of text."),
               p("A new p() command starts a new paragraph. Supply a style attribute to change the format of the entire paragraph.", style = "font-family: 'times'; font-si16pt"),
               strong("strong() makes bold text."),
               em("em() creates italicized (i.e, emphasized) text."),
               br(),
               code("code displays your text similar to computer code"),
               div("div creates segments of text with a similar style. This division of text is all blue because I passed the argument 'style = color:blue' to div", style = "color:blue"),
               br(),
               p("span does the same thing as div, but it works with",
                 span("groups of words", style = "color:blue"),
                 "that appear inside a paragraph."),
       plotOutput("main pannel")
    ),
    
    
    
    position = 'right'
  
    
    )
))
