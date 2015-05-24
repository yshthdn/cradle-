library(shiny)
shinyUI(pageWithSidebar(
        headerPanel("Sample plot"),
        sidebarPanel(
                sliderInput('mu', 'Guess at the mean',value = 370, min = 370, max = 480, step = 0.05,)
        ),
        mainPanel(
                plotOutput('newHist'),
                plotOutput('newPlot')
        )
))
