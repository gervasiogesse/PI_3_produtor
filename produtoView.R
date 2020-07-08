#--------------------------------------------------------------------
# Script criado por Gervasio Gesse Junior
# e Iris Menezes Barbosa Gesse em 04/07/2020
# Projeto Integrador 3 UNIVESP
#--------------------------------------------------------------------

# Referencias
# https://stackoverflow.com/questions/30486412/r-shiny-custom-icon-image-in-selectinput 
# https://stackoverflow.com/questions/30671958/how-to-embed-an-image-in-a-cell-a-table-using-dt-r-and-shiny
# https://stackoverflow.com/questions/37875078/shiny-checkbox-in-table-in-shiny

produtoView <- function(){
  # O tabname declarado aqui deve ser o mesmo declarado no MenuPrincipal
  tabItem(tabName = "Produto",
          tags$head(
            # Include our custom CSS
            includeCSS("./www/styles.css")
          ),
          fluidRow(
            box(
              dataTableOutput("Produtos"),
              width = 6
            ),
            box(
              sliderInput("valor", "Valor R$",
                          min = 0.5, max = 100, value = 1.0
              ),
              switchInput(inputId = "disp", onLabel = "Sim", offLabel = "Não",
                          size = "mini"
              ),
              submitButton("saveButton", icon("save"))
            )
          ),
          fluidRow(
            box(
              dataTableOutput("Selecionado"),
              width = 12
            )
          )
  )
}