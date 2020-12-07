#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# what server does: draw a histogram
shinyServer(function(input, output) {
    output$volcanoPlot <- renderPlot({

        # how many bins specified by input$bins in ui.R
        VolcanoData    <- volcano[, 2]
        bins <- seq(min(VolcanoData), max(VolcanoData), length.out = input$bins + 1)

        # draw the histogram with the specified number of bins
        hist(VolcanoData, breaks = bins, col = 'darkgray', border = 'green')
    })
})
