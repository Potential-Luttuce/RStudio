#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

fluidPage(
  titlePanel("My Shiny app"),
  sidebarLayout(
    sidebarPanel(
      "Title title Title",
      sliderInput(
        "num", "Choose a number",
        min = 0, max = 100,
        value = 20),
      actionButton('action', 'Action!', class = 'actionbtn'),
      checkboxInput('check', 'CheckBox', value = FALSE, width = NULL), 
      checkboxInput('check', 'MikeBOX', value = FALSE, width = NULL)
    ),
    mainPanel(
      "And this is the main stuff"
    )
  )
)
