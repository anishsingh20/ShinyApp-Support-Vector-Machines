#file which contains the server logic to serve and interact with the UI elements

library(shiny)
library(e1071)#the SVM package




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
        #generating data with 2 variables and a binary response
        posClass <- data.frame(x1=rnorm(n/2,0), x2=rnorm(n/2,0))#variable1
        negClass <- data.frame(x1=rnorm(n/2,shift), x2=rnorm(n/2,shift))#variable2        myData <- rbind(posClass,negClass)
        y <- c(rep(1,n/2), rep(-1,n/2)) #response variable
        myData$y<-as.factor(y)
       
        #fitting the radial SVM
        Radialsvm<-svm(y ~ .,data=myData,kernel="radial",cost=c,gamma=gamma
                       ,scale=F)
        
        plot(Radialsvm,myData)
        
        
        
    }
    )#close renderPlot
    
    
    
  }
  
)
  
