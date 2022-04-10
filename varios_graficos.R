# Superponer graficos

x<-seq(-10,10,by=1)
y<-x^2  # y<-f(x) 

# No se puede poner 2 veces la funcion plot
plot(x,y,type = "l", col="chocolate", lwd=2,
     xlab = "hola x", ylab = "hola y", main = "Este es mi grafico")

# teniendo el grafico base
abline(v=-5, col='deepskyblue') # recta vertical (v)
abline(h=60, col='darkolivegreen', lty=2) # recta horizontal (h)

# Tambien puedo graficar una recta indicando la ordenada al origen junto 
# con su pendiente

# graficar puntos
points(x,x/2,col="mediumpurple3",pch=18)

# graficar lineas
lines(x,x^3, col="blue")

help(lines)

