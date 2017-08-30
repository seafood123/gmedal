subset_group = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/광주광역시/광산구.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc=t(subset_group)
ccc=data.frame(ccc)
for(i in 1:dim(ccc)[2]){
  names(ccc)[i] = paste(subset_group$업종[i])
}
ccc=ccc[8,]


subset_group1 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/광주광역시/남구.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group1) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc1=t(subset_group1)
ccc1=data.frame(ccc1)
for(i in 1:dim(ccc1)[2]){
  names(ccc1)[i] = paste(subset_group1$업종[i])
}
ccc1=ccc1[8,]

subset_group2 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/광주광역시/동구.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group2) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc2=t(subset_group2)
ccc2=data.frame(ccc2)
for(i in 1:dim(ccc2)[2]){
  names(ccc2)[i] = paste(subset_group2$업종[i])
}
ccc2=ccc2[8,]

subset_group3 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/광주광역시/북구.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group3) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc3=t(subset_group3)
ccc3=data.frame(ccc3)
for(i in 1:dim(ccc3)[2]){
  names(ccc3)[i] = paste(subset_group3$업종[i])
}
ccc3=ccc3[8,]


subset_group4 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/광주광역시/서구.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group4) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc4=t(subset_group4)
ccc4=data.frame(ccc4)
for(i in 1:dim(ccc4)[2]){
  names(ccc4)[i] = paste(subset_group4$업종[i])
}
ccc4=ccc4[8,]

library(jsonlite)
"광산구"=as.list(ccc)
"남구" = as.list(ccc1)
"동구"=as.list(ccc2)
"북구"=as.list(ccc3)
"서구"=as.list(ccc4)

광주광역시 = list("광산구"=광산구,"남구"=남구,"동구"=동구,"북구"=북구,"서구"=서구)
LIST_광주 = list("광주광역시"=광주광역시)
toJSON(LIST_광주)

######################################################################################################################

subset_group = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/서울특별시/강남구.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc=t(subset_group)
ccc=data.frame(ccc)
for(i in 1:dim(ccc)[2]){
  names(ccc)[i] = paste(subset_group$업종[i])
}
ccc=ccc[8,]

subset_group1 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/서울특별시/금천구.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group1) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc1=t(subset_group1)
ccc1=data.frame(ccc1)
for(i in 1:dim(ccc1)[2]){
  names(ccc1)[i] = paste(subset_group1$업종[i])
}
ccc1=ccc1[8,]

subset_group2 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/서울특별시/송파구.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group2) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc2=t(subset_group2)
ccc2=data.frame(ccc2)
for(i in 1:dim(ccc2)[2]){
  names(ccc2)[i] = paste(subset_group2$업종[i])
}
ccc2=ccc2[8,]

subset_group3 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/서울특별시/강서구.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group3) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc3=t(subset_group3)
ccc3=data.frame(ccc3)
for(i in 1:dim(ccc3)[2]){
  names(ccc3)[i] = paste(subset_group3$업종[i])
}
ccc3=ccc3[8,]

subset_group4 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/서울특별시/중구.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group4) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc4=t(subset_group4)
ccc4=data.frame(ccc4)
for(i in 1:dim(ccc4)[2]){
  names(ccc4)[i] = paste(subset_group4$업종[i])
}
ccc4=ccc4[8,]

subset_group5 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/서울특별시/강동구.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group5) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc5=t(subset_group5)
ccc5=data.frame(ccc5)
for(i in 1:dim(ccc5)[2]){
  names(ccc5)[i] = paste(subset_group5$업종[i])
}
ccc5=ccc5[8,]

subset_group6 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/서울특별시/양천구.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group6) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc6=t(subset_group6)
ccc6=data.frame(ccc6)
for(i in 1:dim(ccc6)[2]){
  names(ccc6)[i] = paste(subset_group6$업종[i])
}
ccc6=ccc6[8,]

subset_group7 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/서울특별시/서대문구.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group7) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc7=t(subset_group7)
ccc7=data.frame(ccc7)
for(i in 1:dim(ccc7)[2]){
  names(ccc7)[i] = paste(subset_group7$업종[i])
}
ccc7=ccc7[8,]

subset_group8 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/서울특별시/광진구.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group8) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc8=t(subset_group8)
ccc8=data.frame(ccc8)
for(i in 1:dim(ccc8)[2]){
  names(ccc8)[i] = paste(subset_group8$업종[i])
}
ccc8=ccc8[8,]

subset_group9 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/서울특별시/구로구.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group9) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc9=t(subset_group9)
ccc9=data.frame(ccc9)
for(i in 1:dim(ccc9)[2]){
  names(ccc9)[i] = paste(subset_group9$업종[i])
}
ccc9=ccc9[8,]

subset_group10 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/서울특별시/영등포구.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group10) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc10=t(subset_group10)
ccc10=data.frame(ccc10)
for(i in 1:dim(ccc10)[2]){
  names(ccc10)[i] = paste(subset_group10$업종[i])
}
ccc10=ccc10[8,]


subset_group11 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/서울특별시/관악구.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group11) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc11=t(subset_group11)
ccc11=data.frame(ccc11)
for(i in 1:dim(ccc11)[2]){
  names(ccc11)[i] = paste(subset_group11$업종[i])
}
ccc11=ccc11[8,]

subset_group12 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/서울특별시/서초구.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group12) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc12=t(subset_group12)
ccc12=data.frame(ccc12)
for(i in 1:dim(ccc12)[2]){
  names(ccc12)[i] = paste(subset_group12$업종[i])
}
ccc12=ccc12[8,]

subset_group13 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/서울특별시/성북구.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group13) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc13=t(subset_group13)
ccc13=data.frame(ccc13)
for(i in 1:dim(ccc13)[2]){
  names(ccc13)[i] = paste(subset_group13$업종[i])
}
ccc13=ccc13[8,]

subset_group14 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/서울특별시/마포구.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group14) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc14=t(subset_group14)
ccc14=data.frame(ccc14)
for(i in 1:dim(ccc14)[2]){
  names(ccc14)[i] = paste(subset_group14$업종[i])
}
ccc14=ccc14[8,]

subset_group15 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/서울특별시/성동구.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group15) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc15=t(subset_group15)
ccc15=data.frame(ccc15)
for(i in 1:dim(ccc15)[2]){
  names(ccc15)[i] = paste(subset_group15$업종[i])
}
ccc15=ccc15[8,]

subset_group16 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/서울특별시/노원구.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group16) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc16=t(subset_group16)
ccc16=data.frame(ccc16)
for(i in 1:dim(ccc16)[2]){
  names(ccc16)[i] = paste(subset_group16$업종[i])
}
ccc16=ccc16[8,]

subset_group17 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/서울특별시/동작구.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group17) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc17=t(subset_group17)
ccc17=data.frame(ccc17)
for(i in 1:dim(ccc17)[2]){
  names(ccc17)[i] = paste(subset_group17$업종[i])
}
ccc17=ccc17[8,]

subset_group18 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/서울특별시/종로구.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group18) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc18=t(subset_group18)
ccc18=data.frame(ccc18)
for(i in 1:dim(ccc18)[2]){
  names(ccc18)[i] = paste(subset_group18$업종[i])
}
ccc18=ccc18[8,]

subset_group19 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/서울특별시/중랑구.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group19) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc19=t(subset_group19)
ccc19=data.frame(ccc19)
for(i in 1:dim(ccc19)[2]){
  names(ccc19)[i] = paste(subset_group19$업종[i])
}
ccc19=ccc19[8,]

subset_group20 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/서울특별시/강북구.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group20) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc20=t(subset_group20)
ccc20=data.frame(ccc20)
for(i in 1:dim(ccc20)[2]){
  names(ccc20)[i] = paste(subset_group20$업종[i])
}
ccc20=ccc20[8,]

subset_group21 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/서울특별시/은평구.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group21) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc21=t(subset_group21)
ccc21=data.frame(ccc21)
for(i in 1:dim(ccc21)[2]){
  names(ccc21)[i] = paste(subset_group21$업종[i])
}
ccc21=ccc21[8,]

subset_group22 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/서울특별시/용산구.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group22) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc22=t(subset_group22)
ccc22=data.frame(ccc22)
for(i in 1:dim(ccc22)[2]){
  names(ccc22)[i] = paste(subset_group22$업종[i])
}
ccc22=ccc22[8,]

subset_group23 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/서울특별시/동대문구.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group23) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc23=t(subset_group23)
ccc23=data.frame(ccc23)
for(i in 1:dim(ccc23)[2]){
  names(ccc23)[i] = paste(subset_group23$업종[i])
}
ccc23=ccc23[8,]

subset_group24 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/서울특별시/도봉구.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group24) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc24=t(subset_group24)
ccc24=data.frame(ccc24)
for(i in 1:dim(ccc24)[2]){
  names(ccc24)[i] = paste(subset_group24$업종[i])
}
ccc24=ccc24[8,]


listset
강남구 = as.list(ccc)
금천구 = as.list(ccc1)
송파구 = as.list(ccc2)
강서구 = as.list(ccc3)
중구 = as.list(ccc4)
강동구= as.list(ccc5)
양천구= as.list(ccc6)
서대문구= as.list(ccc7)
광진구= as.list(ccc8)
구로구= as.list(ccc9)
영등포구= as.list(ccc10)
관악구= as.list(ccc11)
서초구= as.list(ccc12)
성북구= as.list(ccc13)
마포구= as.list(ccc14)
성동구= as.list(ccc15)
노원구= as.list(ccc16)
동작구= as.list(ccc17)
종로구= as.list(ccc18)
중랑구= as.list(ccc19)
강북구= as.list(ccc20)
은평구= as.list(ccc21)
용산구= as.list(ccc22)
동대문구= as.list(ccc23)
도봉구= as.list(ccc24)

서울 = list(강남구,금천구,송파구,강서구,중구,강동구,양천구,서대문구,광진구,구로구,영등포구,관악구,서초구,성북구,마포구,성동구,노원구,동작구,
             종로구,중랑구,강북구,은평구,용산구,동대문구,도봉구)
names(서울)=c("강남구","금천구","송파구","강서구","중구","강동구","양천구","서대문구","광진구",
            "구로구","영등포구","관악구","서초구","성북구","마포구","성동구","노원구","동작구",
            "종로구","중랑구","강북구","은평구","용산구","동대문구","도봉구")
FILE = list("서울특별시"=서울,"광주광역시"=광주광역시)
toJSON(FILE)

#########################################################################################################################

subset_group = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/강원도/강릉시.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc=t(subset_group)
ccc=data.frame(ccc)
for(i in 1:dim(ccc)[2]){
  names(ccc)[i] = paste(subset_group$업종[i])
}
ccc=ccc[8,]

