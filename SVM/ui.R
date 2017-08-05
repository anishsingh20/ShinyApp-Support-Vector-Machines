#Shiny app to create a Support vector machine application 
library(shiny)
library(shinythemes) #to load shiny themes

#creating the UI for the app
shinyUI(fluidPage(
  
      #setting theme
      theme = shinytheme("yeti"),
      
      pageWithSidebar(
        
      #the header
        headerPanel(
          h1("Support Vector Classifier",align="center",style="color:black"),
          windowTitle = "SVM APP"
        ) ,#close headerpanel
        
      
      #the sidebar panel consisting of the SVM parameters sliders
        sidebarPanel(
          strong(h2("The SVM parameters",style="color:black")),
          
          sliderInput("datapoints",'Number of data points',value = 50, min = 10, max = 1000, step = 5),
          
          sliderInput("shift","Shift between the classes",value = 2, min = 0, max = 5, step = 0.5),
          
          sliderInput("cparam","Regularization parameter C",value = 10, min = 0.1, max = 100, step = 0.5),
          
          sliderInput("gamma","Tuning Paramater Gamma",value = 1, min = 0.001, max = 20, step = 0.05)
        
      ) ,
      
      #the main panel
      mainPanel(
        p("A web application made using ShinyR which is used to demonstrate the working of a famous classifier
            called" ,strong(a("Support vector machines",href="http://rpubs.com/anish20/svmR",target="_blank" )), "and effects of how the hyperparameters effect its classification perfomance."),
        
         plotOutput("svmplot"),
         hr(),
         div(height="400px",width="400px",
           
           h3("Confusion Matrix",align="left",style="color:red"),
           p("The daigonals consist of correct classifications and off-diagonals are incorrectly classified")
           
           )
        
        
      )
        
      
    ) #close page with sidebar
  )
)