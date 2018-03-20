
## app.R ##
library(shiny)
library(shinydashboard)

shinyUI(
  
  dashboardPage(
      
    dashboardHeader(title = "DOUGLAS200760922",
        dropdownMenu(type = "message", 
          messageItem(from = "Hello Access Ops",message = "Welcome to Automation", icon = icon("handshake-o"), time = "3/19/2018")
)),                                                    
      
    dashboardSidebar(
        sliderInput("bins", "Number of Breaks",1,100,50),
      
      sidebarMenu(
        menuItem("Dashboard", tabName = "dashboard", icon = icon("dashboard")),
        menuItem("Finance", tabName = "finance"),
        menuItem("Sales", tabName = "sales"),
        menuItem("Analysis", tabName = "detailed"),
        menuItem("Raw Data", tabName = "raw")
)),      
    dashboardBody(
        tabItems(
          tabItem(tabName = "dashboard",fluidRow(box(plotOutput("histogram"))
)),
        tabItem(tabName = "finance", h1("Finance Dashboard")),
        tabItem(tabName = "sales", h1("Sales Dashboard")),
        tabItem(tabName = "detailed", h1("Detailed Analysis")),
        tabItem(tabName = "raw", h1("Raw Data"))
))))



