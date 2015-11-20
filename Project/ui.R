library(shiny)
library(ggplot2)
library(markdown)
data(mtcars)

dataset <- mtcars

shinyUI(pageWithSidebar(
        
        headerPanel("Automobile Explorer"),
        
        sidebarPanel(
                
                sliderInput('sampleSize', 'Sample Size', min=1, max=nrow(dataset),
                            value=15, step=1),
                
                selectInput('x', 'X', names(dataset)),
                selectInput('y', 'Y', names(dataset), names(dataset)[[2]]),
                selectInput('color', 'Color', c('None', names(dataset))),
                
                checkboxInput('jitter', 'Jitter'),
                checkboxInput('smooth', 'Smooth'),
                
                selectInput('facet_row', 'Facet Row', c(None='.', names(dataset))),
                selectInput('facet_col', 'Facet Column', c(None='.', names(dataset)))
        ),
        
        mainPanel(
                tabsetPanel(
                        tabPanel("Plot", plotOutput('plot')),
                        tabPanel("Documentation", includeMarkdown("include.md"))
                )
        )
        
))