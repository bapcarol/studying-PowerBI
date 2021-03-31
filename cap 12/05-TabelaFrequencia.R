# Estatística Básica

# Parte 4 - Tabela de Frequência

# Definindo a pasta de trabalho
setwd("C:/Users/CarolinaBaptistadeLi/Documents/Estudo/Treinamentos/PowerBI - DSA/studying-PowerBI/cap12")
getwd()

# Carregando o dataset
#?read.table
dados <- read.table("Usuarios.csv",
                  dec = ".", #determine the decimal separator
                  sep = ",",
                  h = T, #determine header as TRUE (T)
                  fileEncoding = "windows-1252")

# Visualizando e sumarizando os dados
#head(vendas)
View(dados)
str(dados)
summary(dados$salario)
summary(dados$grau_instrucao)
mean(dados$salario)
#mean(dados$grau_instrucao) -> this returns a warning because the var type is not numerical, it is categorical

# Tabela de Frequências Absolutas
freq <- table(dados$grau_instrucao)
View(freq)

# Tabela de Frequências Relativas
freq_rel <- prop.table(freq)
View(freq_rel)

# Porcentagem (100 * freq_rel_table)
p_freq_rel <- freq_rel * 100
View(p_freq_rel)

# Adiciona linhas de total
freq_total <- c(freq, sum(freq))
#View(freq)
names(freq_total)[4] <- "Total"
View(freq_total)


# Tabela final com todos os valores

# Calculamos frequência relativa e frequência proporcional

freq_rel_total <- c(freq_rel, sum(freq_rel))
p_freq_rel_total <- c(p_freq_rel, sum(p_freq_rel))

# Tabela final com todos os vetores
tabela_final <- cbind(freq_total,
                      freq_rel_total = round(freq_rel_total, digits = 2),
                      p_freq_rel_total = round(p_freq_rel_total, digits = 2))

View(tabela_final)