subset_group1 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/강원도/고성군.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group1) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc1=t(subset_group1)
ccc1=data.frame(ccc1)
for(i in 1:dim(ccc1)[2]){
  names(ccc1)[i] = paste(subset_group1$업종[i])
}
ccc1=ccc1[8,]

subset_group2 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/강원도/동해시.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group2) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc2=t(subset_group2)
ccc2=data.frame(ccc2)
for(i in 1:dim(ccc2)[2]){
  names(ccc2)[i] = paste(subset_group2$업종[i])
}
ccc2=ccc2[8,]

subset_group3 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/강원도/삼척시.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group3) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc3=t(subset_group3)
ccc3=data.frame(ccc3)
for(i in 1:dim(ccc3)[2]){
  names(ccc3)[i] = paste(subset_group3$업종[i])
}
ccc3=ccc3[8,]

subset_group4 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/강원도/속초시.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group4) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc4=t(subset_group4)
ccc4=data.frame(ccc4)
for(i in 1:dim(ccc4)[2]){
  names(ccc4)[i] = paste(subset_group4$업종[i])
}
ccc4=ccc4[8,]

subset_group5 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/강원도/양구군.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group5) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc5=t(subset_group5)
ccc5=data.frame(ccc5)
for(i in 1:dim(ccc5)[2]){
  names(ccc5)[i] = paste(subset_group5$업종[i])
}
ccc5=ccc5[8,]

subset_group6 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/강원도/양양군.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group6) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc6=t(subset_group6)
ccc6=data.frame(ccc6)
for(i in 1:dim(ccc6)[2]){
  names(ccc6)[i] = paste(subset_group6$업종[i])
}
ccc6=ccc6[8,]

subset_group7 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/강원도/영월군.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group7) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc7=t(subset_group7)
ccc7=data.frame(ccc7)
for(i in 1:dim(ccc7)[2]){
  names(ccc7)[i] = paste(subset_group7$업종[i])
}
ccc7=ccc7[8,]

subset_group8 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/강원도/원주시.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group8) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc8=t(subset_group8)
ccc8=data.frame(ccc8)
for(i in 1:dim(ccc8)[2]){
  names(ccc8)[i] = paste(subset_group8$업종[i])
}
ccc8=ccc8[8,]

subset_group9 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/강원도/인제군.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group9) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc9=t(subset_group9)
ccc9=data.frame(ccc9)
for(i in 1:dim(ccc9)[2]){
  names(ccc9)[i] = paste(subset_group9$업종[i])
}
ccc9=ccc9[8,]

subset_group10 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/강원도/정선군.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group10) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc10=t(subset_group10)
ccc10=data.frame(ccc10)
for(i in 1:dim(ccc10)[2]){
  names(ccc10)[i] = paste(subset_group10$업종[i])
}
ccc10=ccc10[8,]


subset_group11 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/강원도/철원군.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group11) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc11=t(subset_group11)
ccc11=data.frame(ccc11)
for(i in 1:dim(ccc11)[2]){
  names(ccc11)[i] = paste(subset_group11$업종[i])
}
ccc11=ccc11[8,]

subset_group12 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/강원도/춘천시.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group12) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc12=t(subset_group12)
ccc12=data.frame(ccc12)
for(i in 1:dim(ccc12)[2]){
  names(ccc12)[i] = paste(subset_group12$업종[i])
}
ccc12=ccc12[8,]

subset_group13 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/강원도/태백시.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group13) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc13=t(subset_group13)
ccc13=data.frame(ccc13)
for(i in 1:dim(ccc13)[2]){
  names(ccc13)[i] = paste(subset_group13$업종[i])
}
ccc13=ccc13[8,]

subset_group14 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/강원도/평창군.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group14) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc14=t(subset_group14)
ccc14=data.frame(ccc14)
for(i in 1:dim(ccc14)[2]){
  names(ccc14)[i] = paste(subset_group14$업종[i])
}
ccc14=ccc14[8,]

subset_group15 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/강원도/홍천군.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group15) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc15=t(subset_group15)
ccc15=data.frame(ccc15)
for(i in 1:dim(ccc15)[2]){
  names(ccc15)[i] = paste(subset_group15$업종[i])
}
ccc15=ccc15[8,]

subset_group16 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/강원도/화천군.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group16) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc16=t(subset_group16)
ccc16=data.frame(ccc16)
for(i in 1:dim(ccc16)[2]){
  names(ccc16)[i] = paste(subset_group16$업종[i])
}
ccc16=ccc16[8,]

subset_group17 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/강원도/횡성군.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group17) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc17=t(subset_group17)
ccc17=data.frame(ccc17)
for(i in 1:dim(ccc17)[2]){
  names(ccc17)[i] = paste(subset_group17$업종[i])
}
ccc17=ccc17[8,]

listset
강릉시 = as.list(ccc)
고성군 = as.list(ccc1)
동해시 = as.list(ccc2)
삼척시 = as.list(ccc3)
속초시 = as.list(ccc4)
양구군= as.list(ccc5)
양양군= as.list(ccc6)
영월군= as.list(ccc7)
원주시= as.list(ccc8)
인제군= as.list(ccc9)
정선군= as.list(ccc10)
철원군= as.list(ccc11)
춘천시= as.list(ccc12)
태백시= as.list(ccc13)
평창군= as.list(ccc14)
홍천군= as.list(ccc15)
화천군= as.list(ccc16)
횡성군= as.list(ccc17)

강원도 = list("강릉시"=강릉시,"고성군"=고성군,"동해시"=동해시,"삼척시"=삼척시,"속초시"=속초시,"양구군"=양구군,
           "양양군"=양양군,"영월군"=영월군,"원주시"=원주시,"인제군"=인제군,"정선군"=정선군,"철원군"=철원군,
           "춘천시"=춘천시,"태백시"=태백시,"평창군"=평창군,"홍천군"=홍천군,"화천군"=화천군,"횡성군"=횡성군)



#----------------------------------------------------------------------------------------------

subset_group = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/경기도/가평군.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc=t(subset_group)
ccc=data.frame(ccc)
for(i in 1:dim(ccc)[2]){
  names(ccc)[i] = paste(subset_group$업종[i])
}
ccc=ccc[8,]

subset_group1 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/경기도/과천시.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group1) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc1=t(subset_group1)
ccc1=data.frame(ccc1)
for(i in 1:dim(ccc1)[2]){
  names(ccc1)[i] = paste(subset_group1$업종[i])
}
ccc1=ccc1[8,]

subset_group2 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/경기도/광명시.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group2) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc2=t(subset_group2)
ccc2=data.frame(ccc2)
for(i in 1:dim(ccc2)[2]){
  names(ccc2)[i] = paste(subset_group2$업종[i])
}
ccc2=ccc2[8,]

subset_group3 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/경기도/광주시.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group3) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc3=t(subset_group3)
ccc3=data.frame(ccc3)
for(i in 1:dim(ccc3)[2]){
  names(ccc3)[i] = paste(subset_group3$업종[i])
}
ccc3=ccc3[8,]

subset_group4 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/경기도/구리시.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group4) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc4=t(subset_group4)
ccc4=data.frame(ccc4)
for(i in 1:dim(ccc4)[2]){
  names(ccc4)[i] = paste(subset_group4$업종[i])
}
ccc4=ccc4[8,]

subset_group5 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/경기도/군포시.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group5) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc5=t(subset_group5)
ccc5=data.frame(ccc5)
for(i in 1:dim(ccc5)[2]){
  names(ccc5)[i] = paste(subset_group5$업종[i])
}
ccc5=ccc5[8,]

subset_group6 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/경기도/김포시.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group6) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc6=t(subset_group6)
ccc6=data.frame(ccc6)
for(i in 1:dim(ccc6)[2]){
  names(ccc6)[i] = paste(subset_group6$업종[i])
}
ccc6=ccc6[8,]

subset_group7 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/경기도/남양주시.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group7) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc7=t(subset_group7)
ccc7=data.frame(ccc7)
for(i in 1:dim(ccc7)[2]){
  names(ccc7)[i] = paste(subset_group7$업종[i])
}
ccc7=ccc7[8,]

subset_group8 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/경기도/동두천시.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group8) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc8=t(subset_group8)
ccc8=data.frame(ccc8)
for(i in 1:dim(ccc8)[2]){
  names(ccc8)[i] = paste(subset_group8$업종[i])
}
ccc8=ccc8[8,]

subset_group9 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/경기도/부천시.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group9) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc9=t(subset_group9)
ccc9=data.frame(ccc9)
for(i in 1:dim(ccc9)[2]){
  names(ccc9)[i] = paste(subset_group9$업종[i])
}
ccc9=ccc9[8,]

subset_group10 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/경기도/시흥시.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group10) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc10=t(subset_group10)
ccc10=data.frame(ccc10)
for(i in 1:dim(ccc10)[2]){
  names(ccc10)[i] = paste(subset_group10$업종[i])
}
ccc10=ccc10[8,]


subset_group11 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/경기도/안성시.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group11) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc11=t(subset_group11)
ccc11=data.frame(ccc11)
for(i in 1:dim(ccc11)[2]){
  names(ccc11)[i] = paste(subset_group11$업종[i])
}
ccc11=ccc11[8,]

subset_group12 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/경기도/양주시.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group12) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc12=t(subset_group12)
ccc12=data.frame(ccc12)
for(i in 1:dim(ccc12)[2]){
  names(ccc12)[i] = paste(subset_group12$업종[i])
}
ccc12=ccc12[8,]

subset_group13 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/경기도/양평군.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group13) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc13=t(subset_group13)
ccc13=data.frame(ccc13)
for(i in 1:dim(ccc13)[2]){
  names(ccc13)[i] = paste(subset_group13$업종[i])
}
ccc13=ccc13[8,]

subset_group14 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/경기도/여주시.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group14) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc14=t(subset_group14)
ccc14=data.frame(ccc14)
for(i in 1:dim(ccc14)[2]){
  names(ccc14)[i] = paste(subset_group14$업종[i])
}
ccc14=ccc14[8,]

subset_group15 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/경기도/연천군.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group15) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc15=t(subset_group15)
ccc15=data.frame(ccc15)
for(i in 1:dim(ccc15)[2]){
  names(ccc15)[i] = paste(subset_group15$업종[i])
}
ccc15=ccc15[8,]

subset_group16 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/경기도/오산시.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group16) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc16=t(subset_group16)
ccc16=data.frame(ccc16)
for(i in 1:dim(ccc16)[2]){
  names(ccc16)[i] = paste(subset_group16$업종[i])
}
ccc16=ccc16[8,]

subset_group17 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/경기도/의왕시.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group17) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc17=t(subset_group17)
ccc17=data.frame(ccc17)
for(i in 1:dim(ccc17)[2]){
  names(ccc17)[i] = paste(subset_group17$업종[i])
}
ccc17=ccc17[8,]

