
## en caso de que no sepas "¿en dónde está tu directorio de trabajo?" teclea:
getwd() #GET WORK DIRECTORY 

#crea un directorio de trabajo
dir.create("RedMxBioinformatica")

#redirecciona con SET WORK DIRECTORY
setwd("RedMxBioinformatica/")

#muestra el contenido de la carpeta de tu directorio de trabajo actual
list.files() 
list.dirs()

# ¿Cómo crear objetos en R? ---------------------------------------------------

Nombre_del_objeto <- "Contenido del objeto"
Nombre_del_objeto1 = "contenido del objeto"
variable <- "contenido de la variable"

#Las variables pueden ser de diferentes tipos:
#NUMERICO, CARACTER, COMPLEJO O LOGICO

nombre<- "cristy"       #variable de tipo caracter, se indica entre comillas
nombre                  #solicita el contenido del objeto nombre
name<- "Cristina"
name
name<- ""
name

copia_nombre <- nombre  #guarda el objeto "nombre", en la variable "copia_nombre"
copia_nombre            # imprime el contenido del objeto copia_nombre

#¿QUÉ CLASE DE OBJETO ES copia_nombre?
class(name)

#Declara variables tipo caracter
a <- "UNO"
a
class(a)
a1 = "DOS"
a1
#¿Qué tipo de objetos hemos creado?
class(a)
class(a1)
class(nombre)

# Operaciones aritméticas en R
help("prompt")

1 + 1
123 - 3331
2 * 245
2/2
2^2
(2 + 2) * 2 #las operaciones aritméticas con paréntesis  siguen las reglas de álgebra 
5 > 2
a <-  5<2
class(a)
20>40
sqrt(25)
sqrt(4)

#ASIGNEMOS ESTAS OPERACIONES A UN OBJETO 
#OPERADOR DE ASIGNACION DE VARIABLES <-
sumar <- 1 + 1
sumar

restar <- 123-333
restar

multiplicar <- 2*245
multiplicar

dividir <- 2/2
dividir

potencia <- 2^2
potencia

compara <- 5>2
compara


#QUE TIPO DE OBJETOS HEMOS GENERADO?
class(sumar)
class(restar)
class(multiplicar)
class(dividir)
class(potencia)
class(compara)


# OPERADORES ARITMETICOS --------------------------------------------------
#Estos se describen como la "Anotación Matemática en R"; los cuales son descritos 
#en el siguiente demo
demo(plotmath)

# + - * /                   Operadores aritméticos
# %%                        modulo, (x mod y)
# ^                         potencia
# **                        potencia
# >, <, >=, <=, ==,         Operadores de relaciones o conecciones entre dos grupos
# !=                        no igual a/que             
# !x                          diferente de 'x'
# x | y                  x o y
# x&y                    x e y
# ~                              Operador en las formulas     (modelos)
# <-, >- , =                    Operador asignación.
# $                              Selección de un elemento en una lista o base de datos.
# :                              Para crear secuencias
#  %>%                                pipe
#Ejemplos:
# ¿a es identico a b? "==" 
# ¿a es diferente de b? "!=" 
a <- 1
a1<-"uno"

a1 == a                       #a es identico a b?
a1<-1
a1<- 1
a1 == a                       #a es identico a b?

b <- 56
c <- 45
b != c                      # ¿a es diferente de b? "!=" 

b*8               #b * 8
b==c              # ¿ b es igual a c?
b <- c
b != c
b==c
b>c

b^34


#Algebra vectorial 
#Creación de vectores tipo numérico
help(c)
y1 <- c(2,3,4,5) #c es una palabra reservada por R, teclea >help(c)
y1

y <- c(2:5)
y

#¿Estas variables son identicas?
y==y1

y2<- c(1,7:9) #¿Cuantas observaciones tiene la variable y2? 
y2            #Respuesta:4

(2*y2)^2

y-y1    #operaciones con vectores responden a las mismas reglas del algebra vectorial, 
        #con aplicaciones en Geometría del espacio, 
        #Funciones vectoriales, etc. Ejemplos de operaciones con vectores, Sean dos vectores: 
u=c(10,20)
v=c(30,40)
k=100
u*v
#suma u+v=(u1+v1, u2+v2)
suma_vectorial<-u+v
suma_vectorial

