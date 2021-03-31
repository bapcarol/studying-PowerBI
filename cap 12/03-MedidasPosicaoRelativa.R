# Estatística Básica

# Parte 2 - Medidas de Dispersão

# Definindo a pasta de trabalho
setwd("C:/Users/CarolinaBaptistadeLi/Documents/Estudo/Treinamentos/PowerBI - DSA/studying-PowerBI/cap12")
getwd()

# Carregando o dataset
vendas <- read.csv("Vendas.csv", fileEncoding = "windows-1252")

# Resumo do Dataset
head(vendas)
View(vendas)
str(vendas)
summary(vendas$Valor)

# Medidas de Tendência Central
summary(vendas[c('Valor','Custo')])

# Explorando Variáveis numéricas
quantile(vendas$Valor)
quantile(vendas$Valor, probs = c(0.01,0.99))
quantile(vendas$Valor, seq(from=0, to=1, by=0.20))
IQR(vendas$Valor) #Diferença entre Q3 e Q1
range(vendas$Valor)
summary(vendas$Valor)
diff(range(vendas$Valor))
