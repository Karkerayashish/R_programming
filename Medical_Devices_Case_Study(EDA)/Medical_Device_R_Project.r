# Load libraries
library(dplyr)
library(vtree)
library(ggplot2)
library(psych)

dataset <-read.csv("https://raw.githubusercontent.com/Karkerayashish/R_programming/master/Medical_Devices_Case_Study(EDA)/diabetes.csv")

head(dataset)

tail(dataset)

# To know how the structure of the data, we will use str function.
str(dataset)

# glimpse gives you a better organized structure of the data.
glimpse(dataset)

describe(dataset)

# Checking rows and columns
dim(dataset)

nrows = dim(dataset)[1]
ncolumns = dim(dataset)[2]

Vector_na = rep(0,ncolumns)
Vector_na

for (i in 1:ncolumns){
  Vector_na[i]=sum(is.na(dataset[,i]))
}
print("The missing values in each column:")
print(Vector_na)

dataset <- dataset[,-c(15,16)]
print(dim(dataset))

row_has_na = apply(dataset, 1, function(x){any(is.na(x))})
dataset = dataset[!row_has_na,]
print(dim(dataset))

options(repr.plot.width=5, repr.plot.height=4)
plot(dataset$glyhb)

plot(dataset$stab.glu)

plot(dataset$age)

plot(dataset$gender)

plot(dataset$frame)

plot(dataset$location)

plot(dataset$glyhb,dataset$stab.glu)

ggplot(dataset,aes(x=stab.glu,y=glyhb,color=diagnosis))+geom_point()

dataset_numeric = dataset[,-c(7,9,12,18)]              # removing the non numeric variables

options(repr.plot.width=8, repr.plot.height=10)

par(mfrow=c(3,4))   # Put four figures in a row
for (i in 2:13){
  boxplot(dataset_numeric[,i], main=names(dataset_numeric)[i])
}

options(repr.plot.width=12, repr.plot.height=10)
par(mfrow = c(3,4))
for (i in 2:13){
  hist(dataset_numeric[,i],main = names(dataset_numeric)[i])
}

ggplot(dataset,aes(y=glyhb,x=age))+geom_point()

p = ggplot(dataset, aes(x = age, y = glyhb, color = diagnosis)) 
p+geom_jitter() + geom_boxplot()

p = ggplot(dataset, aes(x = age, y = glyhb, color = result)) 
p+geom_point()

options(repr.plot.width=6, repr.plot.height=5)
ggplot(dataset, aes(x=age, y=glyhb, color=frame)) + geom_point()

ggplot(dataset, aes(x=age, y=glyhb, size=weight, color=frame)) + geom_point()

ggplot(dataset, aes(x = weight, y = glyhb, size=weight)) + geom_point()

ggplot(dataset, aes(x = age, y = weight, size=weight, color = frame)) + geom_point()

ggplot(dataset, aes(x = gender, fill = diagnosis)) + geom_bar()

ggplot(dataset, aes(x=gender, fill=frame)) + geom_bar()

vtree(dataset, "gender")

vtree(dataset,"location",horiz=FALSE,height=250,width=850)

ggplot(dataset , aes(x=location, fill=frame)) + geom_bar()

vtree(dataset,"frame" , horiz=FALSE, height=250, width=850)

vtree(dataset,"frame location",horiz=FALSE,height=250,width=850)

dataset$result=as.factor(unlist(dataset$result))
dataset$result = factor(dataset$result,levels = c("1","0"), labels = c("Positive","Negative"))

head(dataset)

vtree(dataset,"diagnosis")

vtree(dataset,"result")

vtree(dataset,"result location")




