# trabajar con dataFrames

alturas<-read.csv('alturas_n_200.csv') # Cargo el DF

# Obtengo la columna del DF

alturas$contextura_madre # Me devuelve un vector con la columna

# Cuales son las mamas altas?

sum(alturas$contextura_madre=="alta")

# contamos la cantidad de personas de genero femenino que tienen madres altas
alturas$genero[alturas$contextura_madre=="alta"]=="F"

# me devuelve solamente las que tienen madres altas

sum(alturas$genero[alturas$contextura_madre=="alta"]=="F")



# Otra forma

# Usando el hecho de que el DataFrame es como una tabla

alturas[,] # ahora le digo que filas y columnas quiero

nuevas<-alturas[ alturas$contextura_madre=="alta" & alturas$genero == "F" , ] 
# Esto me devuelve un nuevo DF mas chiquito con los elementos que cumplen lo pedido

# Le pido el numero de filas
nrow(nuevas)

