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
          
          sliderInput("gamma","Tuning Paramater γ",value = 1, min = 0.001, max = 20, step = 0.05)
        
      ) ,
      
      #the main panel
      mainPanel(
        p("A web application made using ShinyR which is used to demonstrate the working of a famous classifier
            called" ,strong(a("Support vector machines",href="http://rpubs.com/anish20/svmR",target="_blank" )), "and effects of how the hyperparameters effect its classification perfomance."),
        
         plotOutput("svmplot"),
         hr(),
         
           
           h3("Confusion Matrix",align="left",style="color:red"),
           p("The daigonals consist of correct classifications and off-diagonals are incorrectly classified") ,
           tableOutput("predmatrix"),
           hr() 
         ,
        
        
        
          fluidRow(
            
            column(12,
              h2("How it works",align="left"),
              p("SVM are used in classification problems to sagment and divide the feature space into different classes
                using hyperplanes or separator lines.We try to find a plane which saperates the classes in some feature space Xi."),
              p("Another concept in SVM is of Maximal Margin Classifiers.What it means is that amongst a set of separating hyperplanes SVM aims at finding the one which maximizes the margin MM.This simply means that we want to maximize the gap or the distance between the 2 
                classes from the Decision Boundary(separating plane"),
              p("SVM does not uses any Probability Model as such like other Classifiers use , because it directly looks for a Hyperplane which divides and sagments the data and classes."),
              p("This concept of separating data linearly into 2 different classes using a Linear Separator or a straight linear line is called",strong("Linear Separability")),
              p("Linear SVM can not always be useful.Linear SVM can only be used when the data is linearly saperable."),
              p("When the the data is Non linearly saperable i.e has Non linearities in it we need to do Feature Expansion i.e do a Non linear transform to the features to convert to higher dimentions and use a Non linear function f(x,β) which is Non 
                linear in predictors Xi to get a Non linear Decision Boundary which saperates the data in an 
                enlarged feature space.An example is ",strong("Radial SVMs"), "which uses a radial kernel."),
              h3("Tuning Parameters",align="left",style="color:black"),
              p("SVM use 2 different types of hyperparameters which we have to select and cannot be learned via training.
                It uses C known as Regularization parameter which is used to control the Bias and the Variance of the Model.
                Second is γ which is also a tuning parameter which determines the smoothness of the Non linear decision boundary")
              
              
              
              
              ) 
            
            
            )#end fluid row
           
        
                    
        
        
        
        
      ) 
      
      
        
      
    ) #close page with sidebar
  )
)