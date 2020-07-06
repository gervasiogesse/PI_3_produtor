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