subset_group18 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/경기도/의정부시.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group18) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc18=t(subset_group18)
ccc18=data.frame(ccc18)
for(i in 1:dim(ccc18)[2]){
  names(ccc18)[i] = paste(subset_group18$업종[i])
}
ccc18=ccc18[8,]

subset_group19 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/경기도/이천시.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group19) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc19=t(subset_group19)
ccc19=data.frame(ccc19)
for(i in 1:dim(ccc19)[2]){
  names(ccc19)[i] = paste(subset_group19$업종[i])
}
ccc19=ccc19[8,]

subset_group20 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/경기도/파주시.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group20) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc20=t(subset_group20)
ccc20=data.frame(ccc20)
for(i in 1:dim(ccc20)[2]){
  names(ccc20)[i] = paste(subset_group20$업종[i])
}
ccc20=ccc20[8,]

subset_group21 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/경기도/평택시.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group21) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc21=t(subset_group21)
ccc21=data.frame(ccc21)
for(i in 1:dim(ccc21)[2]){
  names(ccc21)[i] = paste(subset_group21$업종[i])
}
ccc21=ccc21[8,]

subset_group22 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/경기도/포천시.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group22) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc22=t(subset_group22)
ccc22=data.frame(ccc22)
for(i in 1:dim(ccc22)[2]){
  names(ccc22)[i] = paste(subset_group22$업종[i])
}
ccc22=ccc22[8,]

subset_group23 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/경기도/하남시.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group23) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc23=t(subset_group23)
ccc23=data.frame(ccc23)
for(i in 1:dim(ccc23)[2]){
  names(ccc23)[i] = paste(subset_group23$업종[i])
}
ccc23=ccc23[8,]

subset_group24 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/경기도/화성시.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group24) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc24=t(subset_group24)
ccc24=data.frame(ccc24)
for(i in 1:dim(ccc24)[2]){
  names(ccc24)[i] = paste(subset_group24$업종[i])
}
ccc24=ccc24[8,]

subset_group25 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/경기도/고양시.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group25) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc25=t(subset_group25)
ccc25=data.frame(ccc25)
for(i in 1:dim(ccc25)[2]){
  names(ccc25)[i] = paste(subset_group25$업종[i])
}
ccc25=ccc25[8,]

subset_group26 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/경기도/성남시.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group26) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc26=t(subset_group26)
ccc26=data.frame(ccc26)
for(i in 1:dim(ccc26)[2]){
  names(ccc26)[i] = paste(subset_group26$업종[i])
}
ccc26=ccc26[8,]

subset_group27 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/경기도/수원시.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group27) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc27=t(subset_group27)
ccc27=data.frame(ccc27)
for(i in 1:dim(ccc27)[2]){
  names(ccc27)[i] = paste(subset_group27$업종[i])
}
ccc27=ccc27[8,]

subset_group28 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/경기도/안산시.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group28) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc28=t(subset_group28)
ccc28=data.frame(ccc28)
for(i in 1:dim(ccc28)[2]){
  names(ccc28)[i] = paste(subset_group28$업종[i])
}
ccc28=ccc28[8,]

subset_group29 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/경기도/안양시.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group29) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc29=t(subset_group29)
ccc29=data.frame(ccc29)
for(i in 1:dim(ccc29)[2]){
  names(ccc29)[i] = paste(subset_group29$업종[i])
}
ccc29=ccc29[8,]

subset_group30 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/경기도/용인시.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group30) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc30=t(subset_group30)
ccc30=data.frame(ccc30)
for(i in 1:dim(ccc30)[2]){
  names(ccc30)[i] = paste(subset_group30$업종[i])
}
ccc30=ccc30[8,]


listset
가평군 = as.list(ccc)
과천시 = as.list(ccc1)
광명시 = as.list(ccc2)
광주시 = as.list(ccc3)
구리시 = as.list(ccc4)
군포시= as.list(ccc5)
김포시= as.list(ccc6)
남양주시= as.list(ccc7)
동두천시= as.list(ccc8)
부천시= as.list(ccc9)
시흥시= as.list(ccc10)
안성시= as.list(ccc11)
양주시= as.list(ccc12)
양평군= as.list(ccc13)
여주시= as.list(ccc14)
연천군= as.list(ccc15)
오산시= as.list(ccc16)
의왕시= as.list(ccc17)
의정부시= as.list(ccc18)
이천시= as.list(ccc19)
파주시= as.list(ccc20)
평택시= as.list(ccc21)
포천시= as.list(ccc22)
하남시= as.list(ccc23)
화성시= as.list(ccc24)
고양시= as.list(ccc25)
성남시= as.list(ccc26)
수원시= as.list(ccc27)
안산시= as.list(ccc28)
안양시= as.list(ccc29)
용인시= as.list(ccc30)



경기도 = list("가평군"=가평군,"과천시"=과천시,"광명시"=광명시,"광주시"=광주시,"구리시"=구리시,"군포시"=군포시,
           "김포시"=김포시,"남양주시"=남양주시,"동두천시"=동두천시,"부천시"=부천시,"시흥시"=시흥시,"안성시"=안성시,
           "양주시"=양주시,"양평군"=양평군,"여주시"=여주시,"연천군"=연천군,"오산시"=오산시,"의왕시"=의왕시,
           "의정부시"=의정부시,"이천시"=이천시,"파주시"=파주시,"평택시"=평택시,"포천시"=포천시,"하남시"=하남시,"화성시"=화성시,
           "고양시"=고양시,"성남시"=성남시,"수원시"=수원시,"안산시"=안산시,"안양시"=안양시,"용인시"=용인시)
FILE = NA
FILE_경기도 = list("경기도"=경기도)
FILE_광주 = list("광주광역시"=광주광역시)
FILE_서울 = list("서울특별시"=서울)
FILE_강원도 = list("강원도"=강원도)

FILE = list(FILE_경기도,FILE_강원도,FILE_광주,FILE_서울)
write(FILE,"FILE.txt")

#---------------------------------------------------------------------------------------------------------------



subset_group = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/경상남도/거제시.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc=t(subset_group)
ccc=data.frame(ccc)
for(i in 1:dim(ccc)[2]){
  names(ccc)[i] = paste(subset_group$업종[i])
}
ccc=ccc[8,]

subset_group1 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/경상남도/거창군.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group1) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc1=t(subset_group1)
ccc1=data.frame(ccc1)
for(i in 1:dim(ccc1)[2]){
  names(ccc1)[i] = paste(subset_group1$업종[i])
}
ccc1=ccc1[8,]

subset_group2 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/경상남도/고성군.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group2) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc2=t(subset_group2)
ccc2=data.frame(ccc2)
for(i in 1:dim(ccc2)[2]){
  names(ccc2)[i] = paste(subset_group2$업종[i])
}
ccc2=ccc2[8,]

subset_group3 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/경상남도/김해시.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group3) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc3=t(subset_group3)
ccc3=data.frame(ccc3)
for(i in 1:dim(ccc3)[2]){
  names(ccc3)[i] = paste(subset_group3$업종[i])
}
ccc3=ccc3[8,]

subset_group4 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/경상남도/남해군.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group4) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc4=t(subset_group4)
ccc4=data.frame(ccc4)
for(i in 1:dim(ccc4)[2]){
  names(ccc4)[i] = paste(subset_group4$업종[i])
}
ccc4=ccc4[8,]

subset_group5 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/경상남도/밀양시.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group5) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc5=t(subset_group5)
ccc5=data.frame(ccc5)
for(i in 1:dim(ccc5)[2]){
  names(ccc5)[i] = paste(subset_group5$업종[i])
}
ccc5=ccc5[8,]

subset_group6 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/경상남도/사천시.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group6) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc6=t(subset_group6)
ccc6=data.frame(ccc6)
for(i in 1:dim(ccc6)[2]){
  names(ccc6)[i] = paste(subset_group6$업종[i])
}
ccc6=ccc6[8,]

subset_group7 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/경상남도/산청군.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group7) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc7=t(subset_group7)
ccc7=data.frame(ccc7)
for(i in 1:dim(ccc7)[2]){
  names(ccc7)[i] = paste(subset_group7$업종[i])
}
ccc7=ccc7[8,]

subset_group8 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/경상남도/양산시.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group8) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc8=t(subset_group8)
ccc8=data.frame(ccc8)
for(i in 1:dim(ccc8)[2]){
  names(ccc8)[i] = paste(subset_group8$업종[i])
}
ccc8=ccc8[8,]

subset_group9 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/경상남도/의령군.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group9) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc9=t(subset_group9)
ccc9=data.frame(ccc9)
for(i in 1:dim(ccc9)[2]){
  names(ccc9)[i] = paste(subset_group9$업종[i])
}
ccc9=ccc9[8,]

subset_group10 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/경상남도/진주시.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group10) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc10=t(subset_group10)
ccc10=data.frame(ccc10)
for(i in 1:dim(ccc10)[2]){
  names(ccc10)[i] = paste(subset_group10$업종[i])
}
ccc10=ccc10[8,]


subset_group11 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/경상남도/창녕군.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group11) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc11=t(subset_group11)
ccc11=data.frame(ccc11)
for(i in 1:dim(ccc11)[2]){
  names(ccc11)[i] = paste(subset_group11$업종[i])
}
ccc11=ccc11[8,]

subset_group12 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/경상남도/통영시.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group12) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc12=t(subset_group12)
ccc12=data.frame(ccc12)
for(i in 1:dim(ccc12)[2]){
  names(ccc12)[i] = paste(subset_group12$업종[i])
}
ccc12=ccc12[8,]

subset_group13 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/경상남도/하동군.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group13) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc13=t(subset_group13)
ccc13=data.frame(ccc13)
for(i in 1:dim(ccc13)[2]){
  names(ccc13)[i] = paste(subset_group13$업종[i])
}
ccc13=ccc13[8,]

subset_group14 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/경상남도/함안군.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group14) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc14=t(subset_group14)
ccc14=data.frame(ccc14)
for(i in 1:dim(ccc14)[2]){
  names(ccc14)[i] = paste(subset_group14$업종[i])
}
ccc14=ccc14[8,]

subset_group15 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/경상남도/함양군.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group15) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc15=t(subset_group15)
ccc15=data.frame(ccc15)
for(i in 1:dim(ccc15)[2]){
  names(ccc15)[i] = paste(subset_group15$업종[i])
}
ccc15=ccc15[8,]

subset_group16 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/경상남도/합천군.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group16) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc16=t(subset_group16)
ccc16=data.frame(ccc16)
for(i in 1:dim(ccc16)[2]){
  names(ccc16)[i] = paste(subset_group16$업종[i])
}
ccc16=ccc16[8,]

