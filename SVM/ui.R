#Shiny app to create a Support vector machine application 
library(shiny)
library(shinythemes) #to load shiny themes

#creating the UI for the app
shinyUI(fluidPage(
    #setting the theme
    theme=shinytheme("united"),
    pageWithSidebar(
  
  
    headerPanel("Support Vector Classifier"), ##the title of the web app
    #sidebarPanel()   
    sidebarPanel(
      sliderInput(inputId="datapoints",label="Number of Data points",value=20,min=5,max=1000,step=10)
      
    ) ,
    
    mainPanel(
      h4("Confusion Matrix :", align = "left")
    )
    
      
  
)))
