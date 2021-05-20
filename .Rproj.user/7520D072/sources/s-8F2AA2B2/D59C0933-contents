library(shiny)


shinyUI(

  pageWithSidebar(
    headerPanel("1st Apps"),
    sidebarPanel(
              selectInput( "Distrubution", "please select distrubution type",
                            choices=c("Normal", "Exponential")),
              sliderInput("sampleSize", "Please select sample size: ",
                          min=100, max=5000, value=1000, step=100),
              conditionalPanel(condition = "input.Distrubution == 'Normal'",
                               textInput("Mean", "please select the mean", 10),
                               textInput("sd",  "please select Standard Deviation", 3)),
              conditionalPanel(condition = "input.Distrubution == 'Exponential'",
                               textInput("lamba", "Please select exponential Lamba:", 1 ))
              ), 
    mainPanel(
      h2("Graphique on a:"),
      plotOutput("myPlot")
    )
    
  ))

  
