# Juego de Cartas

# Supongamos que tenemos un mazo de cartas espanolas de 40.

Mazo<-1:40 # 10 de oro, 10 de copa, 10 de espada, 10 de basto (en ese orden)

# Mezclo las cartas

juego<-sample(Mazo, length(Mazo), replace = FALSE)

# jugamos al truco
# saco 3 cartas del mazo para mi (sin reposicion)
# saco 3 cartas del mazo para ti (sin reposicion)

cartas<-sample(juego, 6, replace = FALSE)

cartas_mias<-cartas[c(1,2,3)]
cartas_tuyas<-cartas[c(4,5,6)]