# el múltiplo escalar de 'k' y 'u' es el vector ku = (ku1,ku2)
multiplo_escalar<- k*u 
multiplo_escalar

#El negativo de 'v' es el vector -v=(-1)v = (-v1,-v2)
negativo<- -v
negativo

#La diferencia de u y v es el vector 
#u-v=u+(-v)=(u1-v1, u2-v2)
diferencia<- u-v
diferencia


# FUNCIONES ARITMETICAS SIMPLES -------------------------------------------
prod() #producto
max() # máximo
min() # minimo
which.max()# devuelve el índice del elemento máximo de x
which.min()# devuelve el índice del elemento mínimo de x
range() # rango de x o c(min(x),max(x))
length() # esta línea devuelve el número de elementos en un objeto
mean()# promedio
median(x) #mediana de los elementos de x
var(x) o cov(x) # varianza de los elementos de x
cor(x) #matriz de correlacion de x si es una matriz o un data.frame
cor(x,y) #correlacion lineal entre x y y, o la matriz de correlación si x y y son matrices o data.frame 

log(x) # logaritmo base e para x
exp(x) # antilog of x (e^x)
log(x,n) #log base n para x
log10(x) #log base 10 para x
log2(x) #log base 2 para x
sqrt(x) # raiz cuadrad de x
factorial(x) #x!
cos(x)
sin(x)
tan(x)
abs(x) #el valor absolut de x ignorando el signo
floor(x) #redondea el decimal al numero inferior
ceiling(x) #redondea el decimal al numero superior

# VECTORES ----------------------------------------------------------------
#Un vector es un conjunto de objetos del mismo tipo. TIPOS: lógico, caracter,
#numérico, complejo o de tipo factor. 

x <- c(1,2,3,4,5,6)
class(x)
y <- c("uno", "dos", "tres", "cuatro", "cinco", "seis")
class(y)
#metodo seq para crear un vector
z<- seq(from= -6,           #  from
        to= 4,            #  to     
        by= 2)           # secuencia
z
class(z)

vec_num_3<-seq(-10,400,2)
g<- rep("tres",         #replicar un objeto 
        times= 6)       # varias veces ese número de veces 
class(g)
g
logic <- c(TRUE, TRUE, FALSE, TRUE)
class(logic) # "logical"

#Si tú mezclas los datos dentro de un vector, los componentes hacen coerción
max <- c(2.2, TRUE, "Correct", 8)
max
class(mix)  # "character"
typeof(mix) # "character"

#AGREGAR NOMBRES A UN VECTOR EN R
#Para nombrar los elementos de un vector se hace lo siguiente:
my_vector<- c(orange=4, apple=6)
my_vector

# Agregar el atributo names a un vector 
nombre_alumnos<- c("Gaby",
                   "Edgar",
                   "Rosa",
                   "Selma",
                   "Jenny")
No_Lista <- c(1:5)
No_Lista
names(No_Lista)

x<-setNames(object = No_Lista,
            nombre_alumnos)
x
names(x)
lista<-x
# Para ordenar un vector
help(sort)

z<- c(12,15,3,22)
sort(z)
sort(z,  decreasing = TRUE)

#crear un vector vacío
my_vector <- c()
my_vector
# Filling the vector using a for loop
for(i in 1:900) {
  my_vector[i] <- i
}

my_vector

# crear un vector NA
# ¿cuál es mi función para my_vector1 y 2?
my_vector1 <- rep(NA, 5)             #funcion?
my_vector1

my_vector2 <- vector(length = 5)
my_vector2


#comparar vectores
x <- c(1, 5)
y <- c(4, 0)
x > y # FALSE TRUE

x <- c(1, 5)
y <- c(4, 0, 1, 3)
x > y
# ¿que compara? 1 > 4, 
# 5 > 0, 
# 1 > 1 
# 5 > 3
x > y # FALSE TRUE FALSE TRUE

x <- c(1, 5, 1)
y <- c(4, 0, 1, 3)
x > y # Error  ..¿por qué?

#generar vectores aleatorios
sample(1:500, size = 1, replace = F) 
sample(lista, size = 1, replace = FALSE)
sample(c("Jenny", "Rosa"), size = 1, replace = TRUE)

##ejercicio: Para una rifa se vendieron 58 boletos numerados 
#del 1-58,
# usa sample() para escoger los primeros tres numeros ganadores
#help(sample)

