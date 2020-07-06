#--------------------------------------------------------------------
# Script criado por Gervasio Gesse Junior
# e Iris Menezes Barbosa Gesse em 04/07/2020
# Projeto Integrador 3 UNIVESP
#--------------------------------------------------------------------

logoutView <- function(){
  tabItem(tabName = "logout",
    fluidRow(
      column(
        6,
        h1("Hello Shiny!")
      ),
      column(
        6,
        br(),
        actionButton(
          "sign_out",
          "Sign Out",
          icon = icon("sign-out-alt"),
          class = "pull-right"
        )
      ),
      column(
        12,
        verbatimTextOutput("user_out")
      )
    )
  )
}