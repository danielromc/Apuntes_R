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


#Ahora abordando el problema desde el uso de funciones, se obtiene
#una solución más corta

#Se declara una función con dos valores de entrada: base y altura
area_triangulo <- function(a,b)
  return((x*y)/2)

print("Utilice la función area_triangulo(x,y) donde a es altura y b base")
