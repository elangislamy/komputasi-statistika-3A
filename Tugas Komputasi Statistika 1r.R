#Vector numeric
v_num <- c(5.3, 6.7, 2.4)
#Menampilkan hasil vector
v_num

#Vector integer
v_int <- c(5L, 10L, 15L)
#Menampilkan hasil vector
v_int

#Vector logical
v_log <- c(TRUE, FALSE, TRUE)
#Menampilkan hasil vector
v_log

#Vector character
v_char <- c("Tsaritsa", "Neuvillette", "Zhongli", "Wriothesley", "Columbina")
#Menampilkan hasil
v_char

#Membuat matrix 4x4
m <- matrix(1:16, nrow = 4, ncol = 4)
#Menampilkan hasil matrix
m

#Membuat Array 4D
a <- array(1:16, dim = c(1, 2, 2, 4))
#Menampilkan hasil Array
a

#Data frame 4 kolom
df <- data.frame(
  Shades = c("Renova", "Istaroth", "Asmoday", "Rhinedottir"),#Character
  Bantu_Khaenriah = c(2.1, 3.3, 1.2, 7.8),#Numeric
  Dicuekin_Paimon = c(TRUE, FALSE, TRUE, TRUE),#Logical
  AFK = c(FALSE, TRUE, FALSE, TRUE)#Logical
)
#Menampilkan hasil
print(df)

#Membuat list utama
list_utama <- list(
  vektor_numeric = v_num,
  vektor_integer = v_int,
  data_frame = df
)

#menampilkan hasil
list_utama

list_dalamList <- list(
  vektor_numeric = v_num,
  vektor_integer = v_int,
  data_frame = df,
  list_dalam = list_utama
)

list_dalamList