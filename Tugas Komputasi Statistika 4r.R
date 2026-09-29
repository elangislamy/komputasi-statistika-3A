#NO 1 DISTRIBUSI POISSON

#Parameter Poisson
lambda<-3

#Nilai X
x<-0:15

#PMF Poisson
pmf<-dpois(x, lambda)

#Tabel PMF
data.frame(x = x, P = pmf)

#Menghitung P(X >= 5)
P_X_ge_5 <- 1 - ppois(4, lambda)
P_X_ge_5

#Plot PMF
plot(x, pmf,
     type = "h",
     lwd = 3,
     main = "Poisson (lambda = 3)",
     xlab = "Jumlah pelanggan (X)",
     ylab = "P(X = x)")


#NO 2 DISTRIBUSI HIPERGEOMETRIK

#Parameter
N<-100  # Ukuran Populasi
K<-20   # Jumlah Sukses (bola merah)
n<-10   # Ukuran sampel

#Domain k
k<-seq(max(0, n + K - N), to = min(n, K))

#PMF Hipergeometrik
pmf<-dhyper(k,
            m = K,
            n = N - K,
            k = n)

#Tabel probabilitas
data.frame(k = k, P = pmf)

#Plot PMF
plot(k, pmf,
     type = "h",
     lwd = 3,
     main = "Hypergeometric (N=100, K=20, n=10)",
     xlab = "Jumlah sukses dalam sampel",
     ylab = "P(X = k)")

#CONTOH KALAU KITA DISURUH MENCARI P(X = 2)

#Hitung P(X = 2)
P_X_2<-dhyper(2,
                m = K,
                n = N - K,
                k = n)
P_X_2


#NO 3 SIMULASI DISTRIBUSI BINOMIAL

#Parameter Binomial
n<-15
p<-0.4

#Jumlah simulasi
m<-1000

#Simulasi 1000 percobaan Binomial
hasil<-rbinom(m,
              size = n,
              prob = p)

#Melihat beberapa hasil simulasi
head(hasil)

#Nilai X
x<-0:n

#PMF teoritis Binomial
pmf<-dbinom(x,
            size = n,
            prob = p)

#Tabel PMF teoritis
data.frame(x = x, P = pmf)

#Histogram hasil simulasi
hist(hasil,
     breaks = seq(-0.5, n + 0.5, by = 1),
     probability = TRUE,
     main = "Binomial (n=15, p=0.4)",
     xlab = "Jumlah sukses",
     ylab = "Probabilitas")

#Menambahkan PMF teoritis
points(x, pmf,
       pch = 19)

lines(x, pmf,
      type = "h",
      lwd = 3)