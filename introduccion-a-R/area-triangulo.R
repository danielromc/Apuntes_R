#Calcular el área de un triángulo

#Se piden los valores de base y altura usando la función readline()
#Dado que la función readline permite ingresar texto, las variables
#base y altura se convierten a numeric

base <- as.numeric(readline("Inserte la base del triángulo: "))
altura <- as.numeric(readline("Inserte la altura del triángulo: "))

#Se calcula el area del triángulo aplicando PEMDAS
area = (base*altura)/2

#Se imprime el mensaje completo
paste("El área del triángulo es:", area)
