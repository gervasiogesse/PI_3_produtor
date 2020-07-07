#--------------------------------------------------------------------
# Script criado por Gervasio Gesse Junior
# e Iris Menezes Barbosa Gesse em 04/07/2020
# Projeto Integrador 3 UNIVESP
#--------------------------------------------------------------------

produtoController <- function(input, output, session){
  
  #--------------------------- Observer ------------------------------------------------
  observe({ 
      indicePdt = as.numeric(input$Produtos_rows_selected)
    if(length(indicePdt) > 0){
      Selecionados <- data.frame(dfProdutos %>% slice(indicePdt),
                                 valor=input$valor,
                                 Disponivel=input$disp,
                                 emailId=email,
                                 semana=semanaAtual()
                                 )
      # Selecionados <- dfProdutos %>% slice(indicePdt)
      print(head(Selecionados))
      write.csv(Selecionados, "Selecionados.csv")
    }
  })
  
  #--------------------------- Condutores reativos ------------------------------------------------
  rowSelect <- eventReactive(input$saveButton, {
    read.csv("Selecionados.csv")
  })
  # ------------------------Proxy da tabela-----------------------------------------
  
  #-------------------------- Saidas --------------------------------------------------------------
  
  # output$Produtos <- renderDataTable({datatable(dfProdutos, escape = FALSE)})
  output$Produtos <- renderDataTable({datatable(dfProdutos,
      options = list(orderClasses = TRUE,
                   lengthMenu = c(2, 25, 50),
                   pageLength = 2,
                   fixedHeader = TRUE
                ),
                  selection="single",escape=F, extensions = c('Scroller', 'Responsive')
                )
          })
  output$Selecionado <- renderDataTable({datatable(
    rowSelect()
  )})
  output$valor <- renderText({input$valor})
  output$disp <- renderText({input$disp})
  output$dateText  <- renderText({
    paste("input$date is", as.character(input$date))
  })
  output$usuario <- renderPrint({
    # session$userData$user()
    email
  })
  output$email <- renderPrint({
    # session$userData$user()$email
    email
  })
}