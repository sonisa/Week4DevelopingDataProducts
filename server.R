#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
shinyServer(
  function(input, output){
    output$rentalYield <- renderText({ calculateRentalYield(input$MonthlyRent, input$Income) })
    output$cashflowPerYear <- renderText({calculateYearlyCashflow(input$MonthlyRent, input$waterPerMonth, input$MonthlyGas, input$Electricity)})
    output$CashSavingYear <- renderText({CashSavingYear(input$MonthlyRent, input$waterPerMonth, input$MonthlyGas, input$Electricity)})
  }
)

calculateRentalYield <- function (MonthlyRent, Income) 
{
  result <- MonthlyRent * 12 / Income * 100
  return(round(result, digits = 2))
}

calculateYearlyCashflow <- function(MonthlyRent, MonthlyGas, waterpermonth, Electricity)
{
  result <- (MonthlyRent  + waterpermonth + MonthlyGas + Electricity )* 12
  return(result)
}

