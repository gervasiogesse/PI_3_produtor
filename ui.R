#--------------------------------------------------------------------
# Script criado por Gervasio Gesse Junior
# e Iris Menezes Barbosa Gesse em 04/07/2020
# Projeto Integrador 3 UNIVESP
#
#--------------------------------------------------------------------

## ui.R ##
## Autenticacao
# secure_ui(

# Inicia a página do dashboard adiciona o logo o link e o titulo
# que aparece na barra de endereço
dashboardPage(
  dashboardHeader(title = tags$img(src='logo.jpg'),
                  dropdownMenuOutput("notificationMenu")
  ),
  title = "PI3",
  #  dashboardSidebar(disable = TRUE),
  
  
  dashboardSidebar(
    # Carrega o menu lateral
    MenuPrincipal()
  ),
  dashboardBody(
    # Carrega os itens do corpo do app
    tabItems(
      produtoView(),
      logoutView()
    )
  )
)
# )