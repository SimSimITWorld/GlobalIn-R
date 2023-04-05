getwd()
mat1=matrix(c(1,2,3,4))
mat1

mat1=matrix(c(1,2,3,4),nrow=2, byrow=T)
mat1

mat1[,1]
mat1[,2] 

mat1[1,]
mat1[2,]

mat2<-matrix(c(1,2,3,4,5,6,7,8,9), nrow=3, byrow=T)
mat2

mat2<-rbind(mat2, c(10,11,12))
mat2

mat3<-matrix(c('a','b','c','d'), nrow=2, byrow=T)
mat3

mat3<-cbind(mat3, c('e','f'))
mat3

colnames(mat3)<-c('First','Second','Third')
mat3


seasons<-matrix(c('봄','여름','가을','겨울'), nrow=2)
seasons

seasons<-matrix(c('봄','여름','가을','겨울'), nrow=2, byrow=T)
seasons

seasons[,2]

seasons_2<-rbind(seasons, c('초봄','초가을'))
seasons_2

seasons_3<-cbind(seasons_2, c('초여름','초겨울','한겨울'))
seasons_3

#---------------행렬끝-------------------

#---------------배열시작-----------------
array1<-array(c(1:12), dim=c(4,3))
array1 # 2차원배열

array2<-array(c(1:12), dim=c(2,2,3))
array2 # 3차원배열

# 9를 조회
array2[1,1,3]

# 12를 조회
array2[2,2,3]


# list : 서로 다른 데이터 타입을 저장
list1<-list(name='Hong Gil Dong',
            address='Seoul',
            tel='010-1234-1234',
            pay=500)
list1

list1$name

list1[1:2]

list1$birth<-'2023-04-04'
list1$birth

list1$name<-c('Hong', 'Kang')
list1$name

list1$birth<-NULL
list1$birth

no<-c(1,2,3,4)
name<-c('Apple', 'Peach', 'Banana', 'Grape')
price<-c(500, 200, 100, 50)
qty<-c(5, 2, 4, 7)

sales<-data.frame(NO=no,NAME=name,PRICE=price,QTY=qty)
sales

sales2<-matrix(c(1, 'Apple', 500, 5,
                 2, 'Peach', 200, 2,
                 3, 'Banana', 100, 4,
                 4, 'Grape', 50, 7), nrow=4, byrow=T)
sales2

df1<-data.frame(sales2)
df1

names(df1)<-c('NO','NAME','PRICE','QTY')
df1

sales

sales$NAME
sales[c(1,2),]
sales[,c(1,2)]
sales[,c(1:3)]

sales

subset(sales, qty<5)
subset(sales, qty>=5)

subset(sales, price==200)

subset(sales, name=='Apple')

no<-c(1,2,3)
name<-c('apple', 'banana', 'peach')
price<-c(100, 200, 300)

df1<-data.frame(NO=no, NAME=name, PRICE=price)
df1


no<-c(10,20,30)
name<-c('train', 'car', 'airplane')
price<-c(1000, 2000, 3000)

df2<-data.frame(NO=no, NAME=name, PRICE=price)
df2


df3<-cbind(df1, df2)
df3

df4<-rbind(df1, df2)
df4


df1<-data.frame(name=c('apple','banana','cherry'),
                price=c(300, 200, 100))
df1


df2<-data.frame(name=c('apple','cherry','berry'),
                qty=c(10,20,30))
df2


merge(df1, df2)

merge(df1, df2, all=T)

cbind(df1, df2)
cbind(df2, df1)

df1
new<-data.frame(name='mango', price=400)
df1<-rbind(df1, new)
df1

df1<-rbind(df1, data.frame(name='banana', price=500))
df1

df1<-cbind(df1, data.frame(qty=c(10, 20, 30, 40, 50)))
df1


no<-c(1,2,3,4,5)
name<-c('안찬수','심규호','신정연','이수홍','홍길동')
address<-c('파주','논산','포항','백령도','서울')
tel<-c(1111,2222,3333,4444,5555)
hobby<-c('졸기','상담','수영','새잡이', '음주')

member<-data.frame(NO=no, NAME=name, ADDRESS=address, TEL=tel, HOBBY=hobby)

member

member2<-subset(member, select=c(NO, NAME, TEL))
member2

member3<-subset(member, select=-TEL)
member3


colnames(member3)<-c('번호', '이름', '주소', '취미')
member3


sales

ncol(sales)
nrow(sales)
names(sales)
rownames(sales)

sales[c(2,3,1),]

list.files()
list.files(all.files=T)


getwd()
scan1<-scan('scan_1.txt')
scan1

scan2<-scan('scan_2.txt', what="")
scan2


input<-scan()
input

input2<-scan(what='')
input2
