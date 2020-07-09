#--------------------------------------------------------------------
# Script criado por Gervasio Gesse Junior
# e Iris Menezes Barbosa Gesse em 04/07/2020
# Projeto Integrador 3 UNIVESP
#--------------------------------------------------------------------

MenuPrincipal <- function() {
  sidebarMenu(
    id = "tabs",
    
    #-------------------------Menu Dashboard----------------------------
    #menuSubItem("Dashboard Sites", tabName = "Sites", icon = icon("th")),
    menuItem("Cadastro Produto", tabName = "Produto", icon = icon("th")),
    menuItem("Meus Pedidos", tabName = "Pedidos", icon = icon("th")),
    menuItem("Regressão Linear", tabName = "Relatorio", icon = icon("th")),
    
    #------------------------Menu Logout--------------------------------
    menuItem("LogOut", tabName = "logout", icon = icon("sign-out-alt")),
    #------------------------Filtros Menu principal-------------------------
    
    conditionalPanel(
      condition = "input.tabs == 'Principal'",
      dataInput('date')
    )
)}