subset_group17 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/경상남도/창원시.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group17) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc17=t(subset_group17)
ccc17=data.frame(ccc17)
for(i in 1:dim(ccc17)[2]){
  names(ccc17)[i] = paste(subset_group17$업종[i])
}
ccc17=ccc17[8,]


listset
as.numeric(unname(score_sgg["거제시"]))
거제시 = as.list(ccc)
거창군 = as.list(ccc1)
고성군 = as.list(ccc2)
김해시 = as.list(ccc3)
남해군 = as.list(ccc4)
밀양시= as.list(ccc5)
사천시= as.list(ccc6)
산청군= as.list(ccc7)
양산시= as.list(ccc8)
의령군= as.list(ccc9)
진주시= as.list(ccc10)
창녕군= as.list(ccc11)
통영시= as.list(ccc12)
하동군= as.list(ccc13)
함안군= as.list(ccc14)
함양군= as.list(ccc15)
합천군= as.list(ccc16)
창원시= as.list(ccc17)


경상남도 = list("거제시"=거제시,"거창군"=거창군,"고성군"=고성군,"김해시"=김해시,"남해군"=남해군,"밀양시"=밀양시,
            "사천시"=사천시,"산청군"=산청군,"양산시"=양산시,"의령군"=의령군,"진주시"=진주시,"창녕군"=창녕군,
            "통영시"=통영시,"하동군"=하동군,"함안군"=함안군,"함양군"=함양군,"합천군"=합천군,"창원시"=창원시)
FILE = NA
FILE_경기도 = list("경기도"=경기도)
FILE_광주 = list("광주광역시"=광주)
FILE_서울 = list("서울특별시"=서울)
FILE_강원도 = list("강원도"=강원도)
FILE_경상남도 = list("경상남도"=경상남도)

toJSON(FILE)
FILE = list(FILE_경기도,FILE_강원도,FILE_광주,FILE_서울)
write(FILE,"FILE.txt")

#---------------------------------------------------------------------------------------------------------------

subset_group = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/경상북도/경산시.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc=t(subset_group)
ccc=data.frame(ccc)
for(i in 1:dim(ccc)[2]){
  names(ccc)[i] = paste(subset_group$업종[i])
}
ccc=ccc[8,]

subset_group1 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/경상북도/경주시.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group1) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc1=t(subset_group1)
ccc1=data.frame(ccc1)
for(i in 1:dim(ccc1)[2]){
  names(ccc1)[i] = paste(subset_group1$업종[i])
}
ccc1=ccc1[8,]

subset_group2 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/경상북도/고령군.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group2) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc2=t(subset_group2)
ccc2=data.frame(ccc2)
for(i in 1:dim(ccc2)[2]){
  names(ccc2)[i] = paste(subset_group2$업종[i])
}
ccc2=ccc2[8,]

subset_group3 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/경상북도/구미시.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group3) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc3=t(subset_group3)
ccc3=data.frame(ccc3)
for(i in 1:dim(ccc3)[2]){
  names(ccc3)[i] = paste(subset_group3$업종[i])
}
ccc3=ccc3[8,]

subset_group4 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/경상북도/군위군.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group4) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc4=t(subset_group4)
ccc4=data.frame(ccc4)
for(i in 1:dim(ccc4)[2]){
  names(ccc4)[i] = paste(subset_group4$업종[i])
}
ccc4=ccc4[8,]

subset_group5 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/경상북도/김천시.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group5) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc5=t(subset_group5)
ccc5=data.frame(ccc5)
for(i in 1:dim(ccc5)[2]){
  names(ccc5)[i] = paste(subset_group5$업종[i])
}
ccc5=ccc5[8,]

subset_group6 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/경상북도/문경시.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group6) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc6=t(subset_group6)
ccc6=data.frame(ccc6)
for(i in 1:dim(ccc6)[2]){
  names(ccc6)[i] = paste(subset_group6$업종[i])
}
ccc6=ccc6[8,]

subset_group7 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/경상북도/봉화군.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group7) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc7=t(subset_group7)
ccc7=data.frame(ccc7)
for(i in 1:dim(ccc7)[2]){
  names(ccc7)[i] = paste(subset_group7$업종[i])
}
ccc7=ccc7[8,]

subset_group8 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/경상북도/상주시.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group8) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc8=t(subset_group8)
ccc8=data.frame(ccc8)
for(i in 1:dim(ccc8)[2]){
  names(ccc8)[i] = paste(subset_group8$업종[i])
}
ccc8=ccc8[8,]

subset_group9 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/경상북도/성주군.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group9) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc9=t(subset_group9)
ccc9=data.frame(ccc9)
for(i in 1:dim(ccc9)[2]){
  names(ccc9)[i] = paste(subset_group9$업종[i])
}
ccc9=ccc9[8,]

subset_group10 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/경상북도/안동시.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group10) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc10=t(subset_group10)
ccc10=data.frame(ccc10)
for(i in 1:dim(ccc10)[2]){
  names(ccc10)[i] = paste(subset_group10$업종[i])
}
ccc10=ccc10[8,]


subset_group11 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/경상북도/영덕군.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group11) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc11=t(subset_group11)
ccc11=data.frame(ccc11)
for(i in 1:dim(ccc11)[2]){
  names(ccc11)[i] = paste(subset_group11$업종[i])
}
ccc11=ccc11[8,]

subset_group12 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/경상북도/영양군.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group12) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc12=t(subset_group12)
ccc12=data.frame(ccc12)
for(i in 1:dim(ccc12)[2]){
  names(ccc12)[i] = paste(subset_group12$업종[i])
}
ccc12=ccc12[8,]

subset_group13 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/경상북도/영주시.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group13) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc13=t(subset_group13)
ccc13=data.frame(ccc13)
for(i in 1:dim(ccc13)[2]){
  names(ccc13)[i] = paste(subset_group13$업종[i])
}
ccc13=ccc13[8,]

subset_group14 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/경상북도/영천시.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group14) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc14=t(subset_group14)
ccc14=data.frame(ccc14)
for(i in 1:dim(ccc14)[2]){
  names(ccc14)[i] = paste(subset_group14$업종[i])
}
ccc14=ccc14[8,]

subset_group15 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/경상북도/예천군.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group15) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc15=t(subset_group15)
ccc15=data.frame(ccc15)
for(i in 1:dim(ccc15)[2]){
  names(ccc15)[i] = paste(subset_group15$업종[i])
}
ccc15=ccc15[8,]

subset_group16 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/경상북도/울릉군.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group16) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc16=t(subset_group16)
ccc16=data.frame(ccc16)
for(i in 1:dim(ccc16)[2]){
  names(ccc16)[i] = paste(subset_group16$업종[i])
}
ccc16=ccc16[8,]

subset_group17 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/경상북도/울진군.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group17) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc17=t(subset_group17)
ccc17=data.frame(ccc17)
for(i in 1:dim(ccc17)[2]){
  names(ccc17)[i] = paste(subset_group17$업종[i])
}
ccc17=ccc17[8,]

subset_group18 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/경상북도/의성군.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group18) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc18=t(subset_group18)
ccc18=data.frame(ccc18)
for(i in 1:dim(ccc18)[2]){
  names(ccc18)[i] = paste(subset_group18$업종[i])
}
ccc18=ccc18[8,]

subset_group19 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/경상북도/청도군.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group19) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc19=t(subset_group19)
ccc19=data.frame(ccc19)
for(i in 1:dim(ccc19)[2]){
  names(ccc19)[i] = paste(subset_group19$업종[i])
}
ccc19=ccc19[8,]

subset_group20 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/경상북도/청송군.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group20) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc20=t(subset_group20)
ccc20=data.frame(ccc20)
for(i in 1:dim(ccc20)[2]){
  names(ccc20)[i] = paste(subset_group20$업종[i])
}
ccc20=ccc20[8,]

subset_group21 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/경상북도/칠곡군.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group21) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc21=t(subset_group21)
ccc21=data.frame(ccc21)
for(i in 1:dim(ccc21)[2]){
  names(ccc21)[i] = paste(subset_group21$업종[i])
}
ccc21=ccc21[8,]

subset_group22 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/경상북도/포항시.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group22) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc22=t(subset_group22)
ccc22=data.frame(ccc22)
for(i in 1:dim(ccc22)[2]){
  names(ccc22)[i] = paste(subset_group22$업종[i])
}
ccc22=ccc22[8,]

경산시 = as.list(ccc)
경주시 = as.list(ccc1)
고령군 = as.list(ccc2)
구미시 = as.list(ccc3)
군위군 = as.list(ccc4)
김천시= as.list(ccc5)
문경시= as.list(ccc6)
봉화군= as.list(ccc7)
상주시= as.list(ccc8)
성주군= as.list(ccc9)
안동시= as.list(ccc10)
영덕군= as.list(ccc11)
영양군=as.list(ccc12)
영주시= as.list(ccc13)
영천시= as.list(ccc14)
예천군= as.list(ccc15)
울릉군= as.list(ccc16)
울진군= as.list(ccc17)
의성군= as.list(ccc18)
청도군= as.list(ccc19)
청송군= as.list(ccc20)
칠곡군= as.list(ccc21)
포항시= as.list(ccc22)


경상북도 = list("경산시"=경산시, "경주시"=경주시, "고령군" =고령군, "구미시"=구미시, "군위군"=군위군, "김천시"=김천시,
            "문경시"=문경시, "봉화군"=봉화군, "상주시"=상주시, "성주군"=성주군, "안동시"=안동시, "영덕군"=영덕군,
            "영양군"=영양군, "영주시"=영주시, "영천시"=영천시, "예천군" = 예천군, "울릉군" =울릉군,
            "울진군"=울진군, "의성군"=의성군, "청도군"=청도군, "청송군"=청송군, "칠곡군"=칠곡군, "포항시"=포항시)

FILE = NA
FILE_경기도 = list("경기도"=경기도)
FILE_광주 = list("광주광역시"=광주)
FILE_서울 = list("서울특별시"=서울)
FILE_강원도 = list("강원도"=강원도)
FILE_경상북도 = list("경상북도"=경상북도)
FILE = list(FILE_경기도,FILE_강원도,FILE_광주,FILE_서울)
write(FILE,"FILE.txt")

#---------------------------------------------------------------------------------------------------------------

subset_group = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/대구광역시/남구.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc=t(subset_group)
ccc=data.frame(ccc)
for(i in 1:dim(ccc)[2]){
  names(ccc)[i] = paste(subset_group$업종[i])
}
ccc=ccc[8,]

subset_group1 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/대구광역시/달서구.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group1) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc1=t(subset_group1)
ccc1=data.frame(ccc1)
for(i in 1:dim(ccc1)[2]){
  names(ccc1)[i] = paste(subset_group1$업종[i])
}
ccc1=ccc1[8,]

