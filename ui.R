library(shiny)
shinyUI(pageWithSidebar(
        headerPanel("Sample plot"),
        sidebarPanel(
                h3('Sidebar text')  
        ),
     
        mainPanel(
                uiOutput('plot')
                
                
        )
))
