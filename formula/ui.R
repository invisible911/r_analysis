library(shiny)
library(shinyRGL)

#' Define UI for application that plots random 3d points
#' @author Jeff Allen \email{jeff@@trestletech.com}
shinyUI(
  

  # Show the generated 3d scatterplot
  mainPanel(
    webGLOutput("sctPlot"),width = 100
  )
   
)