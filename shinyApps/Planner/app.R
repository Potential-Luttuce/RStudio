library(shiny)
library(shinythemes)
library(bslib)
library(shinyjs)
library(shinydashboard)

# Define UI for app that draws a histogram ----
ui = fluidPage(theme = "shiny.css",
  tags$head(tags$style(
    HTML('
      #main {
        background-color: aliceblue;
      }')
  )),
 navbarPage(id = "nav", "Planner!",
            tabPanel("CodeWithCuesta"),
          ),
  # App title ----
  hr(),
  
  # Sidebar layout with input and output definitions ----
  # Date, Task, time inputs and Robot
  sidebarLayout(
    sidebarPanel( id = "panel",
      img(src = "robot.jpg", id='Robot'),
      textInput("dte", value = "mm/dd/yyyy", "Type Below To Create A New Task:"),
      selectInput(
        "dueTime",
        "Due Time:",
        c("8:00AM" = "8AM",
          "8:30" = "8:30AM",
          "9:00" = "9AM",
          "9:30" = "9:30AM",
          "10:00" = "10AM",
          "10:30" = "10:30AM",
          "11:00" = "11AM",
          "11:30" = "11:30AM",
          "12:00PM" = "12PM",
          "12:30" = "12:30PM",
          "1:00" = "1PM",
          "1:30" = "1:30PM",
          "2:00" = "2PM",
          "2:30" = "2:30PM",
          "3:00" = "3PM",
          "3:30" = "3:30PM",
          "4:00" = "4PM",
          "4:30" = "4:30PM",
          "5:00" = "5PM"
          ),
        selected = NULL,
        multiple = FALSE,
        selectize = TRUE,
        width = NULL,
        size = NULL
      ),
      textInput("tsk", "Type Below To Create A New Task:"),
      actionButton("bttn", "Create Task")
      # Input: Slider for the number of bins ----
     ),
    
    # Main panel for displaying outputs ----
    mainPanel( id = "main",
      tags$div(id = "Header", h1("To Do:")),
      tags$div(id = "log", textOutput("Date"), textOutput("DueTime"),
               textOutput("task"))
    )
  )
)

# Define server logic required to draw a histogram ----
server <- function(input, output) {
  output$Date <- renderText({ input$dte })
  output$DueTime <- renderText({input$dueTime})
  output$task <- renderText({ input$tsk })
  
  
}
shinyApp(ui = ui, server = server)