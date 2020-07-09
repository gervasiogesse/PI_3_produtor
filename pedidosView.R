pedidosView <- function(){
    # O tabname declarado aqui deve ser o mesmo declarado no MenuPrincipal
    tabItem(tabName = "Pedidos",
            tags$head(
              # Include our custom CSS
              includeCSS("./www/styles.css")
            ),
            fluidRow(
              box(
                dataTableOutput("Pedidos"),
                width = 12
              )
            ),
            fluidRow(
              box(
                dataTableOutput("PedidosClientes"),
                width = 12
              )
            )
    )
}