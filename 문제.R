data1<-read.csv('2000-2013년 연령별실업율_연령별평균.csv')
data1
# 년도별 합계.
apply(data1[,c(2:15)], 2, sum)
apply(data1[,c(2:15)], 1, sum)

data2<-read.csv('1-4호선승하차승객수.csv')
attach(data2)
data2
tapply(하차, 노선번호, sum)
sapply(data2[,c(3,4)], sum)
aggregate(승차+하차~노선번호, data2, sum)
aggregate(승차~노선번호,data2, sum)
aggregate(하차~노선번호,data2, sum)
            