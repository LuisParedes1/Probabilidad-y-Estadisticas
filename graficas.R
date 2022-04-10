# Scatter Plot

x<-c(1,2,3)
y<-c(4,5,6)

plot(x,y)


# Otro plot y = x^2
x<-seq(-10,10,by=1)
y<-x^2

plot(x,y)

# Cambio el tipo de punto
plot(x,y,pch=20) #pch cambia el tipo de puntito


# grafico de linea
plot(x,y,type = "l")


# le doy color
plot(x,y,type = "l", col="chocolate")

# linea mas gruesa
plot(x,y,type = "l", col="chocolate", lwd=2) # lwd:grosor

# nombre a los ejes y titulo del grafico
plot(x,y,type = "l", col="chocolate", lwd=2,
     xlab = "hola x", ylab = "hola y", main = "Este es mi grafico")