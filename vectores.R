#vectores

# Son concatenaciones de caracteres y numeros

v<-c(7,8,0,-1) #c: concatenate

# En un vector no podemos tener diferentes tipos de elementos

cualquiera<-c(1,2,"anana") # Los transforma todos como caracteres

# uso corchetes para extraer elementos del vector

v[3]

# Quiero mas de un elemento. Subconjunto del vector

v[c(2,3)] # Devuelve 8 & 0

# Otro tipo de vectores

nombres<-c("Suki","Kira", "Penny", "Fiona")


# Mas funciones utiles

# Concatenar numeros enteros consecutivos

w<-1:10


# Secuencias de Numeros. sec(empezar, terminar, paso)

z<-seq(from=1, to=4, by=0.04)


help(seq)


# repetir un numero o secuencia de numeros

x<-rep(x=1,5)
y<-rep(c("a","b"),3)