subset_group2 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/대구광역시/달성군.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group2) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc2=t(subset_group2)
ccc2=data.frame(ccc2)
for(i in 1:dim(ccc2)[2]){
  names(ccc2)[i] = paste(subset_group2$업종[i])
}
ccc2=ccc2[8,]

subset_group3 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/대구광역시/동구.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group3) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc3=t(subset_group3)
ccc3=data.frame(ccc3)
for(i in 1:dim(ccc3)[2]){
  names(ccc3)[i] = paste(subset_group3$업종[i])
}
ccc3=ccc3[8,]

subset_group4 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/대구광역시/북구.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group4) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc4=t(subset_group4)
ccc4=data.frame(ccc4)
for(i in 1:dim(ccc4)[2]){
  names(ccc4)[i] = paste(subset_group4$업종[i])
}
ccc4=ccc4[8,]

subset_group5 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/대구광역시/서구.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group5) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc5=t(subset_group5)
ccc5=data.frame(ccc5)
for(i in 1:dim(ccc5)[2]){
  names(ccc5)[i] = paste(subset_group5$업종[i])
}
ccc5=ccc5[8,]

subset_group6 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/대구광역시/수성구.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group6) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc6=t(subset_group6)
ccc6=data.frame(ccc6)
for(i in 1:dim(ccc6)[2]){
  names(ccc6)[i] = paste(subset_group6$업종[i])
}
ccc6=ccc6[8,]

subset_group7 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/대구광역시/중구.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group7) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc7=t(subset_group7)
ccc7=data.frame(ccc7)
for(i in 1:dim(ccc7)[2]){
  names(ccc7)[i] = paste(subset_group7$업종[i])
}
ccc7 = ccc7[8,]  
남구 = as.list(ccc)
달서구 = as.list(ccc1)
달성군 = as.list(ccc2)
동구 = as.list(ccc3)
북구 = as.list(ccc4)
서구= as.list(ccc5)
수성구= as.list(ccc6)
중구= as.list(ccc7)

대구광역시 = list("남구"=남구,"달서구"=달서구,"달성군"=달성군, "동구"=동구,"북구"=북구,"서구"=서구,"수성구"=수성구,"중구"=중구  )

FILE_대구 = list("대구광역시"=대구광역시)

#-------------------------------------------------------------------------------------------------


subset_group = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/대전광역시/대덕구.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc=t(subset_group)
ccc=data.frame(ccc)
for(i in 1:dim(ccc)[2]){
  names(ccc)[i] = paste(subset_group$업종[i])
}
ccc=ccc[8,]

subset_group1 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/대전광역시/동구.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group1) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc1=t(subset_group1)
ccc1=data.frame(ccc1)
for(i in 1:dim(ccc1)[2]){
  names(ccc1)[i] = paste(subset_group1$업종[i])
}
ccc1=ccc1[8,]

subset_group2 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/대전광역시/서구.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group2) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc2=t(subset_group2)
ccc2=data.frame(ccc2)
for(i in 1:dim(ccc2)[2]){
  names(ccc2)[i] = paste(subset_group2$업종[i])
}
ccc2=ccc2[8,]

subset_group3 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/대전광역시/유성구.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group3) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc3=t(subset_group3)
ccc3=data.frame(ccc3)
for(i in 1:dim(ccc3)[2]){
  names(ccc3)[i] = paste(subset_group3$업종[i])
}
ccc3=ccc3[8,]

subset_group4 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/대전광역시/중구.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group4) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc4=t(subset_group4)
ccc4=data.frame(ccc4)
for(i in 1:dim(ccc4)[2]){
  names(ccc4)[i] = paste(subset_group4$업종[i])
}
ccc4=ccc4[8,]

대덕구 = as.list(ccc)
동구 = as.list(ccc1)
서구 = as.list(ccc2)
유성구 = as.list(ccc3)
중구 = as.list(ccc4)


대전광역시 = list("대덕구"=대덕구, "동구"=동구,"서구"=서구,"유성구"=유성구,"중구"=중구)

FILE_대전 = list("대전광역시"=대전광역시)

FILE_경상북도 = list("경상북도"=경상북도)
FILE = list(FILE_경기도,FILE_강원도,FILE_광주,FILE_서울)
write(FILE,"FILE.txt")
#-----------------------------------------------------------------------------------------------------

subset_group = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/부산광역시/강서구.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc=t(subset_group)
ccc=data.frame(ccc)
for(i in 1:dim(ccc)[2]){
  names(ccc)[i] = paste(subset_group$업종[i])
}
ccc=ccc[8,]

subset_group1 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/부산광역시/금정구.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group1) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc1=t(subset_group1)
ccc1=data.frame(ccc1)
for(i in 1:dim(ccc1)[2]){
  names(ccc1)[i] = paste(subset_group1$업종[i])
}
ccc1=ccc1[8,]

subset_group2 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/부산광역시/기장군.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group2) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc2=t(subset_group2)
ccc2=data.frame(ccc2)
for(i in 1:dim(ccc2)[2]){
  names(ccc2)[i] = paste(subset_group2$업종[i])
}
ccc2=ccc2[8,]

subset_group3 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/부산광역시/남구.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group3) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc3=t(subset_group3)
ccc3=data.frame(ccc3)
for(i in 1:dim(ccc3)[2]){
  names(ccc3)[i] = paste(subset_group3$업종[i])
}
ccc3=ccc3[8,]

subset_group4 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/부산광역시/동구.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group4) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc4=t(subset_group4)
ccc4=data.frame(ccc4)
for(i in 1:dim(ccc4)[2]){
  names(ccc4)[i] = paste(subset_group4$업종[i])
}
ccc4=ccc4[8,]

subset_group5 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/부산광역시/동래구.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group5) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc5=t(subset_group5)
ccc5=data.frame(ccc5)
for(i in 1:dim(ccc5)[2]){
  names(ccc5)[i] = paste(subset_group5$업종[i])
}
ccc5=ccc5[8,]

subset_group6 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/부산광역시/부산진구.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group6) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc6=t(subset_group6)
ccc6=data.frame(ccc6)
for(i in 1:dim(ccc6)[2]){
  names(ccc6)[i] = paste(subset_group6$업종[i])
}
ccc6=ccc6[8,]

subset_group7 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/부산광역시/북구.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group7) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc7=t(subset_group7)
ccc7=data.frame(ccc7)
for(i in 1:dim(ccc7)[2]){
  names(ccc7)[i] = paste(subset_group7$업종[i])
}
ccc7=ccc7[8,]

subset_group8 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/부산광역시/사상구.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group8) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc8=t(subset_group8)
ccc8=data.frame(ccc8)
for(i in 1:dim(ccc8)[2]){
  names(ccc8)[i] = paste(subset_group8$업종[i])
}
ccc8=ccc8[8,]

subset_group9 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/부산광역시/사하구.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group9) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc9=t(subset_group9)
ccc9=data.frame(ccc9)
for(i in 1:dim(ccc9)[2]){
  names(ccc9)[i] = paste(subset_group9$업종[i])
}
ccc9=ccc9[8,]

subset_group10 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/부산광역시/서구.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group10) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc10=t(subset_group10)
ccc10=data.frame(ccc10)
for(i in 1:dim(ccc10)[2]){
  names(ccc10)[i] = paste(subset_group10$업종[i])
}
ccc10=ccc10[8,]


subset_group11 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/부산광역시/수영구.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group11) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc11=t(subset_group11)
ccc11=data.frame(ccc11)
for(i in 1:dim(ccc11)[2]){
  names(ccc11)[i] = paste(subset_group11$업종[i])
}
ccc11=ccc11[8,]

subset_group12 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/부산광역시/연제구.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group12) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc12=t(subset_group12)
ccc12=data.frame(ccc12)
for(i in 1:dim(ccc12)[2]){
  names(ccc12)[i] = paste(subset_group12$업종[i])
}
ccc12=ccc12[8,]

subset_group13 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/부산광역시/영도구.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group13) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc13=t(subset_group13)
ccc13=data.frame(ccc13)
for(i in 1:dim(ccc13)[2]){
  names(ccc13)[i] = paste(subset_group13$업종[i])
}
ccc13=ccc13[8,]

subset_group14 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/부산광역시/중구.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group14) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc14=t(subset_group14)
ccc14=data.frame(ccc14)
for(i in 1:dim(ccc14)[2]){
  names(ccc14)[i] = paste(subset_group14$업종[i])
}
ccc14=ccc14[8,]

subset_group15 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/부산광역시/해운대구.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group15) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc15=t(subset_group15)
ccc15=data.frame(ccc15)
for(i in 1:dim(ccc15)[2]){
  names(ccc15)[i] = paste(subset_group15$업종[i])
}
ccc15=ccc15[8,]


강서구 = as.list(ccc)
금정구 = as.list(ccc1)
기장군 = as.list(ccc2)
남구 = as.list(ccc3)
동구 = as.list(ccc4)
동래구= as.list(ccc5)
부산진구= as.list(ccc6)
북구 = as.list(ccc7)
사상구= as.list(ccc8)
사하구= as.list(ccc9)
서구= as.list(ccc10)
수영구= as.list(ccc11)
연제구=as.list(ccc12)
영도구= as.list(ccc13)
중구= as.list(ccc14)
해운대구= as.list(ccc15)


부산광역시 = list("강서구"=강서구,"금정구"=금정구,"기장군"=기장군,"남구"=남구, "동구"=동구,"동래구"=동래구,
             "부산진구"=부산진구, "북구"=북구,"사상구"=사상구,"사하구"=사하구,"서구"=서구,"수영구"=수영구,   
             "연제구"=연제구,"영도구"=영도구,"중구"=중구, "해운대구"=해운대구)

FILE_부산광역시 = list("부산광역시"=부산광역시)

#--------------------------------------------------------------------------------------------------------------------




subset_group = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/인천광역시/강화군.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc=t(subset_group)
ccc=data.frame(ccc)
for(i in 1:dim(ccc)[2]){
  names(ccc)[i] = paste(subset_group$업종[i])
}
ccc=ccc[8,]

subset_group1 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/인천광역시/계양구.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group1) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc1=t(subset_group1)
ccc1=data.frame(ccc1)
for(i in 1:dim(ccc1)[2]){
  names(ccc1)[i] = paste(subset_group1$업종[i])
}
ccc1=ccc1[8,]

subset_group2 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/인천광역시/남구.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group2) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc2=t(subset_group2)
ccc2=data.frame(ccc2)
for(i in 1:dim(ccc2)[2]){
  names(ccc2)[i] = paste(subset_group2$업종[i])
}
ccc2=ccc2[8,]

