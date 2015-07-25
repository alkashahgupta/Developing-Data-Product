library(shiny)

shinyUI(navbarPage("",
  tabPanel("Tax Results",
           headerPanel("Australian Individual income tax rates for 2015-16"),
           sidebarPanel(
             numericInput("salary","Please Enter Your Annual Salary Amount in AUD:",1000)
           ),
           mainPanel(
             h3('You have to pay total AUD per annum'),
             verbatimTextOutput("tax")
           )
           ),
  tabPanel("About",
           includeMarkdown("about.Rmd"))
  )
  
  )