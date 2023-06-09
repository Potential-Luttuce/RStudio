#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(shinythemes)

fluidPage(theme = shinytheme("slate"),
          navbarPage(
            # theme = "cerulean",  # <--- To use a theme, uncomment this
            "shinythemes",
            tabPanel("Navbar 1",
                     sidebarPanel(
                       fileInput("file", "File input:"),
                       textInput("txt", "Text input:", "general"),
                       sliderInput("slider", "Slider input:", 1, 100, 30),
                       tags$h5("Default actionButton:"),
                       actionButton("action", "Search"),
                       
                       tags$h5("actionButton with CSS class:"),
                       actionButton("action2", "Action button", class = "btn-primary")
                     ),
                     mainPanel(
                       tabsetPanel(
                         tabPanel("Tab 1",
                                  h4("Table"),
                                  tableOutput("table"),
                                  h4("Verbatim text output"),
                                  verbatimTextOutput("txtout"),
                                  h1("Header 1"),
                                  h2("Header 2"),
                                  h3("Header 3"),
                                  h4("Header 4"),
                                  h5("Header 5")
                         ),
                         tabPanel("Tab 2", "This panel is intentionally left blank"),
                         tabPanel("Tab 3", "This panel is intentionally left blank")
                       )
                     )
            ),
            tabPanel("Navbar 2", "This panel is intentionally left blank"),
            tabPanel("Navbar 3", "This panel is intentionally left blank")
          ),
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
