suppressPackageStartupMessages({
  library(shinydashboard)
  library(shiny)
  library(tidyverse)
  # Biblioteca para datatable e tabelas
  library(DT)
  # Biblioteca para datatable e tabelas
  library(data.table)
  library(plotly)
  library(htmltools)
  library(shinyWidgets)
  # Biblioteca para autenticacao
  library(polished)
  
  source("common.R", local = TRUE)
  source("MenuPrincipal.R", local = TRUE)
  source("produtoView.R", local = TRUE)
  source("produtoController.R", local = TRUE)
  source("logoutView.R", local = TRUE)
  source("logoutController.R", local = TRUE)
})
# global_sessions_config( 
#   app_name = "pi_3_produtor",
#   api_key = "SHMA2UKkAttxQq6p082bcCc6160hkPe91Q"
# )
