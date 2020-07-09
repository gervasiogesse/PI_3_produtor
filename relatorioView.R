relatorioView <- function(){
  # O tabname declarado aqui deve ser o mesmo declarado no MenuPrincipal
  tabItem(tabName = "Relatorio",
          tags$head(
            # Include our custom CSS
            includeCSS("./www/styles.css")
          ),
          fluidRow(
            box(
              selectInput("select", h3("Produto"), 
                          choices = list("banana" = "banana", "alface" = "alface",
                                         "maca" = "maca", "brocoli" = "brocoli", "tomate"="tomate"), selected = 3),
              width = 4
            ),
            box(
              plotOutput("relatorio"),
              width = 8
            )
          )
  )
}