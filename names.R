

library(shiny)
library(shinythemes)


 #define UI
ui <- fluidpage(theme = shinytheme("cerulean"), 
                navbarpage(
                  "NAMES",
                tabPanel("navbar 1",
                 sidebarPanel(
                  tags$h3("input"),
                  textInput("txt1", "Given Name:", ""),
                  texteInput("txt2", "Surname:",""),
                                                                                 ),
                            
                 ),#siderPanel
                           
                  mainPanel(h1(
                    "Header 1"),
                    h4("Output 1"),
                    verbatimTexteOutput("textout"),
                            
                     ) #Mainpanel
                
                    ), #navbar 1 , tabpanel
                            tabPanel("navbar2","intentional blank"),
                            tabPanel("navbar3", "intentional blank")
                    ) #navabar

                 )#fluidPage

     #define Sever fonction
  server <- function(input, output){
    
  output$txtout <-renderText({
    paste(input$txt1, input$txt2, sep = " ")
    
    })
  
  } #server

    #creat shiny object


shinyApp(ui=ui, server=server)


