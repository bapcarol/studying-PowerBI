# Estatística Básica

# Parte 2 - Medidas de Dispersão

# Definindo a pasta de trabalho
setwd("C:/Users/CarolinaBaptistadeLi/Documents/Estudo/Treinamentos/PowerBI - DSA/studying-PowerBI/cap12")
getwd()

# Carregando o dataset
vendas <- read.csv("Vendas.csv", fileEncoding = "windows-1252")

# Resumo do Dataset
View(vendas)
str(vendas)
summary(vendas$Valor)

# Variância
var(vendas$Valor)

# Desvio Padrão
sd(vendas$Valor)