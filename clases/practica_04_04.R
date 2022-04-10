# Ejemplo

# a) Utilizando la funcion sample, generar un vector que contenga los cumpleaños 
# de 30 personas, suponiendo que el año tiene 365 dias.

# b) Crear una funcion que devuelve el valor 1 si al menos dos cumpleaños del 
# vector generados en a son iguales y 0 si no.

# c) Utilizar la funcion creada en b para estimar mediante 10000 simulaciones 
# la probabludad de que en un grupo de 30 personas, al menos 2 cumplan el mismo dia.


set.seed(42) # Para reproducir el resultado

# a  # sample(dias del ano, cumple de 30 personas, reemplazo )
cumple<-sample(1:365, 30, replace = TRUE)

# b
hay_coincidentes<-function(v){
  z<-0
  n<-length(v)
  
  for (i in 1:(n-1)){
    for (j in (i+1):n){
      z <- sum(v[i]==v[j]) + z
    }
  }
  
  w<-sum(z>0)
  
  return(w)
}

A<-rep(1:10,3)
hay_coincidentes(A)

# c Estimar la probabilidad simulando n experimentos

n<-1000
suma<-0

# Para cada muestra de 30 cumpleanos veo si hay coincidencias
for(i in 1:n){
  cumple<-sample(1:365, 30, replace = TRUE)
  
  suma<-hay_coincidentes(cumple)+suma
}


prob_coincidencia<-suma/n

# Otra forma

n<-1000
t<-c() # t es un vector vacio

# Corro los experimentos
for (i in 1:n){
  cumple<-sample(1:365, 30, replace = TRUE)
  t[i]<-hay_coincidentes(cumple)
}

mean(t) # Da la probablidad estimada (mean = promedio)


# Valor exacto

num<-factorial(365)/factorial(335)

choose