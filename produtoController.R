#--------------------------------------------------------------------
# Script criado por Gervasio Gesse Junior
# e Iris Menezes Barbosa Gesse em 04/07/2020
# Projeto Integrador 3 UNIVESP
#--------------------------------------------------------------------

produtoController <- function(input, output, session){
  
  # Dev
  email <- "gervasio.81@gmail.com"
  
  dfProdutos <- data.frame(
    prd = c("alface","tomate","banana","brocoli","maca"),
    img = c('<img src=./img/alface.png width=50%>',
            '<img src=./img/tomate.png width=50%>',
            '<img src=./img/banana.png width=50%>',
            '<img src=./img/brocoli.png width=50%>',
            '<img src=./img/maca.png width=50%>'
            )
    # diponivel = c('Sim','Não'),
    # valor = c(1.50,4.00)
  )
  
  shinyInput <- function(FUN,id,num,...) {
    inputs <- character(num)
    for (i in seq_len(num)) {
      inputs[i] <- as.character(FUN(paste0(id,i),label=NULL,...))
    }
    inputs
  }
  
  #--------------------------- Condutores reativos ------------------------------------------------
  rowSelect <- reactive({
    
    rows=names(input)[grepl(pattern = "srows_",names(input))]
    paste(unlist(lapply(rows,function(i){
      if(input[[i]]==T){
        return(substr(i,gregexpr(pattern = "_",i)[[1]]+1,nchar(i)))
      }
    })))
    
  })
  # ------------------------Proxy da tabela-----------------------------------------
  
  #-------------------------- Saidas --------------------------------------------------------------
  
  # output$Produtos <- renderDataTable({datatable(dfProdutos, escape = FALSE)})
    output$Produtos <- renderDataTable({datatable(
    cbind(Pick=shinyInput(checkboxInput,"srows_",nrow(dfProdutos),value=NULL,width=1), dfProdutos),
    options = list(orderClasses = TRUE,
                   lengthMenu = c(2, 25, 50),
                   pageLength = 2,
                   fixedHeader = TRUE,
                   
                   drawCallback= JS(
                     'function(settings) {
                                     Shiny.bindAll(this.api().table().node());}')
                  ),
                   
                   selection='none',escape=F, extensions = 'Scroller'#c('Scroller', 'Responsive')
                  )
          })
  output$Selecionado <- renderText({
    rowSelect()
  })
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