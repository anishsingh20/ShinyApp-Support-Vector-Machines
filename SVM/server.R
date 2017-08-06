#file which contains the server logic to serve and interact with the UI elements

library(shiny)
library(e1071)#the SVM package
library(ElemStatLearn)

#Loading the data
attach(mixture.example)

# Define server logic 
shinyServer(
  function(input, output) {
    output$svmplot<-renderPlot(
      {
        #R-syntax to use the widget elements goes here
        set.seed(1002) 
        n<-input$datapoints
        c<-input$cparam
        shift<-input$shift
        gamma<-input$gamma 
        
        
        
    }
    )#close renderPlot
    
    
    
  }
  
)
  
