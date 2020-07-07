#--------------------------------------------------------------------
# Script criado por Gervasio Gesse Junior
# e Iris Menezes Barbosa Gesse em 04/07/2020
# Projeto Integrador 3 UNIVESP
#--------------------------------------------------------------------

# Define o tamanho da fonte para as tabelas
fonteTabela <- "font-size:90%"

dataInput <- function(id){
  dateRangeInput(
    id,
    label = paste('Escolha a data inicial e final:'),
    start = Sys.Date() - 7,
    end = Sys.Date() - 1,
    min = Sys.Date() - 365,
    max = Sys.Date(),
    separator = " - ",
    format = "dd/mm/yyyy",
    startview = 'day',
    language = 'pt-BR',
    weekstart = 1
  )
}

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

# Selecionados <- add_row(dfProdutos %>% slice(0))

#ToDo
# Função para pegar a semana de acordo com a data
semanaAtual <- function(){
  strftime(Sys.Date(), format = "%V")
}

#Todo
# Função para gravar o dataframe e fazer update usando como chave o emailId,produto,semana





