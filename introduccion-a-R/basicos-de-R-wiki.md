# ¿Qué es R y por qué utilizarlo?

R es un lenguaje de programación de código abierto y un entorno de software diseñado específicamente para el análisis estadístico y la manipulación de datos. Fue creado por Ross Ihaka y Robert Gentleman en los años 90 y desde entonces ha ganado popularidad en la comunidad estadística y de ciencia de datos.

Aquí tienes algunas razones por las cuales puedes considerar utilizar R:

**Análisis estadístico y modelado:** R es ampliamente utilizado en la comunidad estadística debido a su amplia gama de funciones y paquetes estadísticos. Ofrece una variedad de técnicas estadísticas, desde pruebas de hipótesis básicas hasta análisis de regresión, series de tiempo, modelos jerárquicos y mucho más.

**Manipulación y visualización de datos:** R proporciona herramientas poderosas para la manipulación y transformación de datos. Con paquetes como `dplyr` y `tidyr`, puedes realizar fácilmente tareas como filtrar, seleccionar, unir y transformar conjuntos de datos. Además, R cuenta con una amplia gama de paquetes para la visualización de datos, lo que te permite crear gráficos estáticos y dinámicos de alta calidad.

**Comunidad y recursos:** R cuenta con una comunidad activa y colaborativa de usuarios y desarrolladores que comparten conocimientos, paquetes y soluciones a través de foros, grupos de usuarios y repositorios en línea. Además, existe una gran cantidad de recursos gratuitos, como libros, tutoriales y cursos en línea, que te ayudarán a aprender y aprovechar al máximo R.

**Reproducibilidad y documentación:** R fomenta la reproducibilidad en el análisis de datos. Puedes escribir scripts y programas en R que documenten y automatizen tus análisis, lo que facilita la reproducción de resultados y la colaboración con otros investigadores o analistas.

**Integración y extensibilidad:** R se integra bien con otros lenguajes y herramientas. Puedes utilizar R en combinación con Python, SQL, Java y y otras herramientas de análisis de datos.
<br>
<br>
# Instalación de R y RStudio

