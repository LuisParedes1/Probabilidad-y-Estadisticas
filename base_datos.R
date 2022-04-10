# session -> set working directory -> choose directory

# desde la consola
# setwd(db_full_path)
# setwd(/home/luis/Downloads/db)

# importamos archivos txt 
# read.table() supone que las separaciones de columnas estan dadas por espacios 
# y no tienen encabezados (las columnas no tienen nombres)

autos<- read.table("autos.txt", header = TRUE) # tiene encabezado

datos<- read.table("abalone.txt", sep=",") # tiene como separador la ','

datos<- read.table("abalone.txt", dec=",") # le indico que el separador decimal es ',' y no '.'

# importamos archivos csv
# por defecto la sepaciones es una coma ','

alturas<-read.csv('alturas_n_200.csv')

# Al cargar los datos lo devuelve en un tipo de dato dataFrame