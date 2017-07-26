

충청북도 = read.csv("충청북도.csv",header=T,stringsAsFactors = T)
head(충청북도)
list = unique(충청북도$시군구명)
chung = NA
for(i in 1:length(unique(충청북도$행정동명))){
  chung[i] = paste("충청북도",i)
  
}
chung = cbind(chung)명
for(i in 1:length(unique(충청북도$시군구명))){
  write.csv(subset(충청북도,충청북도$시군구명==list[i]),paste("충청북도","-",list[i],".csv",sep=""),row.names=F)
}

?subset

chung[[2]]

subset(충청북도,충청북도$행정동명==list[1])

for(i in 1:length(unique(충청북도$시군구명))){
  paste("충청북도","-",list[i],sep="") = read.csv(paste("충청북도",i,".csv",sep=""),header=T)  
}


scr_dir = "C:/Users/abc/Desktop/한이음/충청북도"
scr_file = list.files(scr_dir)
scr_file

scr_file_cnt = length(scr_file)

for( i in 1:10){
  date = read.csv(scr_file[i],header=F,stringsAsFactors = F)
  write.csv(date,paste(scr_dir,"/","충청북도.csv",sep=""),row.names=F,append=TRUE)
  rm(date)
  print(i)
}

options(java.parameters = "-Xmx4g")
library(DBI)
install.packages("rJava")
library(rJava)
install.packages("RJDBC")
library(RJDBC)
install.packages("xlsx")
library(xlsx)
install.packages("XLConnect")
library(XLConnect)
강원도 = readWorksheetFromFile("강원도.xlsx",sheet="Sheet1")
?read.xlsx
for(i in 1:length(unique(충청북도$행정동명))){
  write.csv(subset(충청북도,충청북도$행정동명==list[i]),paste("충청북도","-",list[i],".csv",sep=""),row.names=F)
}


강원도 = read.csv("강원도.csv",header=T)
list = unique(강원도$시군구명)
head(강원도)

for(i in 1:length(unique(강원도$시군구명))){
  write.csv(subset(강원도,강원도$시군구명==list[i]),paste("C:/Users/abc/Desktop/한이음/강원도/",list[i],".csv",sep=""),row.names=F,fileEncoding="UTF-8")
  print(i)
}

경기도 = read.csv("경기도.csv",header=T)
list = unique(경기도$시군구명)
head(강원도)

for(i in 1:length(unique(경기도$시군구명))){
  write.csv(subset(경기도,경기도$시군구명==list[i]),paste("C:/Users/abc/Desktop/한이음/경기도/",list[i],".csv",sep=""),row.names=F,fileEncoding="UTF-8")
  print(i)
}

경상남도 = read.csv("경상남도.csv",header=T)
list = unique(경상남도$시군구명)
for(i in 1:length(unique(경상남도$시군구명))){
  write.csv(subset(경상남도,경상남도$시군구명==list[i]),paste("C:/Users/abc/Desktop/한이음/경상남도/",list[i],".csv",sep=""),row.names=F,fileEncoding="UTF-8")
  print(i)
}

경상북도 = read.csv("경상북도.csv",header=T)
list = unique(경상북도$시군구명)
for(i in 1:length(unique(경상북도$시군구명))){
  write.csv(subset(경상북도,경상북도$시군구명==list[i]),paste("C:/Users/abc/Desktop/한이음/경상북도/",list[i],".csv",sep=""),row.names=F,fileEncoding="UTF-8")
  print(i)
}

