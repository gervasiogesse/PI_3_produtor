pedidosController <- function(input, output, session){
  output$Pedidos <- renderDataTable({datatable(
    read.csv("../PI_3_feira/Selecionados.csv") %>% filter(emailId == email) %>% 
      group_by(prd,img) %>% summarize(Total = sum(qtd))
    ,selection="none",escape=F, extensions = c('Scroller', 'Responsive')
    )
  })
  output$PedidosClientes <- renderDataTable({datatable(
    read.csv("../PI_3_feira/Selecionados.csv") %>% filter(emailId == email)
    ,selection="none",escape=F, extensions = c('Scroller', 'Responsive')
    )
  })
}