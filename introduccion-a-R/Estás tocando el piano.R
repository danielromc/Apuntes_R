# Crear una función que responda la pregunta: Estás tocando el piano?
# Si tu nombre inicia con la letra "R" o "r" estás tocando el piano
# La función devuelve uno de los siguientes mensajes:
# nombre + "toca el piano"
# nombre + "no toca el piano"

#Se define la variable name que pide al usuario que introduzca su nombre
name <- readline("Dime tu nombre: ")

#Se declara el condicional
if (substr(tolower(name),1,1) == "r"){
  print(paste(name,"toca el piano"))
} else {print(paste(name,"no toca el piano"))
  }

#la función tolower() transforma a minúscula el texto introducido,
# de esta forma no hay diferencia entre R y r

#substr() accede a la primera letra del nombre

#Finalmente paste() concatena las cadenas