Para Instalar R, acceder al siguiente enlace: [Lenguaje R](https://cran.rstudio.com/)

Para instalar RStudio, acceder al siguiente enlace: [RStudio IDE](https://posit.co/downloads/)
<br>
<br>
# Los fundamentos del lenguaje R
### **Sintaxis**
Uno de los primeros pasos en R es comprobar que funciona como una calculadora aritmética:
```r
5+6
```
Al ejecutar la línea anterior se mostrará `11` en consola. Para imprimir texto en R se usan las comillas dobles o sencillas. Sin embargo, también es posible usar la función `print()`:
```r
"Hola Mundo!"
'Hola Mundo!'
print("Hola Mundo!")
```
En algunos casos será obligatorio el uso de la función `print()`. Por ejemplo, al interior de un bucle for para imprimir cada elemento de la iteración.
```r
for (x in 1:10){
  print(x)
}
```
En R, los comentarios se utilizan para agregar anotaciones o explicaciones breves en una sola línea de código. Se inician con el símbolo `#`. Todo lo que sigue después de la almohadilla en la línea se considera un comentario y no se ejecuta como código.
```r
#Esto es un comentario
#Esta línea no debe ser ejecutada
'Quiero aprender R'
```
# Variables y tipos de datos en R
### Variables
Las variables, al igual que en otros lenguajes de programación, son contenedores o espacios de memoria que almacenan valores. En R, las variables se crean en el momento que se les asigna un valor. Para ello, se emplea el signo `<-` . Para saber qué hay en una variable, simplemente se escribe el nombre de la variable
```r
nombre <- "Daniel"
edad <- 30

nombre #Esto imprimirá en consola: "Daniel"
```
En el anterior bloque de código `nombre` y `edad` son variables, mientras que `“Daniel”` y `30` son valores.
R permite asignar el mismo valor a múltiples variables.
```r
x <- y <- z <- "Azul"
```
Al igual que en otros lenguajes de programación, para nombrar variables en R existen algunas reglas:

1. El nombre de una variable debe empezar con una letra y puede cotener números, letras y los caracteres especiales punto (.) y guion bajo(\_). 
2. El nombre de una variable no puede empezar por número ni guion bajo. Si el nombre de la variable empieza con punto, no le puede suceder un número.
3. Las palabras reservadas no se pueden usar como nombres de variable.

Ejemplos de nombres válidos
```r
cliente
id_producto
nueva.variable
var_1
.peso
```
Aunque iniciar las variables con punto no se aconseja. Lo mejor siempre será usar el método *snake_case* o el método *CamelCase* para nombrar variables que contengan más de una palabra.

Ejemplos de nombres no válidos
```
mi-variable         #Usa guion como separador
nombre&apellido     #Usa caracteres no admitidos
_edad               #Inicia con guion bajo
.2peso              #Inicia con punto seguido de número
for                 #Utiliza un nombre reservado
```
Las palabras reservadas en R son las siguientes:
`if`, `else`, `repeat`, `while`, `function`, `for`, `in`, `next`, `break`, `TRUE`, `FALSE`, `NULL`, `Inf`, `NaN`, `NA`, `NA_integer_`, `NA_real_`, `NA_complex_`, `NA_character_` y `…`

R es case-sensitive, es decir, que diferencia las mayúsculas de minúsculas. Por lo que las variables Mi_edad y mi_edad son diferentes.

### Tipos de datos

Al igual que en la mayoría de lenguajes de programación, las variables almacenan diferentes tipos de datos. En R existen los siguientes tipos de datos:

|`numeric`    |Todos los números reales con o sin valores decimales. Por ejemplo: `3`, `8.69` o `100`.|
|:-           |:-|
|`integer`    |Números enteros. En este caso se usa el sufijo L para especificar el tipo de dato. Por ejemplo: `170L`, `2L` o `200L`.|
|`complex`    |Los números compuestos por una parte real y una imaginaria. Se usa el sufijo i para especificar la parte imaginaria. Por ejemplo: `3+2i`, `5+i` o `2-5i`.|
|`character`  |Valores alfabéticos, lo que en otros lenguajes se conoce como cadenas o strings. Se usan las comillas simples o dobles para representar cadenas de texto. Por ejemplo: `“lunes”`, `“enero”` o `'univerdidad'`.|
|`logical`    |También conocido como valores booleanos. Toman solo dos valores, `TRUE` o `FALSE`. Para verificar el tipo de dato de una variable se usa la función `class()`.|

### Operadores
Los operadores en R se dividen en varias categorías:

| Operación aritmético   | Operador | Operación de comparación| Operador |
|------------------------|----------|------------------------ |----------|
| Suma                   | `+`      | Igual a                 | `==`     |
| Resta                  | `-`      | No igual a              | `!=`     |
| Multiplicación         | `*`      | Menor que               | `<`      |
| División               | `/`      | Mayor que               | `>`      |
| Exponenciación         | `^`      | Menor o igual que       | `<=`     |
| Módulo                 | `%`      | Mayor o igual que       | `>=`     |
| División entera        | `%/%`    |                         |          |

<br>

| Operación lógica                  | Operador | Operación de asignación   | Operador |
|-----------------------------------|----------|-------------------------- |----------|
| Negación lógica                   | `!`      | Asignación a la izquierda | `<-`     |
| Operador AND lógico               | `&`      | Asignación a la derecha   | `->`     |
| Operador OR lógico                | `\|`     | Asignación                | `=`      |
| Operador AND lógico (vectorizado) | `&&`     |                           |          |
| Operador OR lógico (vectorizado)  | `\|\|`   |                           |          |

Y algunos operadores especiales:

| Operación especial                                       | Operador |
|----------------------------------------------------------|----------|
| Devuelve `TRUE` si un elemento está dentro de un vector  | `%in%`   |
| Producto de matrices                                     | `%*%`    |
| Secuencia de números enteros                             | `:`      |
| Combina elementos en un vector                           | `c()`    |
