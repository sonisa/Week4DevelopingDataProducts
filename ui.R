#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#
library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Investment Property"),
  sidebarPanel(
    h4('Property'),
    textInput('text', 'Address', value=''),
    numericInput('Income', 'Income ($)', 90000),
    numericInput('MonthlyRent', 'Monthly Rent ($)', 750),
    h5('Costs'),
    numericInput('MonthlyGas', 'MonthlyGas ($ per month)', 20),
    numericInput('waterPerMonth', 'Water ($ per month)', 60),
    numericInput('Electricity', 'Electricity ($ per month)', 100)
  ),
  mainPanel(
    h4('Rental Yield (%)'),
    textOutput("rentalYield"),
    h4('Cashflow Per Year ($)'),
    textOutput("cashflowPerYear")
  )
))