subset_group3 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/인천광역시/남동구.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group3) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc3=t(subset_group3)
ccc3=data.frame(ccc3)
for(i in 1:dim(ccc3)[2]){
  names(ccc3)[i] = paste(subset_group3$업종[i])
}
ccc3=ccc3[8,]

subset_group4 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/인천광역시/동구.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group4) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc4=t(subset_group4)
ccc4=data.frame(ccc4)
for(i in 1:dim(ccc4)[2]){
  names(ccc4)[i] = paste(subset_group4$업종[i])
}
ccc4=ccc4[8,]

subset_group5 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/인천광역시/부평구.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group5) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc5=t(subset_group5)
ccc5=data.frame(ccc5)
for(i in 1:dim(ccc5)[2]){
  names(ccc5)[i] = paste(subset_group5$업종[i])
}
ccc5=ccc5[8,]

subset_group6 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/인천광역시/서구.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group6) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc6=t(subset_group6)
ccc6=data.frame(ccc6)
for(i in 1:dim(ccc6)[2]){
  names(ccc6)[i] = paste(subset_group6$업종[i])
}
ccc6=ccc6[8,]

subset_group7 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/인천광역시/연수구.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group7) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc7=t(subset_group7)
ccc7=data.frame(ccc7)
for(i in 1:dim(ccc7)[2]){
  names(ccc7)[i] = paste(subset_group7$업종[i])
}
ccc7=ccc7[8,]

subset_group8 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/인천광역시/옹진군.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group8) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc8=t(subset_group8)
ccc8=data.frame(ccc8)
for(i in 1:dim(ccc8)[2]){
  names(ccc8)[i] = paste(subset_group8$업종[i])
}
ccc8=ccc8[8,]

subset_group9 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/인천광역시/중구.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group9) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc9=t(subset_group9)
ccc9=data.frame(ccc9)
for(i in 1:dim(ccc9)[2]){
  names(ccc9)[i] = paste(subset_group9$업종[i])
}
ccc9=ccc9[8,]

강화군 = as.list(ccc)
계양구 = as.list(ccc1)
남구 = as.list(ccc2)
남동구 = as.list(ccc3)
동구 = as.list(ccc4)
부평구= as.list(ccc5)
서구= as.list(ccc6)
연수구 = as.list(ccc7)
옹진군= as.list(ccc8)
중구= as.list(ccc9)


인천광역시 = list("강화군"=강화군,"계양구"=계양구,"남구"=남구,"남동구"=남동구,"동구"=동구,"부평구"=부평구,"서구"=서구,
             "연수구"=연수구, "옹진군"=옹진군, "중구"=중구)

FILE_인천광역시 = list("인천광역시"=인천광역시)
#----------------------------------------------------------------------------------------------------------------

subset_group = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/전라남도/강진군.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc=t(subset_group)
ccc=data.frame(ccc)
for(i in 1:dim(ccc)[2]){
  names(ccc)[i] = paste(subset_group$업종[i])
}
ccc=ccc[8,]

subset_group1 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/전라남도/고흥군.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group1) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc1=t(subset_group1)
ccc1=data.frame(ccc1)
for(i in 1:dim(ccc1)[2]){
  names(ccc1)[i] = paste(subset_group1$업종[i])
}
ccc1=ccc1[8,]

subset_group2 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/전라남도/곡성군.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group2) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc2=t(subset_group2)
ccc2=data.frame(ccc2)
for(i in 1:dim(ccc2)[2]){
  names(ccc2)[i] = paste(subset_group2$업종[i])
}
ccc2=ccc2[8,]

subset_group3 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/전라남도/광양시.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group3) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc3=t(subset_group3)
ccc3=data.frame(ccc3)
for(i in 1:dim(ccc3)[2]){
  names(ccc3)[i] = paste(subset_group3$업종[i])
}
ccc3=ccc3[8,]

subset_group4 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/전라남도/구례군.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group4) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc4=t(subset_group4)
ccc4=data.frame(ccc4)
for(i in 1:dim(ccc4)[2]){
  names(ccc4)[i] = paste(subset_group4$업종[i])
}
ccc4=ccc4[8,]

subset_group5 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/전라남도/나주시.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group5) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc5=t(subset_group5)
ccc5=data.frame(ccc5)
for(i in 1:dim(ccc5)[2]){
  names(ccc5)[i] = paste(subset_group5$업종[i])
}
ccc5=ccc5[8,]

subset_group6 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/전라남도/담양군.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group6) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc6=t(subset_group6)
ccc6=data.frame(ccc6)
for(i in 1:dim(ccc6)[2]){
  names(ccc6)[i] = paste(subset_group6$업종[i])
}
ccc6=ccc6[8,]

subset_group7 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/전라남도/목포시.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group7) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc7=t(subset_group7)
ccc7=data.frame(ccc7)
for(i in 1:dim(ccc7)[2]){
  names(ccc7)[i] = paste(subset_group7$업종[i])
}
ccc7=ccc7[8,]

subset_group8 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/전라남도/무안군.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group8) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc8=t(subset_group8)
ccc8=data.frame(ccc8)
for(i in 1:dim(ccc8)[2]){
  names(ccc8)[i] = paste(subset_group8$업종[i])
}
ccc8=ccc8[8,]

subset_group9 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/전라남도/보성군.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group9) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc9=t(subset_group9)
ccc9=data.frame(ccc9)
for(i in 1:dim(ccc9)[2]){
  names(ccc9)[i] = paste(subset_group9$업종[i])
}
ccc9=ccc9[8,]

subset_group10 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/전라남도/순천시.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group10) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc10=t(subset_group10)
ccc10=data.frame(ccc10)
for(i in 1:dim(ccc10)[2]){
  names(ccc10)[i] = paste(subset_group10$업종[i])
}
ccc10=ccc10[8,]


subset_group11 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/전라남도/신안군.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group11) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc11=t(subset_group11)
ccc11=data.frame(ccc11)
for(i in 1:dim(ccc11)[2]){
  names(ccc11)[i] = paste(subset_group11$업종[i])
}
ccc11=ccc11[8,]

subset_group12 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/전라남도/여수시.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group12) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc12=t(subset_group12)
ccc12=data.frame(ccc12)
for(i in 1:dim(ccc12)[2]){
  names(ccc12)[i] = paste(subset_group12$업종[i])
}
ccc12=ccc12[8,]

subset_group13 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/전라남도/영광군.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group13) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc13=t(subset_group13)
ccc13=data.frame(ccc13)
for(i in 1:dim(ccc13)[2]){
  names(ccc13)[i] = paste(subset_group13$업종[i])
}
ccc13=ccc13[8,]

subset_group14 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/전라남도/영암군.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group14) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc14=t(subset_group14)
ccc14=data.frame(ccc14)
for(i in 1:dim(ccc14)[2]){
  names(ccc14)[i] = paste(subset_group14$업종[i])
}
ccc14=ccc14[8,]

subset_group15 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/전라남도/완도군.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group15) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc15=t(subset_group15)
ccc15=data.frame(ccc15)
for(i in 1:dim(ccc15)[2]){
  names(ccc15)[i] = paste(subset_group15$업종[i])
}
ccc15=ccc15[8,]

subset_group16 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/전라남도/장성군.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group16) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc16=t(subset_group16)
ccc16=data.frame(ccc16)
for(i in 1:dim(ccc16)[2]){
  names(ccc16)[i] = paste(subset_group16$업종[i])
}
ccc16=ccc16[8,]

subset_group17 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/전라남도/장흥군.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group17) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc17=t(subset_group17)
ccc17=data.frame(ccc17)
for(i in 1:dim(ccc17)[2]){
  names(ccc17)[i] = paste(subset_group17$업종[i])
}
ccc17=ccc17[8,]

subset_group18 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/전라남도/진도군.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group18) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc18=t(subset_group18)
ccc18=data.frame(ccc18)
for(i in 1:dim(ccc18)[2]){
  names(ccc18)[i] = paste(subset_group18$업종[i])
}
ccc18=ccc18[8,]

subset_group19 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/전라남도/함평군.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group19) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc19=t(subset_group19)
ccc19=data.frame(ccc19)
for(i in 1:dim(ccc19)[2]){
  names(ccc19)[i] = paste(subset_group19$업종[i])
}
ccc19=ccc19[8,]

subset_group20 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/전라남도/해남군.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group20) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc20=t(subset_group20)
ccc20=data.frame(ccc20)
for(i in 1:dim(ccc20)[2]){
  names(ccc20)[i] = paste(subset_group20$업종[i])
}
ccc20=ccc20[8,]

subset_group21 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/전라남도/화순군.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group21) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc21=t(subset_group21)
ccc21=data.frame(ccc21)
for(i in 1:dim(ccc21)[2]){
  names(ccc21)[i] = paste(subset_group21$업종[i])
}
ccc21=ccc21[8,]


강진군 = as.list(ccc)
고흥군 = as.list(ccc1)
곡성군 = as.list(ccc2)
광양시 = as.list(ccc3)
구례군 = as.list(ccc4)
나주시= as.list(ccc5)
담양군= as.list(ccc6)
목포시 = as.list(ccc7)
무안군= as.list(ccc8)
보성군= as.list(ccc9)
순천시= as.list(ccc10)
신안군= as.list(ccc11)
여수시= as.list(ccc12)
영광군= as.list(ccc13)
영암군= as.list(ccc14)
완도군= as.list(ccc15)
장성군= as.list(ccc16)
장흥군= as.list(ccc17)
진도군= as.list(ccc18)
함평군= as.list(ccc19)
해남군= as.list(ccc20)
화순군= as.list(ccc21)

전라남도 = list("강진군"=강진군,"고흥군"=고흥군,"곡성군"=곡성군,"광양시"=광양시,"구례군"=구례군,"나주시"=나주시,"담양군"=담양군,
            "목포시"=목포시,"무안군"=무안군,"보성군"=보성군,"순천시"=순천시,"신안군"=신안군,"여수시"=여수시,"영광군"=영광군,
            "영암군"=영암군,"완도군"=완도군,"장성군"=장성군,"장흥군"=장흥군,"진도군"=진도군,"함평군"=함평군,"해남군"=해남군,
            "화순군"=화순군)

FILE_전라남도 = list("전라남도"=전라남도)


#----------------------------------------------------------------------------------------------------------------



subset_group = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/전라북도/고창군.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc=t(subset_group)
ccc=data.frame(ccc)
for(i in 1:dim(ccc)[2]){
  names(ccc)[i] = paste(subset_group$업종[i])
}
ccc=ccc[8,]

subset_group1 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/전라북도/군산시.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group1) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc1=t(subset_group1)
ccc1=data.frame(ccc1)
for(i in 1:dim(ccc1)[2]){
  names(ccc1)[i] = paste(subset_group1$업종[i])
}
ccc1=ccc1[8,]

