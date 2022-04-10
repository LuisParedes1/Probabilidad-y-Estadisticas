# Juego de urnas y colores

# Tenemos una urna con 5 bolitas rojas y 3 bolitas verdes y queremos sacar 3 al azar.
# Las podemos sacaar con reposicion y sin reposicion

# Queremos elegir al azar una muestra de 3 bolitas de la urna que tiene 5 
# y contar cuantas rojas salieron


set.seed(27)
# seteamos la semilla de trabajo para garantizar la repeticion del experimento

urna<-c(rep("R",5), rep("V",3))

# sacamos 3 bolitas al azar con reposicion

muestra<-sample(urna,3,replace = TRUE) # Extraigo con reposicion

# Cuento la cantidad de bolas rojas que salieron

muestra=="R"

sum(muestra=="R")