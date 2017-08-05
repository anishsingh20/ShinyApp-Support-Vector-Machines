#Shiny app to create a Support vector machine application 
library(shiny)
library(shinythemes) #to load shiny themes

#creating the UI for the app
shinyUI(fluidPage(
  
      #setting theme
      theme = shinytheme("yeti"),
      pageWithSidebar(
      #the header
        headerPanel("Support Vector Classifier",windowTitle = "SVM APP"),
      
      #the sidebar panel
        sidebarPanel(
          sliderInput("datapoints",'Number of data points', value = 50, min = 10, max = 1000, step = 5),
          sliderInput("shift","Shift between the classes",value = 2, min = 0, max = 5, step = 0.5),
          sliderInput("cparam","Regularization parameter C",value = 10, min = 0.1, max = 100, step = 0.5),
          sliderInput("gamma","Tuning Paramater Gamma",value = 1, min = 0.001, max = 20, step = 0.05)
        
      ) ,
      
      #the main panel
      mainPanel(
        "main content"
        
      )
        
      
    ) #close page with sidebar
  )
)