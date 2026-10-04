#1. Probabilitas waktu tunggu lebih 5 menit (Distribusi Eksponensial)
#Probabilitas Eksponensial P(X > 5)

# Parameter
mu<-5
lambda<-1/mu

#Hitung probabilitas
prob <- 1 - pexp(5, rate = lambda)
prob

#2. Varians waktu tunggu penumpang (Distribusi Uniform)
#Varians Distribusi Uniform

#Parameter
a<-0
b<-20

#Hitung varians
var_uniform <- (b - a)^2 / 12
var_uniform

#3. Probabilitas sensor rusak sebelum 5 tahun (Distribusi Eksponensial)
# Probabilitas Eksponensial: P(X < 5)

#Parameter
mu<-10
lambda<- 1/mu

#Hitung probabilitas
prob<-pexp(5, rate = lambda)
prob

#4. Proporsi produk underwight (Distribusi Normal)
# Distribusi Normal: P(X < 240)

#Parameter
mu<-250
sigma<- 5

#Hitung probabilitas
prob <- pnorm(240, mean = mu, sd = sigma)
prob