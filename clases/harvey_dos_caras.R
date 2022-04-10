# Ejercicio de Harvey dos caras

set.seed(42)

# Modelo cual moneda salga
moneda<-sample(c("H","E"), 1, replace = F , prob = c(1/3,2/3))

if (moneda == 'H'){
  tiro<-"cara"
}else{
  tiro<-sample(c("cara","ceca"), 1, prob = c(1/2,1/2))
}


# Quiero estimar la prob de cara en 1 tiro 
# con una funcion de n cantidad de repeticiones del experimento

n<-1000
experimento<-c()

for (i in 1:n){
  moneda<-sample(c("H","E"), 1, replace = F , prob = c(1/3,2/3))
  
  if (moneda == 'H'){
    experimento[i]<-"cara"
  }else{
    experimento[i]<-sample(c("cara","ceca"), 1, prob = c(1/2,1/2))
  }
}

caras<-grep("cara",experimento, value = TRUE) 
cecas<-grep("ceca",experimento, value = TRUE)

p.caras = length(caras)
length(cecas)



# Otra forma

n<-1000
moneda<-c()
caras<-0

for (i in 1:n){
  moneda[i]<-sample(c("H","E"), 1, replace = F , prob = c(1/3,2/3))
  
  if (moneda == 'H'){
    tiro<-"cara"
  }else{
    tiro<-sample(c("cara","ceca"), 1, prob = c(1/2,1/2))
  }
  
  caras<-sum(tiro=="cara")+caras
}

p.caras<-caras/n


## Prob condicional


caras1T<-function(n){

moneda<-c()
cuenta<-0
caras<-0

for (i in 1:n){
  moneda[i]<-sample(c("H","E"), 1, replace = F , prob = c(1/3,2/3))
  
  
  if (moneda == 'H'){
    tiro<-"cara"
  }else{
    tiro<-sample(c("cara","ceca"), 1, prob = c(1/2,1/2))
  }
  
  caras<-sum(tiro=="cara")+caras
  cuenta <- sum(tiro=="cara" & moneda[1]=="E")+cuenta
}

p.caras<-caras/n
p.condic<-cuenta/n

resultados<-c(p.caras,p.condic)

return(resultados)
}

caras1T(1000)
