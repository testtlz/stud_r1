print("hello")

#install.packages("httr")
#install.packages("jsonlite")
library(httr)
library(jsonlite)
#install.packages()

endpoint <- "http://api.openweathermap.org/data/2.5/weather?q=Lublin&units=metric&appid=ccd2c7f8b414cadf0c4383ce0a541dc2"
getWeather <- httr::GET(endpoint)
weatherText<-content(getWeather,"text")
weatherJson<-fromJSON(weatherText,flatten = TRUE)
weatherDF<- as.data.frame(weatherJson)
View(weatherDF)


vec = c(-1,0.2,1,2)
vec<- as.logical(vec)
vec

wektor1<-seq(1,10,1)

wektor2<-2

wektor1/wektor2

wektor1%/%wektor2

wektor1%%wektor2

plecf<- factor(c("mezczyzna","kobieta","mezczyzna","kobieta","kobieta"),levels =c("mezczyzna","kobieta") )

unclass(plecf)

df<- data.frame(index=c(1,2,3),imie=c("jan","ala","bartek"),plec=factor(c("mezczyzna","kobieta","mezczyzna")) )

View(df)
