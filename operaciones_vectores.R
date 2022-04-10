# operaciones con vectores

# las funciones se le aplican a **cada elemento del vector**

w<-1:10

w+5 # devuelve otro vector que se imprime en consola

# 6  7  8  9 10 11 12 13 14 15

tt<-w+5 # guardo el resultado en otra variable


2*w #  2  4  6  8 10 12 14 16 18 20

sqrt(w) # 1.000000 1.414214 1.732051 2.000000 2.236068 2.449490 2.645751 2.828427 3.000000 3.162278



# Operaciones entre vectores. Se aplican elemento a elemento

x<-c(1,2,3,4)
y<-c(5,6,7,8)

# los sumo elemento a elemento, devuelve un vector de igual longitud
x+y

# mulplico elemento a elemento, devuelve un vector de igual longitud
x*y

# elevo a y. eleva 1^5, 2^6, 3^7, 4^8, devuelve un vector de igual longitud
x^y
 

# producto escalar

escalar<-x%*%y
