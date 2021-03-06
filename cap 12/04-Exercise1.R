# Estat�stica B�sica

# Parte 2 - Medidas de Dispers�o

# Definindo a pasta de trabalho
setwd("C:/Users/CarolinaBaptistadeLi/Documents/Estudo/Treinamentos/PowerBI - DSA/studying-PowerBI/cap12")
getwd()

# Carregando o dataset
notas <- read.csv("Notas.csv", fileEncoding = "windows-1252")

# Resumo do Dataset
#head(vendas)
View(notas)
str(notas)

# M�dia de Cada turma:
mean(notas$TurmaA)
mean(notas$TurmaB)

# Maior Variabiliade de Notas

var(notas$TurmaA)
var(notas$TurmaB)

sd(notas$TurmaA)
sd(notas$TurmaB)

# Coeficiente de Varia��o

# Criando a fun��o para c�lculo do coeficiente de varia��o
cv_calc <- function(v) {
  (sd(v)/mean(v))*100
}

#Recebendo o resultado da fun��o
cv_turmaA <- cv_calc(notas$TurmaA)
cv_turmaB <- cv_calc(notas$TurmaB)

#Printando o resultado da fun��o
print(cv_turmaA)
print(cv_turmaB)


# Qual nota apareceu mais vezes (Moda)

# Criando a fun��o de moda
moda <- function(v) {
  valor_unico <- unique(v)
  valor_unico[which.max(tabulate(match(v, valor_unico)))]
}

#Recebendo o resultado da fun��o
moda_turmaA <- moda(notas$TurmaA)
moda_turmaB <- moda(notas$TurmaB)

#Printando o resultado da fun��o
print(moda_turmaA)
print(moda_turmaB)

