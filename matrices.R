# matrices

# Cargar por fila byrow = TRUE, por columna byrow = FALSE

A<-matrix(c(1,5,2,-1,4,0,2,7,8), nrow = 3, byrow = TRUE)

# dimensiones de la matriz
dim(A)

help(matrix)

# Otra forma

f1<-c(1,5,2)
f2<-c(-1,4,0)
f3<-c(2,7,8)

# uno las filas
A<-rbind(f1,f2,f3)

# si tengo coluimnas

c1<-c(1,-1,2)
c2<-c(5,4,7)
c3<-c(2,0,8)

# uno columnas
A<-cbind(c1,c2,c3)


# Extraer elementos de la matriz

A[2,3] # A[fila,columna]

A[c(1,2),3] # De la fila 1 y 2 deme la columna 3

A[1,]  # todas las columnas de la fila 1

A[,3] # todas las filas de la columna 3
