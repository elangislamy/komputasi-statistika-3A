#Panggil data iris
data("iris")
View(iris)
data(iris)
iris

#Tampilkan data Sepal.Length saja
iris$Sepal.Length

#Sebutkan tipe data tiap kolom
sapply(iris, class)

#Buatkan variabel dengan nama turunan sepal.width dengan nilai besar dan kecil
iris$turunan <- ifelse(iris$Sepal.Width > 3,
                       "Besar",
                       "Kecil")
iris$turunan

#Ubah variabel turunan jadi sepal
names(iris)[names(iris) == "turunan"] <- "sepal"
names(iris)

#Ambil data dengan sepal bernilai besar dari spesies virginica
subset(iris,
       sepal == "Besar" &
       Species == "virginica")

#Cek jumlah spesies dalam data
table(iris$Species)

#Pecahkan data iris menjadi 3 data frame(df) dengan tiap df untuk spesies tertentu

#df setosa
iris_setosa <- subset(iris, Species == "setosa")
iris_setosa

#df versicolor
iris_versicolor <- subset(iris, Species == "versicolor")
iris_versicolor

#df virginica
iris_virginica <- subset(iris, Species == "virginica")
iris_virginica


#Dari setiap df spesies urutkan data berdasarkan  sepal.width
#gunakan order, gunanya adalah untuk mengurutkan data

#setosa
iris_setosa <- iris_setosa[order(iris_setosa$Sepal.Width),]
iris_setosa

#versicolor
iris_versicolor <- iris_versicolor[order(iris_versicolor$Sepal.Width),]
iris_versicolor

#virginica
iris_virginica <- iris_virginica[order(iris_virginica$Sepal.Width),]
iris_virginica