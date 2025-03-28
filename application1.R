
# Load R packages
library(shiny)
library(shinythemes)

setwd("C:/Users/ESM/Desktop/App")
List <- read.csv("ListeDesPays1.csv")
croissance <-read.csv("worldone.csv")
croissance

# Define UI
ui <- fluidPage(theme = shinytheme("cosmo"),
                navbarPage(

                  "GLOBAL ECONOMY",
                  tabPanel("ECONOMICS",
                           
                        sidebarPanel(navbarPage(h6("How the global economy has evolved over the past five years.")),
                             selectInput("pays", "Choose Country", choices = c(croissance$Country.Name)),
                             conditionalPanel(condition = "input.pays == 'choices'",
                                              textInput("Var", "please select the Variables", croissance$X1960)),

                             selectInput("Var", "Variables", choices = c("Croissance Economique", "Croissance Demongraphiques")),
                             
                             
                                                               
                           ), # sidebarPanel
                        
                           mainPanel(
                             h2("Change in economic growth"),
                             
                             h4("The COVID-19 pandemic resulted in the most severe and synchronized decline in growth rates 
recorded in the world since World War II. According to current forecasts, more than 
90 per cent of the world's countries will experience a contraction in per capita gross domestic product (GDP) in 
2020 - higher than the 85% of countries in recession at the height of the Great Depression. In sub-Saharan Africa, the economic impact of the pandemic has been severe, although 
the virus did not spread as much as initially expected.1
 Uncertainty persists, as the health crisis is not 
not finished. The region cannot let its guard down. There are a lot of resources that need to be 
to strengthen African health systems and effectively protect staff 
while ensuring rapid and affordable health care for citizens."),
                             

                             h2("Graphique on a:"),
                             plotOutput("sample(45)"),
                             
                          h2("Comme vous pouvez le constater"),
                           ) # mainPanel

                  ), # Navbar 1, tabPanel

                  tabPanel("Contacts",                            "Tel: +509 332132","Email: widnerlafleur@gmail.com",
                           "
                           Veuillez nous contacte our tous qustion."
                          
                  )

                ) # navbarPage
) # fluidPage



# Define server function
    
    server <-function(input, output){
renderPlot(croissance,x=~X2019)
      
    renderPlot(sample(45))
    }


# Create Shiny object
shinyApp(ui = ui, server = server)

