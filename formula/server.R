options(rgl.useNULL=TRUE)

library(shiny)
library(shinyRGL)
library(rgl)


time <- seq(1,60*48,10)
distance <- seq(1,100,1)

x=NULL
for (c in 1:length(distance)){x=append(time,x)}


y=NULL
for (item1 in distance){
  for (item in time){
    y=append(item1,y)
  }  
}



formular<- function(time,distance){
  #1/(time+3)*1/(distance*3)*1000000
   1/time*1/distance
}



f1 <- function(s, t) {
  r <- 1 + exp( -pmin( (s - t)^2, 
                       (s - t - 1)^2, 
                       (s - t + 1)^2 )/0.01 )
  cbind(r*cos(t*2*pi), r*sin(t*2*pi), s)
}

f2 <- function(x, y) { 
  r <- sqrt(x^2 + y^2)
  ifelse(r == 0, 10, 10 * sin(r)/r)
}



#' Define server logic required to generate and 3d scatterplot
#' @author Jeff Allen \email{jeff@@trestletech.com}
shinyServer(function(input, output) {
  
  # Expression that generates a rgl scene with a number of points corresponding
  # to the value currently set in the slider.
  output$sctPlot <- renderWebGL({

    #plot3d(f1(0.5, seq.int(0, 1, length.out = 100)), lwd = 3, depth_test = "lequal")
    #plot3d(f1(0.5, seq.int(0, 1, length.out = 100)), type = "l", add = TRUE,       lwd = 3, depth_test = "lequal")
    plot3d(x = x,y=y,formular(x,y))
    
  })
  
  output$myWebGL <- renderWebGL({
    points3d(1:100, 1:10, 1:10)
    axes3d()
  })
  
})