#Para conocer la longitud de tu vector, usa length
my_data <- c("vector", "sequence", "rnorm", "runif")

n <- length(my_data)

n # 4

#accede a los elementos del vector con el índice
lett <- letters
lett
# Primer elemento
lett[2]
ultimo_numero<-length(lett)
lett[length(lett)]
lett[ultimo_numero]
# tercer y cuarto elemento
lett[c(3, 4)]

# ultimo elemento
lett[length(lett)]

##eliminar un elemento de tu vector
vector <- c("London", "New York", "Paris")
vector

# eliminar 'London'
vector[-2] # "New York" "Paris"
vector<-vector[-2]
vector

# FACTORES ----------------------------------------------------------------
{"Son vectores que podrían ser interpretados como enteros en los cuales cada 
  valor tiene una etiqueta asociada. 
  Un factor es una estructura de datos usada para representar datos categoricos en un vector.
  Entonces, los componentes del factor toman un número de valores diferentes llamados niveles.
  Los factores son muy útiles cuando trabajas con columnas de caracteres en data.frames,
  para crear barplots y resumenes estadísticos para variables categóricas.
  
  Syntaxis                           "}
factor(x = character(),         # Vector de datos de entrada
       levels,                  # Valores únicos de x (opcional)
       labels = levels,         # Etiquetas de salida para los niveles (optional)
       exclude = NA,            # Valores a excluir de los niveles
       ordered = is.ordered(x), # Si los niveles de entrada se ordenan como se indica o no
       nmax = NA)               # Máximo numero de niveles

g<-factor(c("Friday", "Tuesday", "Thursday", "Monday", "Wednesday", "Monday",
            "Wednesday", "Monday", "Monday", "Wednesday", "Sunday", "Saturday"))
g
days <- c("Friday", "Tuesday", "Thursday", "Monday", "Wednesday", "Monday",
          "Wednesday", "Monday", "Monday", "Wednesday", "Sunday", "Saturday")
days

class(days)
class(g)

# Levels está en orden alfabético
my_factor <- factor(days)
my_factor  # observa que Levels está en orden alfabético
class(my_factor)

#Para preservar el orden en el que se encontraron las variables
factor(days, 
       levels = unique(days))

#convertir el objeto de clase factor a caracter
a<-levels((my_factor))
a
class(a)

{"ejercicio.- Se tiene registrado el lugar de nacimiento de individuos,
  con la siguiente codificación: 
  Cris.- Chiapas
  Misha.- Sinaloa
  Selma.- Sonora
  Pindaro.- Sinaloa
  Kioko.- Chiapas
  Edgar.- Oaxaca
  Jenny.- Chiapas
  Rosa.- Chiapas
  Gaby.- Estado de México
  ¿Cuántos alumnos hay por estado??"}

individuos<- c("Cris", "Misha", "Selma", "Pindaro", "kioko", "Edgar", "Jenny", "Rosa", "Gaby")
Estados<- c("Chiapas", "Sinaloa", "Sonora", "Sinaloa", "Chiapas", "Oaxaca", "Chiapas", "Chiapas", "Estado de México")

#Ahora, conviertelo a factor.
individuos<- factor(individuos)

#¿Cuántos niveles tienes?
individuos

summary(individuos)

#cambia a factor los Estados
Estados
class(Estados)
Estados<- factor(Estados)

factor_cities<- factor(individuos,            # objeto:pais_nacimiento
                       labels = Estados )        #objeto: pais_code
factor_cities

summary(factor_cities)

# MATRICES ----------------------------------------------------------------
#Estructura de datos de un mismo tipo. 
help("matrix")
matrix(data = NA, #vector
       nrow = 1,  # filas
       ncol = 1,  # columnas
       byrow = FALSE, # dirección de llenado
       dimnames = NULL) # una lista del nombre de las filas

#método del vector
data<- 1:6
matrix(data)

#metodo por columnas por defecto
matrix(data, 3,2)
matrix(data, 2,3)

matrix(data, ncol = 2) 
matrix(data,  nrow = 3, ncol = 2) # Equivalent
matrix(data, nrow = 3) # Equivalent
matrix(data, 3,2) #equivalente

# By rows
matrix(data,
       ncol = 2, 
       byrow = TRUE)

# concatenando dos vectores 
x <- c(2, 7, 3, 6, 1)
y <- c(3, 7, 3, 5, 9)

# By columns
cbind(x, y)
z<-cbind(x,y)
# By rows
rbind(x, y)

# Output class
class(z)            # equivalente
class(cbind(x, y))  # "matrix"

# Data type of the elements
typeof(z)            # equivalente
typeof(cbind(x, y)) # "double"

#matriz de tipo lógico
vec_logico<-c(TRUE, TRUE, FALSE, TRUE)
matrix(vec_logico,
       ncol = 2)
matrix(c("red", "green", "orange", "black"), ncol = 2)
#conocer las dimensiones
my_matrix<-matrix(c("red", "green", "orange", "black"),
                  ncol = 2)
dim(my_matrix)

# DATA FRAMES -------------------------------------------------------------

temp <- c(20.37, 18.56, 18.4, 21.96, 29.53, 28.16,
          36.38, 36.62, 40.03, 27.59, 22.15, 19.85)
humidity <- c(88, 86, 81, 79, 80, 78,
              71, 69, 78, 82, 85, 83)
rain <- c(72, 33.9, 37.5, 36.6, 31.0, 16.6,
          1.2, 6.8, 36.8, 30.8, 38.5, 22.7)
month <- c("January", "February", "March", "April", "May", "June",
           "July", "August", "September", "October", "November", "December")


data <- data.frame(month = month, 
                   temperature = temp,
                   humidity = humidity,
                   rain = rain)

names(data) # nombres de las variables en columnas
#tarea, cómo extraer la temperatura del mes de diciembre?
#TIP: Usa el índice interno de R
data.frame[observaciones,variables]
#[ obs  , var       ] 
#[ filas, columnas  ]

#attach(data)
#detach()

# Coerción entre objetos --------------------------------------------------
as.matrix()
as.array()
as.data.frame()
as.vector()
as.factor()
#ejemplo: convertir de clase caracter --> factor, ¿para qué?
class(data$month)
summary(data$month)
data$month <-as.factor(data$month)
class(data$month)
summary(data$month)

##Ejercicio:
#1.-crear tres vectores
#2.- Concatenarlos a matriz y llámalos "Total"
#3.-Convertirlos a data.frame mediante coerción
vector1<- c(1,2,3)
vector2<- c(4,5,6)
vector3 <- c(7,8,9)
class(vector1)

Total<- rbind(vector1,
              vector2,
              vector3
)
Total

Total2<- cbind(vector1,
               vector2,
               vector3
)
Total2
class(Total2)
total_frame<-as.data.frame(Total2)
class(total_frame)

# Listas ------------------------------------------------------------------
x <- 1:4
y <- 2:4
n <- 10
M <- c(10, 35)
L1 <- list(x, y) 
L1
L2 <- list(A=x, B=y)
L2
L1
class(L1)
L1[1]
L2[2]
L2$A
L2$A
L2$B

# Importar & Exportar datos en R ------------------------------------------
#Leyendo datos desde un archivo
#Usando: "ImportDataset"
install.packages("readr")
library(readr)
setwd("./Sesion2/")
ARA_TRAT_REP <- read_delim("ARA_TRAT_REP.txt", 
                           "\t", escape_double = FALSE, trim_ws = TRUE)
View(ARA_TRAT_REP)

L5 <- read_csv("L5.csv")        #comma separated values

quantification2 <- read_delim("quantification2.txt", 
                              "\t", escape_double = FALSE, trim_ws = TRUE)

#tarea: investiga cómo importar documentos de excel a R.
read_xlsx()

#Exportar datos
list.files()
ARA_TRAT_REP_stats <- ARA_TRAT_REP 
write_tsv(ARA_TRAT_REP_stats,           # objeto a guardar AL ORDENADOR
          file = "a_stats_nitrogenasas.tsv")      # guardar como: x,nota: extension, todo va en comillas

#COMANDO read.table
#read.table es la forma más fácil de cargar información que nosotros poseemos, en excel o access.
#Base de datos (cargar en forma de *.txt
#1.- No espacio entre nombres
#2.- No celdas en blanco (blanco=NA)
#read.table(“name file”, header=True)  *h=T or h=F
#Requisito name.txt, es decir un archivo de texto
casa <- read.table("houses.txt", head=T)
filos <- read.table("donnees.txt", header = TRUE)


