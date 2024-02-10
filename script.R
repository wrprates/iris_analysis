# Carregando o dataset Iris
data(iris)

# 1. Teste de hipótese para o comprimento da sépala entre setosa e versicolor
setosa_sep_len <- iris$Sepal.Length[iris$Species == "virginica"]
versicolor_sep_len <- iris$Sepal.Length[iris$Species == "versicolor"]

# Realizando um teste t para amostras independentes
t.test(setosa_sep_len, versicolor_sep_len)

# 2. Teste de hipótese para a largura da pétala entre versicolor e virginica
versicolor_pet_width <- iris$Petal.Width[iris$Species == "versicolor"]
virginica_pet_width <- iris$Petal.Width[iris$Species == "virginica"]

# Teste t para amostras independentes
t.test(versicolor_pet_width, virginica_pet_width)

# 3. Teste de hipótese para o comprimento da sépala da espécie virginica é igual a 6.5 cm
virginica_sep_len <- iris$Sepal.Length[iris$Species == "virginica"]

# Teste t de uma amostra
t.test(virginica_sep_len, mu = 6.5)
