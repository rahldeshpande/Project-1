
#Part II-
install.packages("XML") #installing xml library
library("XML")
#importing xml file and saving it as a dataframe df
df<-xmlToDataFrame("E:\\Acadgild\\Session 9 - Project 1\\iris.xml")
df
class(df)

#Part III-

#checking json library
library(jsonlite)
jdf<-toJSON(df)
class(jdf)
#reading data from json file
fromJSON(jdf)
#saving it into datafram iris_data
iris_data<-fromJSON(jdf)
iris_data
class(iris_data)

#Part IV-
#checking dplyr library
library(dplyr)
install.packages('dplyr')
attach(iris_data)
#cleaning iris_data
iris_data$Sepal.Length<-as.numeric(iris_data$Sepal.Length)
iris_data$Sepal.Width<-as.numeric(iris_data$Sepal.Width)
iris_data$Petal.Length<-as.numeric(iris_data$Petal.Length)
iris_data$Petal.Width<-as.numeric(iris_data$Petal.Width)
#select, match, filter, arrange, rename, and mutate function on the iris_data.
attributes(iris_data)

select(iris_data,1 , 2, 3, 4)
filter(iris_data,Sepal.Length==4.4)
filter(iris_data,Petal.Width>0.5)
arrange(iris_data,Species,Sepal.Length)
mutate(iris_data,Extra='Extra')

#PArt V-
summary(iris_data)




