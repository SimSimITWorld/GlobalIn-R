input3<-readline()
input3

input4<-readline("Are you Ok? : ")
input4

input5<-readLines('scan_2.txt')
input5

fruits<-read.table('fruits.txt', header=T)
fruits

# 건너 뛸 줄 수를 지정
fruits2<-read.table('fruits_2.txt', skip=2)
fruits2

# 출력할 줄 수를 지정
fruits2<-read.table('fruits_2.txt', nrows=2)
fruits2

fruits3<-read.csv('fruits_3.csv')
fruits3

fruits4<-read.csv('fruits_4.csv', header=F)
fruits4

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