subset_group2 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/전라북도/김제시.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group2) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc2=t(subset_group2)
ccc2=data.frame(ccc2)
for(i in 1:dim(ccc2)[2]){
  names(ccc2)[i] = paste(subset_group2$업종[i])
}
ccc2=ccc2[8,]

subset_group3 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/전라북도/남원시.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group3) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc3=t(subset_group3)
ccc3=data.frame(ccc3)
for(i in 1:dim(ccc3)[2]){
  names(ccc3)[i] = paste(subset_group3$업종[i])
}
ccc3=ccc3[8,]

subset_group4 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/전라북도/무주군.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group4) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc4=t(subset_group4)
ccc4=data.frame(ccc4)
for(i in 1:dim(ccc4)[2]){
  names(ccc4)[i] = paste(subset_group4$업종[i])
}
ccc4=ccc4[8,]

subset_group5 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/전라북도/부안군.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group5) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc5=t(subset_group5)
ccc5=data.frame(ccc5)
for(i in 1:dim(ccc5)[2]){
  names(ccc5)[i] = paste(subset_group5$업종[i])
}
ccc5=ccc5[8,]

subset_group6 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/전라북도/순창군.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group6) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc6=t(subset_group6)
ccc6=data.frame(ccc6)
for(i in 1:dim(ccc6)[2]){
  names(ccc6)[i] = paste(subset_group6$업종[i])
}
ccc6=ccc6[8,]

subset_group7 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/전라북도/완주군.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group7) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc7=t(subset_group7)
ccc7=data.frame(ccc7)
for(i in 1:dim(ccc7)[2]){
  names(ccc7)[i] = paste(subset_group7$업종[i])
}
ccc7=ccc7[8,]

subset_group8 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/전라북도/익산시.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group8) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc8=t(subset_group8)
ccc8=data.frame(ccc8)
for(i in 1:dim(ccc8)[2]){
  names(ccc8)[i] = paste(subset_group8$업종[i])
}
ccc8=ccc8[8,]

subset_group9 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/전라북도/임실군.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group9) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc9=t(subset_group9)
ccc9=data.frame(ccc9)
for(i in 1:dim(ccc9)[2]){
  names(ccc9)[i] = paste(subset_group9$업종[i])
}
ccc9=ccc9[8,]

subset_group10 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/전라북도/장수군.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group10) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc10=t(subset_group10)
ccc10=data.frame(ccc10)
for(i in 1:dim(ccc10)[2]){
  names(ccc10)[i] = paste(subset_group10$업종[i])
}
ccc10=ccc10[8,]


subset_group11 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/전라북도/정읍시.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group11) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc11=t(subset_group11)
ccc11=data.frame(ccc11)
for(i in 1:dim(ccc11)[2]){
  names(ccc11)[i] = paste(subset_group11$업종[i])
}
ccc11=ccc11[8,]

subset_group12 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/전라북도/진안군.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group12) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc12=t(subset_group12)
ccc12=data.frame(ccc12)
for(i in 1:dim(ccc12)[2]){
  names(ccc12)[i] = paste(subset_group12$업종[i])
}
ccc12=ccc12[8,]

subset_group13 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/전라북도/전주시.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group13) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc13=t(subset_group13)
ccc13=data.frame(ccc13)
for(i in 1:dim(ccc13)[2]){
  names(ccc13)[i] = paste(subset_group13$업종[i])
}
ccc13=ccc13[8,]



고창군 = as.list(ccc)
군산시 = as.list(ccc1)
김제시 = as.list(ccc2)
남원시 = as.list(ccc3)
무주군 = as.list(ccc4)
부안군= as.list(ccc5)
순창군= as.list(ccc6)
완주군 = as.list(ccc7)
익산시= as.list(ccc8)
임실군= as.list(ccc9)
장수군= as.list(ccc10)
정읍시= as.list(ccc11)
진안군= as.list(ccc12)
전주시= as.list(ccc13)

전라북도 = list("고창군"=고창군,"군산시"=군산시,"김제시"=김제시,"남원시"=남원시,"무주군"=무주군, "부안군"=부안군,"순창군"=순창군,
            "완주군"=완주군,"익산시"=익산시,"임실군"=임실군,"장수군"=장수군,"정읍시"=정읍시,"진안군"=진안군,"전주시"=전주시)

FILE_전라북도 = list("전라북도"=전라북도)
toJSON(FILE_전라북도)
#----------------------------------------------------------------------------------------------------------------



subset_group = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/충청남도/계룡시.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc=t(subset_group)
ccc=data.frame(ccc)
for(i in 1:dim(ccc)[2]){
  names(ccc)[i] = paste(subset_group$업종[i])
}
ccc=ccc[8,]

subset_group1 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/충청남도/공주시.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group1) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc1=t(subset_group1)
ccc1=data.frame(ccc1)
for(i in 1:dim(ccc1)[2]){
  names(ccc1)[i] = paste(subset_group1$업종[i])
}
ccc1=ccc1[8,]

subset_group2 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/충청남도/금산군.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group2) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc2=t(subset_group2)
ccc2=data.frame(ccc2)
for(i in 1:dim(ccc2)[2]){
  names(ccc2)[i] = paste(subset_group2$업종[i])
}
ccc2=ccc2[8,]

subset_group3 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/충청남도/논산시.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group3) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc3=t(subset_group3)
ccc3=data.frame(ccc3)
for(i in 1:dim(ccc3)[2]){
  names(ccc3)[i] = paste(subset_group3$업종[i])
}
ccc3=ccc3[8,]

subset_group4 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/충청남도/당진시.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group4) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc4=t(subset_group4)
ccc4=data.frame(ccc4)
for(i in 1:dim(ccc4)[2]){
  names(ccc4)[i] = paste(subset_group4$업종[i])
}
ccc4=ccc4[8,]

subset_group5 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/충청남도/보령시.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group5) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc5=t(subset_group5)
ccc5=data.frame(ccc5)
for(i in 1:dim(ccc5)[2]){
  names(ccc5)[i] = paste(subset_group5$업종[i])
}
ccc5=ccc5[8,]

subset_group6 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/충청남도/부여군.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group6) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc6=t(subset_group6)
ccc6=data.frame(ccc6)
for(i in 1:dim(ccc6)[2]){
  names(ccc6)[i] = paste(subset_group6$업종[i])
}
ccc6=ccc6[8,]

subset_group7 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/충청남도/서산시.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group7) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc7=t(subset_group7)
ccc7=data.frame(ccc7)
for(i in 1:dim(ccc7)[2]){
  names(ccc7)[i] = paste(subset_group7$업종[i])
}
ccc7=ccc7[8,]

subset_group8 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/충청남도/서천군.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group8) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc8=t(subset_group8)
ccc8=data.frame(ccc8)
for(i in 1:dim(ccc8)[2]){
  names(ccc8)[i] = paste(subset_group8$업종[i])
}
ccc8=ccc8[8,]

subset_group9 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/충청남도/아산시.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group9) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc9=t(subset_group9)
ccc9=data.frame(ccc9)
for(i in 1:dim(ccc9)[2]){
  names(ccc9)[i] = paste(subset_group9$업종[i])
}
ccc9=ccc9[8,]

subset_group10 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/충청남도/예산군.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group10) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc10=t(subset_group10)
ccc10=data.frame(ccc10)
for(i in 1:dim(ccc10)[2]){
  names(ccc10)[i] = paste(subset_group10$업종[i])
}
ccc10=ccc10[8,]


subset_group11 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/충청남도/청양군.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group11) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc11=t(subset_group11)
ccc11=data.frame(ccc11)
for(i in 1:dim(ccc11)[2]){
  names(ccc11)[i] = paste(subset_group11$업종[i])
}
ccc11=ccc11[8,]

subset_group12 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/충청남도/태안군.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group12) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc12=t(subset_group12)
ccc12=data.frame(ccc12)
for(i in 1:dim(ccc12)[2]){
  names(ccc12)[i] = paste(subset_group12$업종[i])
}
ccc12=ccc12[8,]

subset_group13 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/충청남도/홍성군.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group13) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc13=t(subset_group13)
ccc13=data.frame(ccc13)
for(i in 1:dim(ccc13)[2]){
  names(ccc13)[i] = paste(subset_group13$업종[i])
}
ccc13=ccc13[8,]

subset_group14 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/충청남도/천안시.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group14) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc14=t(subset_group14)
ccc14=data.frame(ccc14)
for(i in 1:dim(ccc14)[2]){
  names(ccc14)[i] = paste(subset_group14$업종[i])
}
ccc14=ccc14[8,]

계룡시 = as.list(ccc)
공주시 = as.list(ccc1)
금산군 = as.list(ccc2)
논산시 = as.list(ccc3)
당진시 = as.list(ccc4)
보령시= as.list(ccc5)
부여군= as.list(ccc6)
서산시 = as.list(ccc7)
서천군= as.list(ccc8)
아산시= as.list(ccc9)
예산군= as.list(ccc10)
청양군= as.list(ccc11)
태안군= as.list(ccc12)
홍성군= as.list(ccc13)
천안시= as.list(ccc14)

충청남도 = list("계룡시"=계룡시,"공주시"=공주시,"금산군"=금산군,"논산시"=논산시,"당진시"=당진시,"보령시"=보령시, 
            "부여군"=부여군,"서산시"=서산시,"서천군"=서천군,"아산시"=아산시,"예산군"=예산군,"청양군"=청양군,"태안군"=태안군, 
            "홍성군"=홍성군,"천안시"=천안시)

FILE_충청남도 = list("충청남도"=충청남도)

#----------------------------------------------------------------------------------------------------------------


subset_group = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/제주도/서귀포시.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc=t(subset_group)
ccc=data.frame(ccc)
for(i in 1:dim(ccc)[2]){
  names(ccc)[i] = paste(subset_group$업종[i])
}
ccc=ccc[8,]

subset_group1 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/제주도/제주시.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group1) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc1=t(subset_group1)
ccc1=data.frame(ccc1)
for(i in 1:dim(ccc1)[2]){
  names(ccc1)[i] = paste(subset_group1$업종[i])
}
ccc1=ccc1[8,]

서귀포시 = as.list(ccc)
제주시 = as.list(ccc1)

제주도 = list("서귀포시"=서귀포시,"제주시"=제주시)

FILE_제주도 = list("제주도"=제주도)
#-------------------------------------------------------------------------------------------------------------
filelist = dir("C:/Users/abc/Desktop/hanium/201706/세종특별자치시",pattern=".csv")
#tables = lapply(paste("../data/", wide, "/", date, "/", city,"/",filelist,sep=""),read.csv,header=T)
세종 = do.call(rbind,lapply(paste("C:/Users/abc/Desktop/hanium/201706/세종특별자치시/",filelist,sep=""),read.csv,header=T))
head(세종)
listset = unique(세종$시군구명)
listset = unlist(listset)
length(listset)

