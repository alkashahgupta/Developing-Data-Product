taxamount <- function(salary){
  if (salary >=0 & salary <= 18200) "Nil"
  else if (salary > 18200 & salary <= 37000) (salary-18200)*19/100
  else if (salary > 37000 & salary <= 80000) (3572+ (salary-37000)*32.5/100)
  else if (salary > 80000 & salary <=180000) (17547 + (salary-80000)*37/100)
  else if (salary > 180000)(54547 + (salary-180000)*45/100)
  else "please enter valid amount"
} 

shinyServer(
  function(input, output) {
    x <- reactive({taxamount(input$salary)})
    output$tax <- renderPrint({x()})
  })