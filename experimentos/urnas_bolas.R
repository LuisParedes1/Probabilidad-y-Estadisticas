# Juego de urnas y bolas

# Tenemos una urna con 5 bolitas enumeradas del 1 al 5 y queremos sacar 3 al azar.
# Las podemos sacaar con reposicion y sin reposicion

# Queremos elegir al azar una muestra de 3 bolitas de la urna que tiene 5.

set.seed(27)
# seteamos la semilla de trabajo para garantizar la repeticion del experimento

urna<-c("bolita 1","bolita 2","bolita 3","bolita 4","bolita 5")

sample(urna,3,replace = TRUE) # Extraigo con reposicion

# sample( ) nos permite seleccionar al azar un subconjunto de elemementos de un 
# conjunto que le damos como datos, ya sea con o sin reposicion

sample(urna,3,replace = FALSE) # Extraigo sin reposicion