광주광역시 = read.csv("C:/Users/abc/desktop/hanium/201706/광주광역시.csv",header=T)
list = unique(광주광역시$시군구명)
for(i in 1:length(unique(광주광역시$시군구명))){
  write.csv(subset(광주광역시,광주광역시$시군구명==list[i]),paste("C:/Users/abc/Desktop/hanium/201706/광주광역시/",list[i],".csv",sep=""),row.names=F)
  print(i)
}
대구광역시 = read.csv("대구광역시).csv",header=T)
list = unique(대구광역시$시군구명)
for(i in 1:length(unique(대구광역시$시군구명))){
  write.csv(subset(대구광역시,대구광역시$시군구명==list[i]),paste("C:/Users/abc/Desktop/한이음/대구광역시/",list[i],".csv",sep=""),row.names=F,fileEncoding="UTF-8")
  print(i)
}
울산광역시 = read.csv("울산광역시.csv",header=T)
list = unique(울산광역시$시군구명)
for(i in 1:length(unique(울산광역시$시군구명))){
  write.csv(subset(울산광역시,울산광역시$시군구명==list[i]),paste("C:/Users/abc/Desktop/한이음/울산광역시/",list[i],".csv",sep=""),row.names=F,fileEncoding="UTF-8")
  print(i)
}
인천광역시 = read.csv("인천광역시.csv",header=T)
list = unique(인천광역시$시군구명)
for(i in 1:length(unique(인천광역시$시군구명))){
  write.csv(subset(인천광역시,인천광역시$시군구명==list[i]),paste("C:/Users/abc/Desktop/한이음/인천광역시/",list[i],".csv",sep=""),row.names=F)
  print(i)
}
충청남도 = read.csv("충청남도.csv",header=T)
list = unique(충청남도$시군구명)
for(i in 1:length(unique(충청남도$시군구명))){
  write.csv(subset(충청남도,충청남도$시군구명==list[i]),paste("C:/Users/abc/Desktop/한이음/충청남도/",list[i],".csv",sep=""),row.names=F,fileEncoding="UTF-8")
  print(i)
}
부산광역시 = read.csv("부산광역시.csv",header=T)
list = unique(부산광역시$시군구명)
for(i in 1:length(unique(부산광역시$시군구명))){
  write.csv(subset(부산광역시,부산광역시$시군구명==list[i]),paste("C:/Users/abc/Desktop/한이음/부산광역시/",list[i],".csv",sep=""),row.names=F,fileEncoding="UTF-8")
  print(i)
}
전라남도 = read.csv("전라남도.csv",header=T)
list = unique(전라남도$시군구명)
for(i in 1:length(unique(전라남도$시군구명))){
  write.csv(subset(전라남도,전라남도$시군구명==list[i]),paste("C:/Users/abc/Desktop/한이음/전라남도/",list[i],".csv",sep=""),row.names=F,fileEncoding="UTF-8")
  print(i)
}
전라북도 = read.csv("전라북도.csv",header=T)
list = unique(전라북도$시군구명)
for(i in 1:length(unique(전라북도$시군구명))){
  write.csv(subset(전라북도,전라북도$시군구명==list[i]),paste("C:/Users/abc/Desktop/한이음/전라북도/",list[i],".csv",sep=""),row.names=F,fileEncoding="UTF-8")
  print(i)
}
제주도 = read.csv("제주도.csv",header=T)
제주도1 = subset(제주도,제주도$시도명 == "제주특별자치도")
tail(제주도)
rm(list)
list1 = unique(제주도1$시군구명)
list1[2]
for(i in 1:length(unique(제주도$시군구명))){
  write.csv(subset(제주도,제주도$시군구명==list[i]),paste("C:/Users/abc/Desktop/한이음/제주도/",list[i],".csv",sep=""),row.names=F,fileEncoding="UTF-8")
  print(i)
}
대전광역시 = read.csv("대전광역시.csv",header=T)
list = unique(대전광역시$시군구명)
for(i in 1:length(unique(대전광역시$시군구명))){
  write.csv(subset(대전광역시,대전광역시$시군구명==list[i]),paste("C:/Users/abc/Desktop/한이음/대전광역시/",list[i],".csv",sep=""),row.names=F,fileEncoding="UTF-8")
  print(i)
}
세종 = read.csv("세종특별시.csv",header=T)
write.csv(세종,"세종시.csv",row.names=F,fileEncoding="UTF-8")
