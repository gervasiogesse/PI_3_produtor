relatorioController <- function(input, output, session){
  output$relatorio <- renderPlot({
    ggplot(data = dfrl, aes(x = banana, y = semana)) +
      geom_point() +
      stat_smooth(method = "lm", col = "dodgerblue3") +
      theme(panel.background = element_rect(fill = "white"),
            axis.line.x=element_line(),
            axis.line.y=element_line()) +
      ggtitle("relatorio Modelo Linear")
  })
}