subset_group = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/세종시/세종특별자치시.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc=t(subset_group)
ccc=data.frame(ccc)
for(i in 1:dim(ccc)[2]){
  names(ccc)[i] = paste(subset_group$업종[i])
}
ccc=ccc[8,]


세종 = as.list(ccc)

세종 = list("세종특별자치시"=세종)

FILE_세종 = list("세종특별자치시"=세종)

#----------------------------------------------------------------------------------------------------------------
filelist = dir("C:/Users/abc/Desktop/hanium/201706/대전광역시",pattern=".csv")
#tables = lapply(paste("../data/", wide, "/", date, "/", city,"/",filelist,sep=""),read.csv,header=T)
대전광역시 = do.call(rbind,lapply(paste("C:/Users/abc/Desktop/hanium/201706/대전광역시/",filelist,sep=""),read.csv,header=T))
head(대전광역시)
listset = unique(대전광역시$시군구명)
listset = unlist(listset)
length(listset)

sgg = table(대전광역시$시군구명)
sgg["천안시"] = sgg[12]+sgg[13]
sgg=sgg[c(-12,-13)]
sgg=sgg[sgg != 0]
listset = names(sgg)
score_sgg = round(((sum(sgg)-sgg) / (sum(sgg)) * 100 / (length(sgg)-1)),3)
length(listset)
subset_group = subset(대전광역시,대전광역시$시군구명 == listset[1])
com_mid = table(subset_group$상권업종중분류명)
score_sgg_mid = round(((sum(com_mid)-com_mid) / (sum(com_mid)) * 100 / (length(com_mid)-1))*10,3)

subset_group1 = subset(대전광역시,대전광역시$시군구명 == listset[2])
com_mid1 = table(subset_group1$상권업종중분류명)
score_sgg_mid1 = round(((sum(com_mid1)-com_mid1) / (sum(com_mid1)) * 100 / (length(com_mid1)-1))*10,3)

subset_group2 = subset(대전광역시,대전광역시$시군구명 == listset[3])
com_mid2 = table(subset_group2$상권업종중분류명)
score_sgg_mid2 = round(((sum(com_mid2)-com_mid2) / (sum(com_mid2)) * 100 / (length(com_mid2)-1))*10,3)

subset_group3 = subset(대전광역시,대전광역시$시군구명 == listset[4])
com_mid3 = table(subset_group3$상권업종중분류명)
score_sgg_mid3 = round(((sum(com_mid3)-com_mid3) / (sum(com_mid3)) * 100 / (length(com_mid3)-1))*10,3)

subset_group4 = subset(대전광역시,대전광역시$시군구명 == listset[5])
com_mid4 = table(subset_group4$상권업종중분류명)
score_sgg_mid4 = round(((sum(com_mid4)-com_mid4) / (sum(com_mid4)) * 100 / (length(com_mid4)-1))*10,3)

listset
대덕구 = list("지역경쟁력"= unname(score_sgg["대덕구"]), "업종경쟁력"=as.list(score_sgg_mid))
동구 = list("지역경쟁력"= unname(score_sgg["동구"]), "업종경쟁력"=as.list(score_sgg_mid1))
서구 = list("지역경쟁력"= unname(score_sgg["서구"]), "업종경쟁력"=as.list(score_sgg_mid2))
유성구 = list("지역경쟁력"= unname(score_sgg["유성구"]), "업종경쟁력"=as.list(score_sgg_mid3))
중구 = list("지역경쟁력"= unname(score_sgg["중구"]), "업종경쟁력"=as.list(score_sgg_mid4))

대전광역시 = list("대덕구"=대덕구,"동구"=동구,"서구"=서구,"유성구"=유성구,"중구"=중구  )

FILE_대전광역시 = list("대전광역시"=대전광역시)

#----------------------------------------------------------------------------------------------------------------



subset_group = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/울산광역시/남구.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc=t(subset_group)
ccc=data.frame(ccc)
for(i in 1:dim(ccc)[2]){
  names(ccc)[i] = paste(subset_group$업종[i])
}
ccc=ccc[8,]

subset_group1 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/울산광역시/동구.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group1) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc1=t(subset_group1)
ccc1=data.frame(ccc1)
for(i in 1:dim(ccc1)[2]){
  names(ccc1)[i] = paste(subset_group1$업종[i])
}
ccc1=ccc1[8,]

subset_group2 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/울산광역시/북구.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group2) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc2=t(subset_group2)
ccc2=data.frame(ccc2)
for(i in 1:dim(ccc2)[2]){
  names(ccc2)[i] = paste(subset_group2$업종[i])
}
ccc2=ccc2[8,]

subset_group3 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/울산광역시/울주군.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group3) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc3=t(subset_group3)
ccc3=data.frame(ccc3)
for(i in 1:dim(ccc3)[2]){
  names(ccc3)[i] = paste(subset_group3$업종[i])
}
ccc3=ccc3[8,]

subset_group4 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/울산광역시/중구.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group4) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc4=t(subset_group4)
ccc4=data.frame(ccc4)
for(i in 1:dim(ccc4)[2]){
  names(ccc4)[i] = paste(subset_group4$업종[i])
}
ccc4=ccc4[8,]


남구 = list("지역경쟁력"= unname(score_sgg["남구"]), "업종경쟁력"=as.list(score_sgg_mid))
동구 = list("지역경쟁력"= unname(score_sgg["동구"]), "업종경쟁력"=as.list(score_sgg_mid1))
북구 = list("지역경쟁력"= unname(score_sgg["북구"]), "업종경쟁력"=as.list(score_sgg_mid2))
울주군 = list("지역경쟁력"= unname(score_sgg["울주군"]), "업종경쟁력"=as.list(score_sgg_mid3))
중구 = list("지역경쟁력"= unname(score_sgg["중구"]), "업종경쟁력"=as.list(score_sgg_mid4))

울산광역시 = list("남구"=남구,"동구"=동구,"북구"=북구,"울주군"=울주군,"중구"=중구  )

FILE_울산광역시 = list("울산광역시"=울산광역시)

#----------------------------------------------------------------------------------------------------------------



subset_group = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/충청북도/괴산군.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc=t(subset_group)
ccc=data.frame(ccc)
for(i in 1:dim(ccc)[2]){
  names(ccc)[i] = paste(subset_group$업종[i])
}
ccc=ccc[8,]

subset_group1 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/충청북도/단양군.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group1) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc1=t(subset_group1)
ccc1=data.frame(ccc1)
for(i in 1:dim(ccc1)[2]){
  names(ccc1)[i] = paste(subset_group1$업종[i])
}
ccc1=ccc1[8,]

subset_group2 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/충청북도/보은군.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group2) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc2=t(subset_group2)
ccc2=data.frame(ccc2)
for(i in 1:dim(ccc2)[2]){
  names(ccc2)[i] = paste(subset_group2$업종[i])
}
ccc2=ccc2[8,]

subset_group3 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/충청북도/영동군.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group3) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc3=t(subset_group3)
ccc3=data.frame(ccc3)
for(i in 1:dim(ccc3)[2]){
  names(ccc3)[i] = paste(subset_group3$업종[i])
}
ccc3=ccc3[8,]

subset_group4 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/충청북도/옥천군.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group4) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc4=t(subset_group4)
ccc4=data.frame(ccc4)
for(i in 1:dim(ccc4)[2]){
  names(ccc4)[i] = paste(subset_group4$업종[i])
}
ccc4=ccc4[8,]


subset_group5 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/충청북도/음성군.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group5) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc5=t(subset_group5)
ccc5=data.frame(ccc5)
for(i in 1:dim(ccc5)[2]){
  names(ccc5)[i] = paste(subset_group5$업종[i])
}
ccc5=ccc5[8,]

subset_group6 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/충청북도/제천시.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group6) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc6=t(subset_group6)
ccc6=data.frame(ccc6)
for(i in 1:dim(ccc6)[2]){
  names(ccc6)[i] = paste(subset_group6$업종[i])
}
ccc6=ccc6[8,]

subset_group7 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/충청북도/증평군.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group7) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc7=t(subset_group7)
ccc7=data.frame(ccc7)
for(i in 1:dim(ccc7)[2]){
  names(ccc7)[i] = paste(subset_group7$업종[i])
}
ccc7=ccc7[8,]

subset_group8 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/충청북도/진천군.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group8) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc8=t(subset_group8)
ccc8=data.frame(ccc8)
for(i in 1:dim(ccc8)[2]){
  names(ccc8)[i] = paste(subset_group8$업종[i])
}
ccc8=ccc8[8,]

subset_group9 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/충청북도/청주시.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group9) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc9=t(subset_group9)
ccc9=data.frame(ccc9)
for(i in 1:dim(ccc9)[2]){
  names(ccc9)[i] = paste(subset_group9$업종[i])
}
ccc9=ccc9[8,]

subset_group10 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/충청북도/충주시.csv",sep=""),header=T,encoding="utf-8")
colnames(subset_group10) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc10=t(subset_group10)
ccc10=data.frame(ccc10)
for(i in 1:dim(ccc10)[2]){
  names(ccc10)[i] = paste(subset_group10$업종[i])
}
ccc10=ccc10[8,]




괴산군 = as.list(ccc)
단양군 = as.list(ccc1)
보은군 = as.list(ccc2)
영동군 = as.list(ccc3)
옥천군 = as.list(ccc4)
음성군 = as.list(ccc5)
제천시 = as.list(ccc6)
증평군 = as.list(ccc7)
진천군 = as.list(ccc8)
청주시 = as.list(ccc9)
충주시 = as.list(ccc10)

충청북도 = list("괴산군"=괴산군,"단양군"=단양군,"보은군"=보은군,"영동군"=영동군,"옥천군"=옥천군,"음성군"=음성군,"제천시"=제천시,"증평군"=증평군,"진천군"=진천군,
            "청주시"=청주시,"충주시"=충주시)

FILE_충청북도 = list("충청북도"=충청북도)


#--------------------------------------------------------------------------------------------
FILE = list(FILE_강원도,FILE_경기도,FILE_경상남도,FILE_경상북도,FILE_광주,FILE_대구,FILE_대전,FILE_부산광역시,FILE_서울,
            FILE_세종,FILE_울산광역시,FILE_인천광역시,FILE_전라남도,FILE_전라북도,FILE_제주도,FILE_충청남도,FILE_충청북도)

toJSON(FILE_전라북도)
JSON = toJSON(FILE)
JSON1 = enc2utf8(JSON)
write(JSON,"stable.json")
?enc2utf8
Encoding(JSON)
