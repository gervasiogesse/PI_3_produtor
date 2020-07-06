#--------------------------------------------------------------------
# Script criado por Gervasio Gesse Junior
# e Iris Menezes Barbosa Gesse em 04/07/2020
# Projeto Integrador 3 UNIVESP
#--------------------------------------------------------------------

# Define o servidor
shinyServer(function(input, output, session) {
# secure_server(function(input, output, session) {
  # Para o processo quando o navegador for fechado
  session$onSessionEnded(function() { stopApp() })
  
  # Para cada pagina é adicionado um arquivo controller
  produtoController(input,output,session)
  logoutController(input,output,session)
})