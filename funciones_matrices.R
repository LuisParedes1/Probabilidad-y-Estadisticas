# funciones de matrices

A<-matrix(c(1,5,2,-1,4,0,2,7,8), nrow = 3, byrow = TRUE)

# inversa de una matriz
solve(A)

# Misma funcion para resolver sistemas de ecuaciones A*x = b
b<-c(3,5,1)
solve(A,b)

# funciones a las filas o columnas de la matriz

# apply(  ): aplica otra funcion a las filas o columnas

apply(A, 1, sum) # 1 la funcion la aplico a las filas

apply(A, 2, sum) # 2 la funcion se la aplico a las columnas

# promedio de las columnas

apply(A, 2, mean)

