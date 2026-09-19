data("airquality")
View(airquality)

#buat histogram variabel Wind
hist(airquality$Wind)
#buat histogram variabel Wind
hist(airquality$Wind)
#buat histogram Wind dengan skala density
hist(airquality$Wind,
     probability = TRUE)
#Tambahkan kurva density pada histogram
lines(density(airquality$Wind, na.rm = TRUE))


#buat boxplot variabel Wind
boxplot(airquality$Wind)
#buat stem-and-leaf plot variabel Wind
stem(airquality$Wind)


#buat scatter plot antara Wind dan Temperature
plot(airquality$Wind, airquality$Temp)
