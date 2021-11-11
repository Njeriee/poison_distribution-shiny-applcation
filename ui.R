#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a Poisson probability plot
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Poisson Distribution"),
  
  # Sidebar with a slider input for value of lambda
  sidebarLayout(
    sidebarPanel(
      sliderInput("l",
                  "l:",
                  min = 1,
                  max = 400,
                  value = 1)
    ),
    
    # Show a plot of the generated probability plot
    mainPanel(
      plotOutput("ProbPlot")
    )
  )
))
