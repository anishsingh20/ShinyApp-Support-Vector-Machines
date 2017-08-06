#file which contains the server logic to serve and interact with the UI elements

library(shiny)
library(e1071)#the SVM package

# Define server logic 
shinyServer(
  function(input, output) {
    output$svmplot<-renderPlot(
      {
        hist(rnorm(input$datapoints))
        
    }
    )#close renderPlot
    
    
    
  }
  
)
  
