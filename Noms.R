

# Modified from Winston Chang,
# https://shiny.rstudio.com/gallery/shiny-theme-selector.html

# Concepts about Reactive programming used by Shiny,
# https://shiny.rstudio.com/articles/reactivity-overview.html

# Load R packages
library(shiny)
library(shinythemes)


# Define UI
ui <- fluidPage(theme = shinytheme("simplex"),
                navbarPage(
                  # theme = "cosmo",  # <--- To use a theme, uncomment this
                  "NAME DEFINITION",
                  tabPanel("Names",
                           sidebarPanel(
                             tags$h3("input:"),
                             textInput("txt1", "prenom", ""),
                             textInput("txt2", "nom:", ""),

                           ), # sidebarPanel
                           mainPanel(
                             h2("Nom Complet"),

                             h4("Magnifique"),
                             verbatimTextOutput("txtout"),

                           ) # mainPanel

                  ), # Navbar 1, tabPanel
                  tabPanel("Actualites", "           L'économie mondiale connaît un ralentissement synchronisé : la croissance a de nouveau été révisée à la baisse pour 2019, à 3 %, soit son rythme le plus lent depuis la crise financière mondiale. Il s'agit d'un sérieux recul par rapport aux 3,8 % de 2017, année où l'économie mondiale connaissait un redressement synchronisé. Le tassement de la croissance est la conséquence de l’augmentation des obstacles au commerce, de l'incertitude accrue qui entoure les échanges commerciaux et la situation géopolitique, de facteurs spécifiques qui causent des tensions macroéconomiques dans plusieurs pays émergents et de facteurs structurels, dont une faible productivité et un vieillissement de la population dans les pays avancés.

En 2020, la croissance mondiale devrait s'améliorer légèrement pour atteindre 3,4 %, ce qui correspond à une révision à la baisse de 0,2 % de nos projections d'avril. Toutefois, contrairement au ralentissement synchronisé, cette reprise n’est pas généralisée et est précaire. La croissance des pays avancés devrait ralentir pour s'établir à 1,7 % en 2019 et 2020, tandis que celle des pays émergents et des pays en développement devrait s'accélérer, passant de 3,9 % en 2019 à 4,6 % en 2020. Cette accélération s’explique pour moitié par une reprise ou une récession moins forte dans des pays émergents en difficulté, comme la Turquie, l'Argentine et l'Iran, et pour le reste par une reprise dans des pays où la croissance a considérablement ralenti en 2019 par rapport à 2018, comme l'Arabie saoudite, le Brésil, l'Inde, le Mexique et la Russie."),
                  tabPanel("Contact Us", "Tel: +509 33213232.

                                   Email: widnerlafleur@gmail.com")

                ) # navbarPage
) # fluidPage


# Define server function
server <- function(input, output) {

  output$txtout <- renderText({
    paste( input$txt1, input$txt2, sep = " " )
  })
} # server


# Create Shiny object
shinyApp(ui = ui, server = server)
