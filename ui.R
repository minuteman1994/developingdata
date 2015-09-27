library(shiny)

shinyUI(fluidPage(
  titlePanel("Body Mass Index Calculator"),
  
  sidebarLayout(sidebarPanel(
    
    helpText("The body mass index (BMI) or Quetelet index, is a value derived from the mass (weight) and height of an individual. The BMI is defined as the body mass divided by the square of the body height, and is universally expressed in units of kg/m2, resulting from mass in kilograms and height in metres (Wikipedia)"),
    
    radioButtons(
      inputId  = "units",
      label    = "Units:",
      choices  = c("Metric (kg & m)" = 1, "Imperial (lb & in)" = 2),
      selected = 1
    ),
    
    numericInput(
      inputId = "mass",
      label = strong("Your weight:"),
      value = 70
    ),
    
    numericInput(
      inputId = "height",
      label = strong("Your height:"),
      value = 1.80,
      step  = 0.10
    )
  ),
  
  mainPanel(
    uiOutput("input"),
    uiOutput("result"),
    uiOutput("graph"),
    uiOutput("fork")
  ))
))