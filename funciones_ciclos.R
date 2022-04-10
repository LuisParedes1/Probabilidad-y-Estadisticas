# las funciones son variables
# 
# nombre<-function(arg1, arg2, ..., arg_n){
#   expresion de la funcion
# }

# la ejecuto como nombre(arg1,arg2,...,arg_n)

mezclar<-function(v){
  v2<-sample(v,length(v), replace = FALSE)
  return(v2)
}

# Lo pruebo

cartas<-1:40
mezclar(cartas)

##### Sumas los numeros de 1 hasta n  ####

suma<-function(n)
  {
    acumulacion<-0
    for (i in 1 : n)
      {
        acumulacion <- acumulacion + i
      }
    return(acumulacion)
  }

suma(45)

## Sumar todos los elementos de un vector


sumar_vector<-function(v)
{
  acumulacion<-0
  for (elem in v)
  {
    acumulacion <- acumulacion + elem
  }
  return(acumulacion)
}


w<-c(4,8,-7,-20,45)
sumar_vector(w)

sum(w)


### Solo quiero sumar los negativos

sumar_negativo<-function(v)
{
  acumulacion<-0
  for (elem in v)
  {
    if(elem < 0)
    {
      acumulacion <- acumulacion + elem 
    }
  }
  return(acumulacion)
}


v<-c(4,8,-7,-20,45)
sumar_negativo(v)

#### If else

alturas<-seq(from=1, to=2, by=0.04)

categorias<-ifelse(alturas<1.6,"Bajo", "Alto")

categorias
