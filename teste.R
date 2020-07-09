library(tidyverse)
source("common.R", local = TRUE)


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

# head(dfProdutos)
# teste <- tibble()
# teste <- teste %>% add_row(dfProdutos %>% slice(1))
# tibble(dfProdutos %>% slice(1),valor=1.0, Disponivel="sim")
# dfTeste <- data.frame(dfProdutos %>% slice(1),valor=1.0, Disponivel="sim")
# data <- Sys.Date()
# data
dfPrd <- data.frame(dfProdutos %>% slice(1), valor=3.0, Disponivel=FALSE, emailId="gervasio.81@gmail.com", semana=28)
# semana <- strftime(data, format = "%V")
# semana
retorno <- read.csv("Selecionados.csv")

retorno <- rbind(dfPrd,retorno)

retorno %>% distinct(prd,emailId,semana, .keep_all = TRUE)
retorno
dfUpdate(retorno,dfPrd)
dfteste <- read.csv("../PI_3_feira/Selecionados.csv") %>% filter(emailId == email)
dfteste %>% group_by(prd,img) %>% summarize(Total = sum(qtd))
dfteste %>% group_by(prd,img,emailIdCliente) %>% summarize(Total = sum(qtd))
dfrl <- read.csv("historico.csv")
fit_banana <- lm(formula = banana ~ semana, data = dfrl)

ggplot(data = dfrl, aes(x = maca, y = semana)) +
  geom_point() +
  stat_smooth(method = "lm", col = "dodgerblue3") +
  theme(panel.background = element_rect(fill = "white"),
        axis.line.x=element_line(),
        axis.line.y=element_line()) +
  ggtitle("relatorio Modelo Linear")
