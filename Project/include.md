### Welcome to the automobile explorer

This application is based on the data that was extracted from the 1974 Motor Trend US magazine, and comprises fuel consumption and 10 aspects of automobile design and performance for 32 automobiles (1973 to 1974 models).

The dataset mtcars has been obtained from the R datasets package in R, Source:

Henderson and Velleman (1981), Building multiple regression models interactively. Biometrics, 37, 391 to 411.


Source code is available on the [GitHub](https://github.com/amphibie/DevDatProduct).


The shinyapp builds a x-y diagramm. 

Inputs:
* Sample Size: You can adjust the sample size with the slider bar panel from 1 to 32.      
* x and y axes: You can choose the different variables of the dataset for the x and y axis.     
* Color: You can choose the color regarding these variables.      
* Jitter: Checkbox for the jitter geom. It is a convenient default for geom_point with position = 'jitter'. See [position_jitter] (http://docs.ggplot2.org/current/position_jitter.html) to see how to adjust amount of jittering.     
* Smooth: Checkbox to add a smoothed conditional mean.      
* Facet Row: The faced to partition data and show graphs in rows.     
* Facet Column: The faced to partition data and show graphs in columns.      

Code description:
* The ggplot2 functions are used to display reactive parts of the output graph:
* Original data set takes into account sampleSize (see mtcars[sample(nrow(mtcars), input$sampleSize),])
* aes_string(x=input$x, y=input$y) is used to set x and y axis.
* aes_string(color=input$color) the color is set if required.
* geom_smooth added if required.
* geom_jitter added if required.
* facets <- paste(input$facet_row, '~', input$facet_col), facet_grid(facets) facets added if required.

### How to run
Share as two R files     
Anyone with R can run my Shiny app. You will need a copy of my server.R and ui.R files, as well as any supplementary materials used in my app (here:include.md). These files (server.R, ui.R and include.md) you find at the above given link of GitHub.
Please place the files into an app directory in your working directory. You can launch the app in R with the following commands:

install.packages("shiny")     
library(shiny)     
runApp()       

### Coursera Developing Data Products Course Project

This peer assessed course project has two parts. 

First part: The Shiny Application (see above)

* 1.Write a shiny application with associated supporting documentation. The documentation should be thought of as whatever a user will need to get started using my application.
* 2.Deploy the application on Rstudio's shiny server
* 3.Share the application link by pasting it into the text box on the peer assessment site of COURSERA.
* 4.Share the server.R and ui.R code on github

Second part: Reproducible Pitch Presentation

I get 5 slides (inclusive of the title slide)  to pitch a my app. I am going to create a web page using Slidify or Rstudio Presenter with an html5 slide deck.

Here's what I need

* 1.5 slides to pitch our idea done in Slidify or Rstudio Presenter
* 2.My presentation pushed to github or Rpubs
* 3.A link to my github or Rpubs presentation pasted into the text box on the peer assessment site of COURSERA.

   






