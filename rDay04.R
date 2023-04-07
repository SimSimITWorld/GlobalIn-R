install.packages('googleVis')
library('googleVis')

install.packages('sqldf')
library(sqldf)

install.packages('DBI')

install.packages('RODBC')

Fruits

write.csv(Fruits, 'Fruits_sql.csv', quote=F, row.names=F)

db<-odbcConnect('testdb5', uid='scott', pwd='tiger')

sql<-sqlQuery(db, 'select * from dept', believeNRows=FALSE)

sql

sql2<-sqlQuery(db, 'select * from emp', believeNRows=FALSE)

sql2


install.packages('WriteXLS')
library(WriteXLS)

name<-c('Apple', 'Banana', 'Peach')
price<-c(300, 200, 100)
item<-data.frame(NAME=name, PRICE=price)
item
WriteXLS('item', 'item.xls')



fruits6<-read.delim('clipboard', header=T)
fruits6


install.packages('XML')
library(XML)

install.packages('xml2')
library('xml2')
install.packages("tidyverse")
library(tidyverse)

install.packages('kulife')
library(kulife)

name<-c('Apple','Banana','Peach')
price<-c(300,200,100)
item<-data.frame(NAME=name,PRICE=price)
item

write.xml(item.file='seoul_apt_example.xml')
write_xml('seoul_apt_example.xml')

xml_data<-xmlToDataFrame("seoul_apt_example.xml")
View(xml_data)


vec1<-c(1,2,3,4,5)
vec2<-c('a','b','c','d','e')
max(vec1)
min(vec1)
mean(vec1)

max(vec2)
min(vec2)
mean(vec2)

sd(vec1)
sum(vec1)


var(vec1)


Fruits
library(googleVis)

# aggregate 함수 : 데이터 프레임을 상대로 주어진 함수 값을 구함
# 형식 : aggregate(계산될 컬럼 ~ 기준될 컬럼, 데이터, 함수)

# 년도 별로 Sales 된 수량의 합계를 구하시오.
aggregate(Sales~Year, Fruits, sum)

aggregate(Sales~Fruit, Fruits, sum)

#Fruit 별로 가장 많이 Sales 된 수량
aggregate(Sales~Fruit, Fruits, max)

aggregate(Sales~Fruit+Year, Fruits, max)

mat1<-matrix(c(1,2,3,4,5,6), nrow=2, byrow=T)
mat1

# Matrix 에서 분석
apply(mat1, 1, sum)
apply(mat1, 2, sum)
apply(mat1[,c(2,3)], 2, sum)
apply(mat1[,c(2,3)], 2, max)


# lapply, sapply -- 리스트
list1<-list(Fruits$Sales)
list1

list2<-list(Fruits$Profit)
list2

# c() : 벡터함수
lapply(c(list1, list2), max)

list2<-list(Fruits$Profit)
list2

sapply(c(list1, list2), max)


# tapply : 출력값, 기준컬럼, 적용함수
# mapply : 함수, 벡터1, 벡터2, 벡터3 ...

Fruits

tapply(Sales, Fruit, sum)
attach(Fruits) # 객객체를 변수처럼 변환하는 것

tapply(Sales, Year, sum)

vec1<-c(1,2,3,4,5)
vec2<-c(10,20,30,40,50)
vec3<-c(100,200,300,400,500)

mapply(sum, vec1, vec2, vec3)






attach()