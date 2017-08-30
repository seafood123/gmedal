library(jsonlite)
li = list("시군구명"=unique(광주$시군구명),"광산구"=unname(score_sgg["광산구"]),"남구"=unname(score_sgg["남구"]),
          "동구"=unname(score_sgg["동구"]),"북구"=unname(score_sgg["북구"]),"서구"=unname(score_sgg["서구"]))
toJSON(li)

li["광산구"]=as.list(score_sgg_mid)
toJSON(as.list(score_sgg_mid))
as.factor(dat)
for(i in 1:5){
  subset_group = subset(광주광역시,광주광역시$시군구명 == list[i])
  com_mid = table(subset_group$상권업종중분류명)
  score_sgg_mid = round(((sum(com_mid)-com_mid) / (sum(com_mid)) * 100 / (length(com_mid)-1))*10,3)
  for(j in 1:dim(subset_group)[1]){
    subset_group$업종경쟁력[j] = unname(score_sgg_mid[subset_group$상권업종중분류명[j]])  
  }
  광주 = rbind(광주,subset_group)
  
}


stack(list(unlist(subset_group$업종),c(subset_group$안정성점수)))

library(stringr)
filelist = dir("C:/Users/abc/desktop/hanium/201512/광주광역시")
filename=strsplit(filelist,".csv")
filename=unlist(filename)

list(filename[1] = c(1,1,1,1))

ccc=t(subset_group)

ccc=(data.frame(ccc))
names(ccc)
ccc=ccc[8,]
toJSON(ccc)

for(i in 1:89){
  names(ccc)[i] = paste(subset_group$업종[i])
}


sgg = table(광주광역시$시군구명)

score_sgg = round(((sum(sgg)-sgg) / (sum(sgg)) * 100 / (length(sgg)-1)),3)

subset_group = subset(광주광역시,광주광역시$시군구명 == "광산구")
com_mid = table(subset_group$상권업종중분류명)
score_sgg_mid = round(((sum(com_mid)-com_mid) / (sum(com_mid)) * 100 / (length(com_mid)-1))*10,3)
li=list("광산구" = as.list(score_sgg_mid))
library(jsonlite)
toJSON(li)

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
ccc=ccc[8,]


subset_group2 =read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/광주광역시/동구.csv",sep=""),header=T,,encoding="utf-8")
colnames(subset_group) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc=t(subset_group)
ccc=data.frame(ccc)
for(i in 1:dim(ccc)[2]){
  names(ccc)[i] = paste(subset_group$업종[i])
}
ccc=ccc[8,]


subset_group3 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/광주광역시/북구.csv",sep=""),header=T,,encoding="utf-8")
colnames(subset_group) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc=t(subset_group)
ccc=data.frame(ccc)
for(i in 1:dim(ccc)[2]){
  names(ccc)[i] = paste(subset_group$업종[i])
}
ccc=ccc[8,]

subset_group4 = read.csv(paste("C:/Users/abc/Desktop/hanium/안정성/광주광역시/서구.csv",sep=""),header=T,,encoding="utf-8")
colnames(subset_group) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
ccc=t(subset_group)
ccc=data.frame(ccc)
for(i in 1:dim(ccc)[2]){
  names(ccc)[i] = paste(subset_group$업종[i])
}
ccc=ccc[8,]

gwangju = list("광주광역시")
gwangju = list("광산구"=c("지역경쟁력"=unname(score_sgg["광산구"]),as.list(score_sgg_mid)),
               "남구"=c("지역경쟁력"=unname(score_sgg["남구"]),as.list(score_sgg_mid1)),
               "동구"=c("지역경쟁력"=unname(score_sgg["동구"]),as.list(score_sgg_mid2)),
               "북구"=c("지역경쟁력"=unname(score_sgg["북구"]),as.list(score_sgg_mid3)),
               "서구"=c("지역경쟁력"=unname(score_sgg["서구"]),as.list(score_sgg_mid4)))

gwangju = list("광산구"=c("지역경쟁력"=unname(score_sgg["광산구"]),as.list(score_sgg_mid)),
               "남구"=c("지역경쟁력"=unname(score_sgg["남구"]),as.list(score_sgg_mid1)),
               "동구"=c("지역경쟁력"=unname(score_sgg["동구"]),as.list(score_sgg_mid2)),
               "북구"=c("지역경쟁력"=unname(score_sgg["북구"]),as.list(score_sgg_mid3)),
               "서구"=c("지역경쟁력"=unname(score_sgg["서구"]),as.list(score_sgg_mid4)))

ss=list(structure(list("광산구"=as.list(score_sgg_mid))))
toJSON(data.frame(score_sgg_mid))



toJSON(as.list(score_sgg_mid))

naming = as.list(score_sgg_mid)

광산구 = list("지역경쟁력"= unname(score_sgg["광산구"]), "업종경쟁력"=as.list(score_sgg_mid))
남구 = list("지역경쟁력"= unname(score_sgg["남구"]), "업종경쟁력"=as.list(score_sgg_mid1))
동구 = list("지역경쟁력"= unname(score_sgg["동구"]), "업종경쟁력"=as.list(score_sgg_mid2))
북구 = list("지역경쟁력"= unname(score_sgg["북구"]), "업종경쟁력"=as.list(score_sgg_mid3))
서구 = list("지역경쟁력"= unname(score_sgg["서구"]), "업종경쟁력"=as.list(score_sgg_mid4))

광주 = list(광산구,남구,동구,북구,서구)
names(광주) = c("광산구","남구","동구","북구","서구")
광주=list("광주광역시"=광주)

#--------------------------------------------------------------------------------

listset = unique(서울특별시$시군구명)
listset = unlist(listset)
length(listset)

sgg = table(서울특별시$시군구명)
sgg=sgg[sgg != 0]


city = "북구"
score_sgg = round(((sum(sgg)-sgg) / (sum(sgg)) * 100 / (length(sgg)-1)),3)

library(jsonlite)
li = list("시군구명"=unique(광주$시군구명),"광산구"=unname(score_sgg["광산구"]),"남구"=unname(score_sgg["남구"]),
          "동구"=unname(score_sgg["동구"]),"북구"=unname(score_sgg["북구"]),"서구"=unname(score_sgg["서구"]))
toJSON(li)

li["광산구"]=as.list(score_sgg_mid)
toJSON(as.list(score_sgg_mid))
as.factor(dat)
for(i in 1:5){
  subset_group = subset(광주광역시,광주광역시$시군구명 == list[i])
  com_mid = table(subset_group$상권업종중분류명)
  score_sgg_mid = round(((sum(com_mid)-com_mid) / (sum(com_mid)) * 100 / (length(com_mid)-1))*10,3)
  for(j in 1:dim(subset_group)[1]){
    subset_group$업종경쟁력[j] = unname(score_sgg_mid[subset_group$상권업종중분류명[j]])  
  }
  광주 = rbind(광주,subset_group)
}

subset_group = subset(광주광역시,광주광역시$시군구명 == "광산구")
com_mid = table(subset_group$상권업종중분류명)
score_sgg_mid = round(((sum(com_mid)-com_mid) / (sum(com_mid)) * 100 / (length(com_mid)-1))*10,3)
li=list("광산구" = as.list(score_sgg_mid))
library(jsonlite)
toJSON(li)

subset_group1 = subset(광주광역시,광주광역시$시군구명 == "남구")
com_mid1 = table(subset_group1$상권업종중분류명)
score_sgg_mid1 = round(((sum(com_mid1)-com_mid1) / (sum(com_mid1)) * 100 / (length(com_mid1)-1))*10,3)

subset_group2 = subset(광주광역시,광주광역시$시군구명 == "동구")
com_mid2 = table(subset_group2$상권업종중분류명)
score_sgg_mid2 = round(((sum(com_mid2)-com_mid2) / (sum(com_mid2)) * 100 / (length(com_mid2)-1))*10,3)

subset_group3 = subset(광주광역시,광주광역시$시군구명 == "북구")
com_mid3 = table(subset_group3$상권업종중분류명)
score_sgg_mid3 = round(((sum(com_mid3)-com_mid3) / (sum(com_mid3)) * 100 / (length(com_mid3)-1))*10,3)

subset_group4 = subset(광주광역시,광주광역시$시군구명 == "서구")
com_mid4 = table(subset_group4$상권업종중분류명)
score_sgg_mid4 = round(((sum(com_mid4)-com_mid4) / (sum(com_mid4)) * 100 / (length(com_mid4)-1))*10,3)

gwangju = list("광주광역시")
gwangju = list("광산구"=c("지역경쟁력"=unname(score_sgg["광산구"]),as.list(score_sgg_mid)),
               "남구"=c("지역경쟁력"=unname(score_sgg["남구"]),as.list(score_sgg_mid1)),
               "동구"=c("지역경쟁력"=unname(score_sgg["동구"]),as.list(score_sgg_mid2)),
               "북구"=c("지역경쟁력"=unname(score_sgg["북구"]),as.list(score_sgg_mid3)),
               "서구"=c("지역경쟁력"=unname(score_sgg["서구"]),as.list(score_sgg_mid4)))

gwangju = list("광산구"=c("지역경쟁력"=unname(score_sgg["광산구"]),as.list(score_sgg_mid)),
               "남구"=c("지역경쟁력"=unname(score_sgg["남구"]),as.list(score_sgg_mid1)),
               "동구"=c("지역경쟁력"=unname(score_sgg["동구"]),as.list(score_sgg_mid2)),
               "북구"=c("지역경쟁력"=unname(score_sgg["북구"]),as.list(score_sgg_mid3)),
               "서구"=c("지역경쟁력"=unname(score_sgg["서구"]),as.list(score_sgg_mid4)))

ss=list(structure(list("광산구"=as.list(score_sgg_mid))))
toJSON(data.frame(score_sgg_mid))



toJSON(as.list(score_sgg_mid))

naming = as.list(score_sgg_mid)

광산구 = list("지역경쟁력"= unname(score_sgg["광산구"]), "업종경쟁력"=as.list(score_sgg_mid))
남구 = list("지역경쟁력"= unname(score_sgg["남구"]), "업종경쟁력"=as.list(score_sgg_mid1))
동구 = list("지역경쟁력"= unname(score_sgg["동구"]), "업종경쟁력"=as.list(score_sgg_mid2))
북구 = list("지역경쟁력"= unname(score_sgg["북구"]), "업종경쟁력"=as.list(score_sgg_mid3))
서구 = list("지역경쟁력"= unname(score_sgg["서구"]), "업종경쟁력"=as.list(score_sgg_mid4))

광주 = list(광산구,남구,동구,북구,서구)
names(광주) = c("광산구","남구","동구","북구","서구")
광주=list("광주광역시"=광주)

#--------------------------------------------------------------------------------

listset = unique(서울특별시$시군구명)
listset = unlist(listset)
length(listset)

subset_group = subset(서울특별시,서울특별시$시군구명 == listset[1])
com_mid = table(subset_group$상권업종중분류명)
score_sgg_mid = round(((sum(com_mid)-com_mid) / (sum(com_mid)) * 100 / (length(com_mid)-1))*10,3)

subset_group1 = subset(서울특별시,서울특별시$시군구명 == listset[2])
com_mid1 = table(subset_group1$상권업종중분류명)
score_sgg_mid1 = round(((sum(com_mid1)-com_mid1) / (sum(com_mid1)) * 100 / (length(com_mid1)-1))*10,3)

subset_group2 = subset(서울특별시,서울특별시$시군구명 == listset[3])
com_mid2 = table(subset_group2$상권업종중분류명)
score_sgg_mid2 = round(((sum(com_mid2)-com_mid2) / (sum(com_mid2)) * 100 / (length(com_mid2)-1))*10,3)

subset_group3 = subset(서울특별시,서울특별시$시군구명 == listset[4])
com_mid3 = table(subset_group3$상권업종중분류명)
score_sgg_mid3 = round(((sum(com_mid3)-com_mid3) / (sum(com_mid3)) * 100 / (length(com_mid3)-1))*10,3)

subset_group4 = subset(서울특별시,서울특별시$시군구명 == listset[5])
com_mid4 = table(subset_group4$상권업종중분류명)
score_sgg_mid4 = round(((sum(com_mid4)-com_mid4) / (sum(com_mid4)) * 100 / (length(com_mid4)-1))*10,3)

subset_group5 = subset(서울특별시,서울특별시$시군구명 == listset[6])
com_mid5= table(subset_group5$상권업종중분류명)
score_sgg_mid5 = round(((sum(com_mid5)-com_mid5) / (sum(com_mid5)) * 100 / (length(com_mid5)-1))*10,3)

subset_group6 = subset(서울특별시,서울특별시$시군구명 == listset[7])
com_mid6 = table(subset_group6$상권업종중분류명)
score_sgg_mid6 = round(((sum(com_mid6)-com_mid6) / (sum(com_mid6)) * 100 / (length(com_mid6)-1))*10,3)

subset_group7 = subset(서울특별시,서울특별시$시군구명 == listset[8])
com_mid7 = table(subset_group$상권업종중분류명)
score_sgg_mid7 = round(((sum(com_mid7)-com_mid7) / (sum(com_mid7)) * 100 / (length(com_mid7)-1))*10,3)

subset_group8 = subset(서울특별시,서울특별시$시군구명 == listset[9])
com_mid8 = table(subset_group8$상권업종중분류명)
score_sgg_mid8 = round(((sum(com_mid8)-com_mid8) / (sum(com_mid8)) * 100 / (length(com_mid8)-1))*10,3)

subset_group9 = subset(서울특별시,서울특별시$시군구명 == listset[10])
com_mid9 = table(subset_group9$상권업종중분류명)
score_sgg_mid9 = round(((sum(com_mid9)-com_mid9) / (sum(com_mid9)) * 100 / (length(com_mid9)-1))*10,3)

subset_group10 = subset(서울특별시,서울특별시$시군구명 == listset[11])
com_mid10 = table(subset_group10$상권업종중분류명)
score_sgg_mid10 = round(((sum(com_mid10)-com_mid10) / (sum(com_mid10)) * 100 / (length(com_mid10)-1))*10,3)


subset_group11 = subset(서울특별시,서울특별시$시군구명 == listset[12])
com_mid11 = table(subset_group11$상권업종중분류명)
score_sgg_mid11 = round(((sum(com_mid11)-com_mid11) / (sum(com_mid11)) * 100 / (length(com_mid11)-1))*10,3)

subset_group12 = subset(서울특별시,서울특별시$시군구명 == listset[13])
com_mid12 = table(subset_group12$상권업종중분류명)
score_sgg_mid12 = round(((sum(com_mid12)-com_mid12) / (sum(com_mid12)) * 100 / (length(com_mid12)-1))*10,3)

subset_group13 = subset(서울특별시,서울특별시$시군구명 == listset[14])
com_mid13 = table(subset_group13$상권업종중분류명)
score_sgg_mid13 = round(((sum(com_mid13)-com_mid13) / (sum(com_mid13)) * 100 / (length(com_mid13)-1))*10,3)

subset_group14 = subset(서울특별시,서울특별시$시군구명 == listset[15])
com_mid14 = table(subset_group14$상권업종중분류명)
score_sgg_mid14 = round(((sum(com_mid14)-com_mid14) / (sum(com_mid14)) * 100 / (length(com_mid14)-1))*10,3)

subset_group15 = subset(서울특별시,서울특별시$시군구명 == listset[16])
com_mid15= table(subset_group15$상권업종중분류명)
score_sgg_mid15 = round(((sum(com_mid15)-com_mid15) / (sum(com_mid15)) * 100 / (length(com_mid15)-1))*10,3)

subset_group16 = subset(서울특별시,서울특별시$시군구명 == listset[17])
com_mid16 = table(subset_group16$상권업종중분류명)
score_sgg_mid16 = round(((sum(com_mid16)-com_mid16) / (sum(com_mid16)) * 100 / (length(com_mid16)-1))*10,3)

subset_group17 = subset(서울특별시,서울특별시$시군구명 == listset[18])
com_mid17 = table(subset_group17$상권업종중분류명)
score_sgg_mid17 = round(((sum(com_mid17)-com_mid17) / (sum(com_mid17)) * 100 / (length(com_mid17)-1))*10,3)

subset_group18 = subset(서울특별시,서울특별시$시군구명 == listset[19])
com_mid18 = table(subset_group18$상권업종중분류명)
score_sgg_mid18 = round(((sum(com_mid18)-com_mid18) / (sum(com_mid18)) * 100 / (length(com_mid18)-1))*10,3)

subset_group19 = subset(서울특별시,서울특별시$시군구명 == listset[20])
com_mid19 = table(subset_group19$상권업종중분류명)
score_sgg_mid19 = round(((sum(com_mid19)-com_mid19) / (sum(com_mid19)) * 100 / (length(com_mid19)-1))*10,3)

subset_group20 = subset(서울특별시,서울특별시$시군구명 == listset[21])
com_mid20 = table(subset_group20$상권업종중분류명)
score_sgg_mid20 = round(((sum(com_mid20)-com_mid20) / (sum(com_mid20)) * 100 / (length(com_mid20)-1))*10,3)

subset_group21 = subset(서울특별시,서울특별시$시군구명 == listset[22])
com_mid21 = table(subset_group21$상권업종중분류명)
score_sgg_mid21 = round(((sum(com_mid21)-com_mid21) / (sum(com_mid21)) * 100 / (length(com_mid21)-1))*10,3)

subset_group22 = subset(서울특별시,서울특별시$시군구명 == listset[23])
com_mid22 = table(subset_group22$상권업종중분류명)
score_sgg_mid22 = round(((sum(com_mid22)-com_mid22) / (sum(com_mid22)) * 100 / (length(com_mid22)-1))*10,3)

subset_group23 = subset(서울특별시,서울특별시$시군구명 == listset[24])
com_mid23 = table(subset_group23$상권업종중분류명)
score_sgg_mid23 = round(((sum(com_mid23)-com_mid23) / (sum(com_mid23)) * 100 / (length(com_mid23)-1))*10,3)

subset_group24 = subset(서울특별시,서울특별시$시군구명 == listset[25])
com_mid24 = table(subset_group24$상권업종중분류명)
score_sgg_mid24 = round(((sum(com_mid24)-com_mid24) / (sum(com_mid24)) * 100 / (length(com_mid24)-1))*10,3)


listset
강남구 = list("지역경쟁력"= unname(score_sgg["강남구"]), "업종경쟁력"=as.list(score_sgg_mid))
금천구 = list("지역경쟁력"= unname(score_sgg["금천구"]), "업종경쟁력"=as.list(score_sgg_mid1))
송파구 = list("지역경쟁력"= unname(score_sgg["송파구"]), "업종경쟁력"=as.list(score_sgg_mid2))
강서구 = list("지역경쟁력"= unname(score_sgg["강서구"]), "업종경쟁력"=as.list(score_sgg_mid3))
중구 = list("지역경쟁력"= unname(score_sgg["중구"]), "업종경쟁력"=as.list(score_sgg_mid4))
강동구= list("지역경쟁력"= unname(score_sgg["강동구"]), "업종경쟁력"=as.list(score_sgg_mid5))
양천구= list("지역경쟁력"= unname(score_sgg["양천구"]), "업종경쟁력"=as.list(score_sgg_mid6))
서대문구= list("지역경쟁력"= unname(score_sgg["서대문구"]), "업종경쟁력"=as.list(score_sgg_mid7))
광진구= list("지역경쟁력"= unname(score_sgg["광진구"]), "업종경쟁력"=as.list(score_sgg_mid8))
구로구= list("지역경쟁력"= unname(score_sgg["구로구"]), "업종경쟁력"=as.list(score_sgg_mid9))
영등포구= list("지역경쟁력"= unname(score_sgg["영등포구"]), "업종경쟁력"=as.list(score_sgg_mid10))
관악구= list("지역경쟁력"= unname(score_sgg["관악구"]), "업종경쟁력"=as.list(score_sgg_mid11))
서초구= list("지역경쟁력"= unname(score_sgg["서초구"]), "업종경쟁력"=as.list(score_sgg_mid12))
성북구= list("지역경쟁력"= unname(score_sgg["성북구"]), "업종경쟁력"=as.list(score_sgg_mid13))
마포구= list("지역경쟁력"= unname(score_sgg["마포구"]), "업종경쟁력"=as.list(score_sgg_mid14))
성동구= list("지역경쟁력"= unname(score_sgg["성동구"]), "업종경쟁력"=as.list(score_sgg_mid15))
노원구= list("지역경쟁력"= unname(score_sgg["노원구"]), "업종경쟁력"=as.list(score_sgg_mid16))
동작구= list("지역경쟁력"= unname(score_sgg["동작구"]), "업종경쟁력"=as.list(score_sgg_mid17))
종로구= list("지역경쟁력"= unname(score_sgg["종로구"]), "업종경쟁력"=as.list(score_sgg_mid18))
중랑구= list("지역경쟁력"= unname(score_sgg["중랑구"]), "업종경쟁력"=as.list(score_sgg_mid19))
강북구= list("지역경쟁력"= unname(score_sgg["강북구"]), "업종경쟁력"=as.list(score_sgg_mid20))
은평구= list("지역경쟁력"= unname(score_sgg["은평구"]), "업종경쟁력"=as.list(score_sgg_mid21))
용산구= list("지역경쟁력"= unname(score_sgg["용산구"]), "업종경쟁력"=as.list(score_sgg_mid22))
동대문구= list("지역경쟁력"= unname(score_sgg["동대문구"]), "업종경쟁력"=as.list(score_sgg_mid23))
도봉구= list("지역경쟁력"= unname(score_sgg["도봉구"]), "업종경쟁력"=as.list(score_sgg_mid24))

서울 = list(강남구,금천구,송파구,강서구,중구,강동구,양천구,서대문구,광진구,구로구,영등포구,관악구,서초구,성북구,마포구,성동구,노원구,동작구,
             종로구,중랑구,강북구,은평구,용산구,동대문구,도봉구)
names(서울)=c("강남구","금천구","송파구","강서구","중구","강동구","양천구","서대문구","광진구",
            "구로구","영등포구","관악구","서초구","성북구","마포구","성동구","노원구","동작구",
            "종로구","중랑구","강북구","은평구","용산구","동대문구","도봉구")
FILE = list("서울특별시"=서울,"광주광역시"=광주)
install.packages("jsonlite")
library(jsonlite)
write(toJSON(FILE),"FILE.json")

#-----------------------------------------------------------------------------------------------------------
filelist = dir("C:/Users/abc/Desktop/hanium/201706/강원도",pattern=".csv")
#tables = lapply(paste("../data/", wide, "/", date, "/", city,"/",filelist,sep=""),read.csv,header=T)
강원도 = do.call(rbind,lapply(paste("C:/Users/abc/Desktop/hanium/201706/강원도/",filelist,sep=""),read.csv,header=T))


listset = unique(강원도$시군구명)
listset = unlist(listset)
length(listset)

sgg = table(강원도$시군구명)
sgg=sgg[sgg != 0]

score_sgg = round(((sum(sgg)-sgg) / (sum(sgg)) * 100 / (length(sgg)-1)),3)

subset_group = subset(강원도,강원도$시군구명 == listset[1])
com_mid = table(subset_group$상권업종중분류명)
score_sgg_mid = round(((sum(com_mid)-com_mid) / (sum(com_mid)) * 100 / (length(com_mid)-1))*10,3)

subset_group1 = subset(강원도,강원도$시군구명 == listset[2])
com_mid1 = table(subset_group1$상권업종중분류명)
score_sgg_mid1 = round(((sum(com_mid1)-com_mid1) / (sum(com_mid1)) * 100 / (length(com_mid1)-1))*10,3)

subset_group2 = subset(강원도,강원도$시군구명 == listset[3])
com_mid2 = table(subset_group2$상권업종중분류명)
score_sgg_mid2 = round(((sum(com_mid2)-com_mid2) / (sum(com_mid2)) * 100 / (length(com_mid2)-1))*10,3)

subset_group3 = subset(강원도,강원도$시군구명 == listset[4])
com_mid3 = table(subset_group3$상권업종중분류명)
score_sgg_mid3 = round(((sum(com_mid3)-com_mid3) / (sum(com_mid3)) * 100 / (length(com_mid3)-1))*10,3)

subset_group4 = subset(강원도,강원도$시군구명 == listset[5])
com_mid4 = table(subset_group4$상권업종중분류명)
score_sgg_mid4 = round(((sum(com_mid4)-com_mid4) / (sum(com_mid4)) * 100 / (length(com_mid4)-1))*10,3)

subset_group5 = subset(강원도,강원도$시군구명 == listset[6])
com_mid5= table(subset_group5$상권업종중분류명)
score_sgg_mid5 = round(((sum(com_mid5)-com_mid5) / (sum(com_mid5)) * 100 / (length(com_mid5)-1))*10,3)

subset_group6 = subset(강원도,강원도$시군구명 == listset[7])
com_mid6 = table(subset_group6$상권업종중분류명)
score_sgg_mid6 = round(((sum(com_mid6)-com_mid6) / (sum(com_mid6)) * 100 / (length(com_mid6)-1))*10,3)

subset_group7 = subset(강원도,강원도$시군구명 == listset[8])
com_mid7 = table(subset_group$상권업종중분류명)
score_sgg_mid7 = round(((sum(com_mid7)-com_mid7) / (sum(com_mid7)) * 100 / (length(com_mid7)-1))*10,3)

subset_group8 = subset(강원도,강원도$시군구명 == listset[9])
com_mid8 = table(subset_group8$상권업종중분류명)
score_sgg_mid8 = round(((sum(com_mid8)-com_mid8) / (sum(com_mid8)) * 100 / (length(com_mid8)-1))*10,3)

subset_group9 = subset(강원도,강원도$시군구명 == listset[10])
com_mid9 = table(subset_group9$상권업종중분류명)
score_sgg_mid9 = round(((sum(com_mid9)-com_mid9) / (sum(com_mid9)) * 100 / (length(com_mid9)-1))*10,3)

subset_group10 = subset(강원도,강원도$시군구명 == listset[11])
com_mid10 = table(subset_group10$상권업종중분류명)
score_sgg_mid10 = round(((sum(com_mid10)-com_mid10) / (sum(com_mid10)) * 100 / (length(com_mid10)-1))*10,3)


subset_group11 = subset(강원도,강원도$시군구명 == listset[12])
com_mid11 = table(subset_group11$상권업종중분류명)
score_sgg_mid11 = round(((sum(com_mid11)-com_mid11) / (sum(com_mid11)) * 100 / (length(com_mid11)-1))*10,3)

subset_group12 = subset(강원도,강원도$시군구명 == listset[13])
com_mid12 = table(subset_group12$상권업종중분류명)
score_sgg_mid12 = round(((sum(com_mid12)-com_mid12) / (sum(com_mid12)) * 100 / (length(com_mid12)-1))*10,3)

subset_group13 = subset(강원도,강원도$시군구명 == listset[14])
com_mid13 = table(subset_group13$상권업종중분류명)
score_sgg_mid13 = round(((sum(com_mid13)-com_mid13) / (sum(com_mid13)) * 100 / (length(com_mid13)-1))*10,3)

subset_group14 = subset(강원도,강원도$시군구명 == listset[15])
com_mid14 = table(subset_group14$상권업종중분류명)
score_sgg_mid14 = round(((sum(com_mid14)-com_mid14) / (sum(com_mid14)) * 100 / (length(com_mid14)-1))*10,3)

subset_group15 = subset(강원도,강원도$시군구명 == listset[16])
com_mid15= table(subset_group15$상권업종중분류명)
score_sgg_mid15 = round(((sum(com_mid15)-com_mid15) / (sum(com_mid15)) * 100 / (length(com_mid15)-1))*10,3)

subset_group16 = subset(강원도,강원도$시군구명 == listset[17])
com_mid16 = table(subset_group16$상권업종중분류명)
score_sgg_mid16 = round(((sum(com_mid16)-com_mid16) / (sum(com_mid16)) * 100 / (length(com_mid16)-1))*10,3)

subset_group17 = subset(강원도,강원도$시군구명 == listset[18])
com_mid17 = table(subset_group17$상권업종중분류명)
score_sgg_mid17 = round(((sum(com_mid17)-com_mid17) / (sum(com_mid17)) * 100 / (length(com_mid17)-1))*10,3)

listset
강릉시 = list("지역경쟁력"= unname(score_sgg["강릉시"]), "업종경쟁력"=as.list(score_sgg_mid))
고성군 = list("지역경쟁력"= unname(score_sgg["고성군"]), "업종경쟁력"=as.list(score_sgg_mid1))
동해시 = list("지역경쟁력"= unname(score_sgg["동해시"]), "업종경쟁력"=as.list(score_sgg_mid2))
삼척시 = list("지역경쟁력"= unname(score_sgg["삼척시"]), "업종경쟁력"=as.list(score_sgg_mid3))
속초시 = list("지역경쟁력"= unname(score_sgg["속초시"]), "업종경쟁력"=as.list(score_sgg_mid4))
양구군= list("지역경쟁력"= unname(score_sgg["양구군"]), "업종경쟁력"=as.list(score_sgg_mid5))
양양군= list("지역경쟁력"= unname(score_sgg["양양군"]), "업종경쟁력"=as.list(score_sgg_mid6))
영월군= list("지역경쟁력"= unname(score_sgg["영월군"]), "업종경쟁력"=as.list(score_sgg_mid7))
원주시= list("지역경쟁력"= unname(score_sgg["원주시"]), "업종경쟁력"=as.list(score_sgg_mid8))
인제군= list("지역경쟁력"= unname(score_sgg["인제군"]), "업종경쟁력"=as.list(score_sgg_mid9))
정선군= list("지역경쟁력"= unname(score_sgg["정선군"]), "업종경쟁력"=as.list(score_sgg_mid10))
철원군= list("지역경쟁력"= unname(score_sgg["철원군"]), "업종경쟁력"=as.list(score_sgg_mid11))
춘천시= list("지역경쟁력"= unname(score_sgg["춘천시"]), "업종경쟁력"=as.list(score_sgg_mid12))
태백시= list("지역경쟁력"= unname(score_sgg["태백시"]), "업종경쟁력"=as.list(score_sgg_mid13))
평창군= list("지역경쟁력"= unname(score_sgg["평창군"]), "업종경쟁력"=as.list(score_sgg_mid14))
홍천군= list("지역경쟁력"= unname(score_sgg["홍천군"]), "업종경쟁력"=as.list(score_sgg_mid15))
화천군= list("지역경쟁력"= unname(score_sgg["화천군"]), "업종경쟁력"=as.list(score_sgg_mid16))
횡성군= list("지역경쟁력"= unname(score_sgg["횡성군"]), "업종경쟁력"=as.list(score_sgg_mid17))

강원도 = list("강릉시"=강릉시,"고성군"=고성군,"동해시"=동해시,"삼척시"=삼척시,"속초시"=속초시,"양구군"=양구군,
           "양양군"=양양군,"영월군"=영월군,"원주시"=원주시,"인제군"=인제군,"정선군"=정선군,"철원군"=철원군,
           "춘천시"=춘천시,"태백시"=태백시,"평창군"=평창군,"홍천군"=홍천군,"화천군"=화천군,"횡성군"=횡성군)



#----------------------------------------------------------------------------------------------

filelist = dir("C:/Users/abc/Desktop/hanium/201706/경기도",pattern=".csv")
#tables = lapply(paste("../data/", wide, "/", date, "/", city,"/",filelist,sep=""),read.csv,header=T)
경기도 = do.call(rbind,lapply(paste("C:/Users/abc/Desktop/hanium/201706/경기도/",filelist,sep=""),read.csv,header=T))


listset = unique(경기도$시군구명)
listset = unlist(listset)
length(listset)

sgg = table(경기도$시군구명)
sgg["용인시"] = sgg[18]+sgg[19]+sgg[20]
sgg=sgg[c(-18,-19,-20)]
sgg=sgg[sgg != 0]
listset = names(sgg)
score_sgg = round(((sum(sgg)-sgg) / (sum(sgg)) * 100 / (length(sgg)-1)),3)

subset_group = subset(경기도,경기도$시군구명 == listset[1])
com_mid = table(subset_group$상권업종중분류명)
score_sgg_mid = round(((sum(com_mid)-com_mid) / (sum(com_mid)) * 100 / (length(com_mid)-1))*10,3)

subset_group1 = subset(경기도,경기도$시군구명 == listset[2])
com_mid1 = table(subset_group1$상권업종중분류명)
score_sgg_mid1 = round(((sum(com_mid1)-com_mid1) / (sum(com_mid1)) * 100 / (length(com_mid1)-1))*10,3)

subset_group2 = subset(경기도,경기도$시군구명 == listset[3])
com_mid2 = table(subset_group2$상권업종중분류명)
score_sgg_mid2 = round(((sum(com_mid2)-com_mid2) / (sum(com_mid2)) * 100 / (length(com_mid2)-1))*10,3)

subset_group3 = subset(경기도,경기도$시군구명 == listset[4])
com_mid3 = table(subset_group3$상권업종중분류명)
score_sgg_mid3 = round(((sum(com_mid3)-com_mid3) / (sum(com_mid3)) * 100 / (length(com_mid3)-1))*10,3)

subset_group4 = subset(경기도,경기도$시군구명 == listset[5])
com_mid4 = table(subset_group4$상권업종중분류명)
score_sgg_mid4 = round(((sum(com_mid4)-com_mid4) / (sum(com_mid4)) * 100 / (length(com_mid4)-1))*10,3)

subset_group5 = subset(경기도,경기도$시군구명 == listset[6])
com_mid5= table(subset_group5$상권업종중분류명)
score_sgg_mid5 = round(((sum(com_mid5)-com_mid5) / (sum(com_mid5)) * 100 / (length(com_mid5)-1))*10,3)

subset_group6 = subset(경기도,경기도$시군구명 == listset[7])
com_mid6 = table(subset_group6$상권업종중분류명)
score_sgg_mid6 = round(((sum(com_mid6)-com_mid6) / (sum(com_mid6)) * 100 / (length(com_mid6)-1))*10,3)

subset_group7 = subset(경기도,경기도$시군구명 == listset[8])
com_mid7 = table(subset_group$상권업종중분류명)
score_sgg_mid7 = round(((sum(com_mid7)-com_mid7) / (sum(com_mid7)) * 100 / (length(com_mid7)-1))*10,3)

subset_group8 = subset(경기도,경기도$시군구명 == listset[9])
com_mid8 = table(subset_group8$상권업종중분류명)
score_sgg_mid8 = round(((sum(com_mid8)-com_mid8) / (sum(com_mid8)) * 100 / (length(com_mid8)-1))*10,3)

subset_group9 = subset(경기도,경기도$시군구명 == listset[10])
com_mid9 = table(subset_group9$상권업종중분류명)
score_sgg_mid9 = round(((sum(com_mid9)-com_mid9) / (sum(com_mid9)) * 100 / (length(com_mid9)-1))*10,3)

subset_group10 = subset(경기도,경기도$시군구명 == listset[11])
com_mid10 = table(subset_group10$상권업종중분류명)
score_sgg_mid10 = round(((sum(com_mid10)-com_mid10) / (sum(com_mid10)) * 100 / (length(com_mid10)-1))*10,3)


subset_group11 = subset(경기도,경기도$시군구명 == listset[12])
com_mid11 = table(subset_group11$상권업종중분류명)
score_sgg_mid11 = round(((sum(com_mid11)-com_mid11) / (sum(com_mid11)) * 100 / (length(com_mid11)-1))*10,3)

subset_group12 = subset(경기도,경기도$시군구명 == listset[13])
com_mid12 = table(subset_group12$상권업종중분류명)
score_sgg_mid12 = round(((sum(com_mid12)-com_mid12) / (sum(com_mid12)) * 100 / (length(com_mid12)-1))*10,3)

subset_group13 = subset(경기도,경기도$시군구명 == listset[14])
com_mid13 = table(subset_group13$상권업종중분류명)
score_sgg_mid13 = round(((sum(com_mid13)-com_mid13) / (sum(com_mid13)) * 100 / (length(com_mid13)-1))*10,3)

subset_group14 = subset(경기도,경기도$시군구명 == listset[15])
com_mid14 = table(subset_group14$상권업종중분류명)
score_sgg_mid14 = round(((sum(com_mid14)-com_mid14) / (sum(com_mid14)) * 100 / (length(com_mid14)-1))*10,3)

subset_group15 = subset(경기도,경기도$시군구명 == listset[16])
com_mid15= table(subset_group15$상권업종중분류명)
score_sgg_mid15 = round(((sum(com_mid15)-com_mid15) / (sum(com_mid15)) * 100 / (length(com_mid15)-1))*10,3)

subset_group16 = subset(경기도,경기도$시군구명 == listset[17])
com_mid16 = table(subset_group16$상권업종중분류명)
score_sgg_mid16 = round(((sum(com_mid16)-com_mid16) / (sum(com_mid16)) * 100 / (length(com_mid16)-1))*10,3)

subset_group17 = subset(경기도,경기도$시군구명 == listset[18])
com_mid17 = table(subset_group17$상권업종중분류명)
score_sgg_mid17 = round(((sum(com_mid17)-com_mid17) / (sum(com_mid17)) * 100 / (length(com_mid17)-1))*10,3)

subset_group18 = subset(경기도,경기도$시군구명 == listset[19])
com_mid18 = table(subset_group18$상권업종중분류명)
score_sgg_mid18 = round(((sum(com_mid18)-com_mid18) / (sum(com_mid18)) * 100 / (length(com_mid18)-1))*10,3)

subset_group19 = subset(경기도,경기도$시군구명 == listset[20])
com_mid19 = table(subset_group19$상권업종중분류명)
score_sgg_mid19 = round(((sum(com_mid19)-com_mid19) / (sum(com_mid19)) * 100 / (length(com_mid19)-1))*10,3)

subset_group20 = subset(경기도,경기도$시군구명 == listset[21])
com_mid20 = table(subset_group20$상권업종중분류명)
score_sgg_mid20 = round(((sum(com_mid20)-com_mid20) / (sum(com_mid20)) * 100 / (length(com_mid20)-1))*10,3)

subset_group21 = subset(경기도,경기도$시군구명 == listset[22])
com_mid21 = table(subset_group21$상권업종중분류명)
score_sgg_mid21 = round(((sum(com_mid21)-com_mid21) / (sum(com_mid21)) * 100 / (length(com_mid21)-1))*10,3)

subset_group22 = subset(경기도,경기도$시군구명 == listset[23])
com_mid22 = table(subset_group22$상권업종중분류명)
score_sgg_mid22 = round(((sum(com_mid22)-com_mid22) / (sum(com_mid22)) * 100 / (length(com_mid22)-1))*10,3)

subset_group23 = subset(경기도,경기도$시군구명 == listset[24])
com_mid23= table(subset_group23$상권업종중분류명)
score_sgg_mid23 = round(((sum(com_mid23)-com_mid23) / (sum(com_mid23)) * 100 / (length(com_mid23)-1))*10,3)

subset_group24 = subset(경기도,경기도$시군구명 == listset[25])
com_mid24 = table(subset_group24$상권업종중분류명)
score_sgg_mid24 = round(((sum(com_mid24)-com_mid24) / (sum(com_mid24)) * 100 / (length(com_mid24)-1))*10,3)

subset_group25 = subset(경기도,경기도$시군구명 %in% c("고양시 덕양구","고양시 일산동구","고양시 일산서구"))
com_mid25 = table(subset_group25$상권업종중분류명)
score_sgg_mid25 = round(((sum(com_mid25)-com_mid25) / (sum(com_mid25)) * 100 / (length(com_mid25)-1))*10,3)

subset_group26 = subset(경기도,경기도$시군구명 %in% c("성남시 분당구","성남시 수정구","성남시 중원구"))
com_mid26 = table(subset_group26$상권업종중분류명)
score_sgg_mid26 = round(((sum(com_mid26)-com_mid26) / (sum(com_mid26)) * 100 / (length(com_mid26)-1))*10,3)

subset_group27 = subset(경기도,경기도$시군구명 %in% c("수원시 팔달구","수원시 장안구","수원시 영통구","수원시 권선구"))
com_mid27 = table(subset_group27$상권업종중분류명)
score_sgg_mid27 = round(((sum(com_mid27)-com_mid27) / (sum(com_mid27)) * 100 / (length(com_mid27)-1))*10,3)

subset_group28 = subset(경기도,경기도$시군구명 %in% c("안산시 단원구","안산시 상록구"))
com_mid28 = table(subset_group28$상권업종중분류명)
score_sgg_mid28 = round(((sum(com_mid28)-com_mid28) / (sum(com_mid28)) * 100 / (length(com_mid28)-1))*10,3)


subset_group29 = subset(경기도,경기도$시군구명 %in% c("안양시 만안구","안양시 동안구"))
com_mid29 = table(subset_group29$상권업종중분류명)
score_sgg_mid29 = round(((sum(com_mid29)-com_mid29) / (sum(com_mid29)) * 100 / (length(com_mid29)-1))*10,3)

subset_group30 = subset(경기도,경기도$시군구명 %in% c("용인시 수지구","용인시 기흥구","용인시 처인구"))
com_mid30 = table(subset_group30$상권업종중분류명)
score_sgg_mid30 = round(((sum(com_mid30)-com_mid30) / (sum(com_mid30)) * 100 / (length(com_mid30)-1))*10,3)



listset
가평군 = list("지역경쟁력"= unname(score_sgg["가평군"]), "업종경쟁력"=as.list(score_sgg_mid))
과천시 = list("지역경쟁력"= unname(score_sgg["과천시"]), "업종경쟁력"=as.list(score_sgg_mid1))
광명시 = list("지역경쟁력"= unname(score_sgg["광명시"]), "업종경쟁력"=as.list(score_sgg_mid2))
광주시 = list("지역경쟁력"= unname(score_sgg["광주시"]), "업종경쟁력"=as.list(score_sgg_mid3))
구리시 = list("지역경쟁력"= unname(score_sgg["구리시"]), "업종경쟁력"=as.list(score_sgg_mid4))
군포시= list("지역경쟁력"= unname(score_sgg["군포시"]), "업종경쟁력"=as.list(score_sgg_mid5))
김포시= list("지역경쟁력"= unname(score_sgg["김포시"]), "업종경쟁력"=as.list(score_sgg_mid6))
남양주시= list("지역경쟁력"= unname(score_sgg["남양주시"]), "업종경쟁력"=as.list(score_sgg_mid7))
동두천시= list("지역경쟁력"= unname(score_sgg["동두천시"]), "업종경쟁력"=as.list(score_sgg_mid8))
부천시= list("지역경쟁력"= unname(score_sgg["부천시"]), "업종경쟁력"=as.list(score_sgg_mid9))
시흥시= list("지역경쟁력"= unname(score_sgg["시흥시"]), "업종경쟁력"=as.list(score_sgg_mid10))
안성시= list("지역경쟁력"= unname(score_sgg["안성시"]), "업종경쟁력"=as.list(score_sgg_mid11))
양주시= list("지역경쟁력"= unname(score_sgg["양주시"]), "업종경쟁력"=as.list(score_sgg_mid12))
양평군= list("지역경쟁력"= unname(score_sgg["양평군"]), "업종경쟁력"=as.list(score_sgg_mid13))
여주시= list("지역경쟁력"= unname(score_sgg["여주시"]), "업종경쟁력"=as.list(score_sgg_mid14))
연천군= list("지역경쟁력"= unname(score_sgg["연천군"]), "업종경쟁력"=as.list(score_sgg_mid15))
오산시= list("지역경쟁력"= unname(score_sgg["오산시"]), "업종경쟁력"=as.list(score_sgg_mid16))
의왕시= list("지역경쟁력"= unname(score_sgg["의왕시"]), "업종경쟁력"=as.list(score_sgg_mid17))
의정부시= list("지역경쟁력"= unname(score_sgg["의정부시"]), "업종경쟁력"=as.list(score_sgg_mid18))
이천시= list("지역경쟁력"= unname(score_sgg["이천시"]), "업종경쟁력"=as.list(score_sgg_mid19))
파주시= list("지역경쟁력"= unname(score_sgg["파주시"]), "업종경쟁력"=as.list(score_sgg_mid20))
평택시= list("지역경쟁력"= unname(score_sgg["평택시"]), "업종경쟁력"=as.list(score_sgg_mid21))
포천시= list("지역경쟁력"= unname(score_sgg["포천시"]), "업종경쟁력"=as.list(score_sgg_mid22))
하남시= list("지역경쟁력"= unname(score_sgg["하남시"]), "업종경쟁력"=as.list(score_sgg_mid23))
화성시= list("지역경쟁력"= unname(score_sgg["화성시"]), "업종경쟁력"=as.list(score_sgg_mid24))
고양시= list("지역경쟁력"= unname(score_sgg["고양시"]), "업종경쟁력"=as.list(score_sgg_mid25))
성남시= list("지역경쟁력"= unname(score_sgg["성남시"]), "업종경쟁력"=as.list(score_sgg_mid26))
수원시= list("지역경쟁력"= unname(score_sgg["수원시"]), "업종경쟁력"=as.list(score_sgg_mid27))
안산시= list("지역경쟁력"= unname(score_sgg["안산시"]), "업종경쟁력"=as.list(score_sgg_mid28))
안양시= list("지역경쟁력"= unname(score_sgg["안양시"]), "업종경쟁력"=as.list(score_sgg_mid29))
용인시= list("지역경쟁력"= unname(score_sgg["용인시"]), "업종경쟁력"=as.list(score_sgg_mid30))



경기도 = list("가평군"=가평군,"과천시"=과천시,"광명시"=광명시,"광주시"=광주시,"구리시"=구리시,"군포시"=군포시,
           "김포시"=김포시,"남양주시"=남양주시,"동두천시"=동두천시,"부천시"=부천시,"시흥시"=시흥시,"안성시"=안성시,
           "양주시"=양주시,"양평군"=양평군,"여주시"=여주시,"연천군"=연천군,"오산시"=오산시,"의왕시"=의왕시,
           "의정부시"=의정부시,"이천시"=이천시,"파주시"=파주시,"평택시"=평택시,"포천시"=포천시,"하남시"=하남시,"화성시"=화성시,
           "고양시"=고양시,"성남시"=성남시,"수원시"=수원시,"안산시"=안산시,"안양시"=안양시,"용인시"=용인시)
FILE = NA
FILE_경기도 = list("경기도"=경기도)
FILE_광주 = list("광주광역시"=광주)
FILE_서울 = list("서울특별시"=서울)
FILE_강원도 = list("강원도"=강원도)

FILE = list(FILE_경기도,FILE_강원도,FILE_광주,FILE_서울)
write(FILE,"FILE.txt")

#---------------------------------------------------------------------------------------------------------------

filelist = dir("C:/Users/abc/Desktop/hanium/201706/경상남도",pattern=".csv")
#tables = lapply(paste("../data/", wide, "/", date, "/", city,"/",filelist,sep=""),read.csv,header=T)
경상남도 = do.call(rbind,lapply(paste("C:/Users/abc/Desktop/hanium/201706/경상남도/",filelist,sep=""),read.csv,header=T))

tail(경상남도,10)
listset = unique(경상남도$시군구명)
listset = unlist(listset)
length(listset)

sgg = table(경상남도$시군구명)
sgg["창원시"] = sgg[13]+sgg[14]+sgg[15]+sgg[16]+sgg[17]
sgg=sgg[c(-13:-17)]
#sgg=sgg[sgg != 0]
sum(sgg)
listset = names(sgg)
score_sgg = round(((sum(sgg)-sgg) / (sum(sgg)) * 100 / (length(sgg)-1)),3)
length(listset)

subset_group = subset(경상남도,경상남도$시군구명 == listset[1])
com_mid = table(subset_group$상권업종중분류명)
score_sgg_mid = round(((sum(com_mid)-com_mid) / (sum(com_mid)) * 100 / (length(com_mid)-1))*10,3)

subset_group1 = subset(경상남도,경상남도$시군구명 == listset[2])
com_mid1 = table(subset_group1$상권업종중분류명)
score_sgg_mid1 = round(((sum(com_mid1)-com_mid1) / (sum(com_mid1)) * 100 / (length(com_mid1)-1))*10,3)

subset_group2 = subset(경상남도,경상남도$시군구명 == listset[3])
com_mid2 = table(subset_group2$상권업종중분류명)
score_sgg_mid2 = round(((sum(com_mid2)-com_mid2) / (sum(com_mid2)) * 100 / (length(com_mid2)-1))*10,3)

subset_group3 = subset(경상남도,경상남도$시군구명 == listset[4])
com_mid3 = table(subset_group3$상권업종중분류명)
score_sgg_mid3 = round(((sum(com_mid3)-com_mid3) / (sum(com_mid3)) * 100 / (length(com_mid3)-1))*10,3)

subset_group4 = subset(경상남도,경상남도$시군구명 == listset[5])
com_mid4 = table(subset_group4$상권업종중분류명)
score_sgg_mid4 = round(((sum(com_mid4)-com_mid4) / (sum(com_mid4)) * 100 / (length(com_mid4)-1))*10,3)

subset_group5 = subset(경상남도,경상남도$시군구명 == listset[6])
com_mid5= table(subset_group5$상권업종중분류명)
score_sgg_mid5 = round(((sum(com_mid5)-com_mid5) / (sum(com_mid5)) * 100 / (length(com_mid5)-1))*10,3)

subset_group6 = subset(경상남도,경상남도$시군구명 == listset[7])
com_mid6 = table(subset_group6$상권업종중분류명)
score_sgg_mid6 = round(((sum(com_mid6)-com_mid6) / (sum(com_mid6)) * 100 / (length(com_mid6)-1))*10,3)

subset_group7 = subset(경상남도,경상남도$시군구명 == listset[8])
com_mid7 = table(subset_group$상권업종중분류명)
score_sgg_mid7 = round(((sum(com_mid7)-com_mid7) / (sum(com_mid7)) * 100 / (length(com_mid7)-1))*10,3)

subset_group8 = subset(경상남도,경상남도$시군구명 == listset[9])
com_mid8 = table(subset_group8$상권업종중분류명)
score_sgg_mid8 = round(((sum(com_mid8)-com_mid8) / (sum(com_mid8)) * 100 / (length(com_mid8)-1))*10,3)

subset_group9 = subset(경상남도,경상남도$시군구명 == listset[10])
com_mid9 = table(subset_group9$상권업종중분류명)
score_sgg_mid9 = round(((sum(com_mid9)-com_mid9) / (sum(com_mid9)) * 100 / (length(com_mid9)-1))*10,3)

subset_group10 = subset(경상남도,경상남도$시군구명 == listset[11])
com_mid10 = table(subset_group10$상권업종중분류명)
score_sgg_mid10 = round(((sum(com_mid10)-com_mid10) / (sum(com_mid10)) * 100 / (length(com_mid10)-1))*10,3)


subset_group11 = subset(경상남도,경상남도$시군구명 == listset[12])
com_mid11 = table(subset_group11$상권업종중분류명)
score_sgg_mid11 = round(((sum(com_mid11)-com_mid11) / (sum(com_mid11)) * 100 / (length(com_mid11)-1))*10,3)

subset_group12 = subset(경상남도,경상남도$시군구명 == listset[13])
com_mid12 = table(subset_group12$상권업종중분류명)
score_sgg_mid12 = round(((sum(com_mid12)-com_mid12) / (sum(com_mid12)) * 100 / (length(com_mid12)-1))*10,3)

subset_group13 = subset(경상남도,경상남도$시군구명 == listset[14])
com_mid13 = table(subset_group13$상권업종중분류명)
score_sgg_mid13 = round(((sum(com_mid13)-com_mid13) / (sum(com_mid13)) * 100 / (length(com_mid13)-1))*10,3)

subset_group14 = subset(경상남도,경상남도$시군구명 == listset[15])
com_mid14 = table(subset_group14$상권업종중분류명)
score_sgg_mid14 = round(((sum(com_mid14)-com_mid14) / (sum(com_mid14)) * 100 / (length(com_mid14)-1))*10,3)

subset_group15 = subset(경상남도,경상남도$시군구명 == listset[16])
com_mid15= table(subset_group15$상권업종중분류명)
score_sgg_mid15 = round(((sum(com_mid15)-com_mid15) / (sum(com_mid15)) * 100 / (length(com_mid15)-1))*10,3)

subset_group16 = subset(경상남도,경상남도$시군구명 == listset[17])
com_mid16 = table(subset_group16$상권업종중분류명)
score_sgg_mid16 = round(((sum(com_mid16)-com_mid16) / (sum(com_mid16)) * 100 / (length(com_mid16)-1))*10,3)

subset_group17 = subset(경상남도,경상남도$시군구명 %in% c("창원시 마산합포구","창원시 마산회원구","창원시 성산구","창원시 의창구","창원시 진해구"))
com_mid17 = table(subset_group17$상권업종중분류명)
score_sgg_mid17 = round(((sum(com_mid17)-com_mid17) / (sum(com_mid17)) * 100 / (length(com_mid17)-1))*10,3)



listset
as.numeric(unname(score_sgg["거제시"]))
거제시 = list("지역경쟁력"= as.numeric(unname(score_sgg["거제시"])), "업종경쟁력"=as.list(score_sgg_mid))
거창군 = list("지역경쟁력"= as.numeric(unname(score_sgg["거창군"])), "업종경쟁력"=as.list(score_sgg_mid1))
고성군 = list("지역경쟁력"= as.numeric(unname(score_sgg["고성군"])), "업종경쟁력"=as.list(score_sgg_mid2))
김해시 = list("지역경쟁력"= as.numeric(unname(score_sgg["김해시"])), "업종경쟁력"=as.list(score_sgg_mid3))
남해군 = list("지역경쟁력"= as.numeric(unname(score_sgg["남해군"])), "업종경쟁력"=as.list(score_sgg_mid4))
밀양시= list("지역경쟁력"= as.numeric(unname(score_sgg["밀양시"])), "업종경쟁력"=as.list(score_sgg_mid5))
사천시= list("지역경쟁력"= as.numeric(unname(score_sgg["사천시"])), "업종경쟁력"=as.list(score_sgg_mid6))
산청군= list("지역경쟁력"= as.numeric(unname(score_sgg["산청군"])), "업종경쟁력"=as.list(score_sgg_mid7))
양산시= list("지역경쟁력"= as.numeric(unname(score_sgg["양산시"])), "업종경쟁력"=as.list(score_sgg_mid8))
의령군= list("지역경쟁력"= as.numeric(unname(score_sgg["의령군"])), "업종경쟁력"=as.list(score_sgg_mid9))
진주시= list("지역경쟁력"= as.numeric(unname(score_sgg["진주시"])), "업종경쟁력"=as.list(score_sgg_mid10))
창녕군= list("지역경쟁력"= as.numeric(unname(score_sgg["창녕군"])), "업종경쟁력"=as.list(score_sgg_mid11))
통영시= list("지역경쟁력"= as.numeric(unname(score_sgg["통영시"])), "업종경쟁력"=as.list(score_sgg_mid12))
하동군= list("지역경쟁력"= as.numeric(unname(score_sgg["하동군"])), "업종경쟁력"=as.list(score_sgg_mid13))
함안군= list("지역경쟁력"= as.numeric(unname(score_sgg["함안군"])), "업종경쟁력"=as.list(score_sgg_mid14))
함양군= list("지역경쟁력"= as.numeric(unname(score_sgg["함양군"])), "업종경쟁력"=as.list(score_sgg_mid15))
합천군= list("지역경쟁력"= as.numeric(unname(score_sgg["합천군"])), "업종경쟁력"=as.list(score_sgg_mid16))
창원시= list("지역경쟁력"= as.numeric(unname(score_sgg["창원시"])), "업종경쟁력"=as.list(score_sgg_mid17))


경상남도 = list("거제시"=거제시,"거창군"=거창군,"고성군"=고성군,"김해시"=김해시,"남해군"=남해군,"밀양시"=밀양시,
            "사천시"=사천시,"산청군"=산청군,"양산시"=양산시,"의령군"=의령군,"진주시"=진주시,"창녕군"=창녕군,
            "통영시"=통영시,"하동군"=하동군,"함안군"=함안군,"함양군"=함양군,"합천군"=합천군,"창원시"=창원시)
FILE = NA
FILE_경기도 = list("경기도"=경기도)
FILE_광주 = list("광주광역시"=광주)
FILE_서울 = list("서울특별시"=서울)
FILE_강원도 = list("강원도"=강원도)
FILE_경상남도 = list("경상남도"=경상남도)

toJSON(FILE_경상남도)
FILE = list(FILE_경기도,FILE_강원도,FILE_광주,FILE_서울)
write(FILE,"FILE.txt")

#---------------------------------------------------------------------------------------------------------------
filelist = dir("C:/Users/abc/Desktop/hanium/201706/경상북도",pattern=".csv")
#tables = lapply(paste("../data/", wide, "/", date, "/", city,"/",filelist,sep=""),read.csv,header=T)
경상북도 = do.call(rbind,lapply(paste("C:/Users/abc/Desktop/hanium/201706/경상북도/",filelist,sep=""),read.csv,header=T))
head(경상북도)

listset = unique(경상북도$시군구명)
listset = unlist(listset)
length(listset)

sgg = table(경상북도$시군구명)
sgg["포항시"] = sgg[23]+sgg[24]
sgg=sgg[c(-23,-24)]
sgg=sgg[sgg != 0]
listset = names(sgg)
score_sgg = round(((sum(sgg)-sgg) / (sum(sgg)) * 100 / (length(sgg)-1)),3)
length(listset)
subset_group = subset(경상북도,경상북도$시군구명 == listset[1])
com_mid = table(subset_group$상권업종중분류명)
score_sgg_mid = round(((sum(com_mid)-com_mid) / (sum(com_mid)) * 100 / (length(com_mid)-1))*10,3)

subset_group1 = subset(경상북도,경상북도$시군구명 == listset[2])
com_mid1 = table(subset_group1$상권업종중분류명)
score_sgg_mid1 = round(((sum(com_mid1)-com_mid1) / (sum(com_mid1)) * 100 / (length(com_mid1)-1))*10,3)

subset_group2 = subset(경상북도,경상북도$시군구명 == listset[3])
com_mid2 = table(subset_group2$상권업종중분류명)
score_sgg_mid2 = round(((sum(com_mid2)-com_mid2) / (sum(com_mid2)) * 100 / (length(com_mid2)-1))*10,3)

subset_group3 = subset(경상북도,경상북도$시군구명 == listset[4])
com_mid3 = table(subset_group3$상권업종중분류명)
score_sgg_mid3 = round(((sum(com_mid3)-com_mid3) / (sum(com_mid3)) * 100 / (length(com_mid3)-1))*10,3)

subset_group4 = subset(경상북도,경상북도$시군구명 == listset[5])
com_mid4 = table(subset_group4$상권업종중분류명)
score_sgg_mid4 = round(((sum(com_mid4)-com_mid4) / (sum(com_mid4)) * 100 / (length(com_mid4)-1))*10,3)

subset_group5 = subset(경상북도,경상북도$시군구명 == listset[6])
com_mid5= table(subset_group5$상권업종중분류명)
score_sgg_mid5 = round(((sum(com_mid5)-com_mid5) / (sum(com_mid5)) * 100 / (length(com_mid5)-1))*10,3)

subset_group6 = subset(경상북도,경상북도$시군구명 == listset[7])
com_mid6 = table(subset_group6$상권업종중분류명)
score_sgg_mid6 = round(((sum(com_mid6)-com_mid6) / (sum(com_mid6)) * 100 / (length(com_mid6)-1))*10,3)

subset_group7 = subset(경상북도,경상북도$시군구명 == listset[8])
com_mid7 = table(subset_group$상권업종중분류명)
score_sgg_mid7 = round(((sum(com_mid7)-com_mid7) / (sum(com_mid7)) * 100 / (length(com_mid7)-1))*10,3)

subset_group8 = subset(경상북도,경상북도$시군구명 == listset[9])
com_mid8 = table(subset_group8$상권업종중분류명)
score_sgg_mid8 = round(((sum(com_mid8)-com_mid8) / (sum(com_mid8)) * 100 / (length(com_mid8)-1))*10,3)

subset_group9 = subset(경상북도,경상북도$시군구명 == listset[10])
com_mid9 = table(subset_group9$상권업종중분류명)
score_sgg_mid9 = round(((sum(com_mid9)-com_mid9) / (sum(com_mid9)) * 100 / (length(com_mid9)-1))*10,3)

subset_group10 = subset(경상북도,경상북도$시군구명 == listset[11])
com_mid10 = table(subset_group10$상권업종중분류명)
score_sgg_mid10 = round(((sum(com_mid10)-com_mid10) / (sum(com_mid10)) * 100 / (length(com_mid10)-1))*10,3)


subset_group11 = subset(경상북도,경상북도$시군구명 == listset[12])
com_mid11 = table(subset_group11$상권업종중분류명)
score_sgg_mid11 = round(((sum(com_mid11)-com_mid11) / (sum(com_mid11)) * 100 / (length(com_mid11)-1))*10,3)

subset_group12 = subset(경상북도,경상북도$시군구명 == listset[13])
com_mid12 = table(subset_group12$상권업종중분류명)
score_sgg_mid12 = round(((sum(com_mid12)-com_mid12) / (sum(com_mid12)) * 100 / (length(com_mid12)-1))*10,3)

subset_group13 = subset(경상북도,경상북도$시군구명 == listset[14])
com_mid13 = table(subset_group13$상권업종중분류명)
score_sgg_mid13 = round(((sum(com_mid13)-com_mid13) / (sum(com_mid13)) * 100 / (length(com_mid13)-1))*10,3)

subset_group14 = subset(경상북도,경상북도$시군구명 == listset[15])
com_mid14 = table(subset_group14$상권업종중분류명)
score_sgg_mid14 = round(((sum(com_mid14)-com_mid14) / (sum(com_mid14)) * 100 / (length(com_mid14)-1))*10,3)

subset_group15 = subset(경상북도,경상북도$시군구명 == listset[16])
com_mid15= table(subset_group15$상권업종중분류명)
score_sgg_mid15 = round(((sum(com_mid15)-com_mid15) / (sum(com_mid15)) * 100 / (length(com_mid15)-1))*10,3)

subset_group16 = subset(경상북도,경상북도$시군구명 == listset[17])
com_mid16 = table(subset_group16$상권업종중분류명)
score_sgg_mid16 = round(((sum(com_mid16)-com_mid16) / (sum(com_mid16)) * 100 / (length(com_mid16)-1))*10,3)

subset_group17 = subset(경상북도,경상북도$시군구명 == listset[18])
com_mid17 = table(subset_group17$상권업종중분류명)
score_sgg_mid17 = round(((sum(com_mid17)-com_mid17) / (sum(com_mid17)) * 100 / (length(com_mid17)-1))*10,3)

subset_group18 = subset(경상북도,경상북도$시군구명 == listset[19])
com_mid18 = table(subset_group18$상권업종중분류명)
score_sgg_mid18 = round(((sum(com_mid18)-com_mid18) / (sum(com_mid18)) * 100 / (length(com_mid18)-1))*10,3)

subset_group19 = subset(경상북도,경상북도$시군구명 == listset[20])
com_mid19 = table(subset_group19$상권업종중분류명)
score_sgg_mid19 = round(((sum(com_mid19)-com_mid19) / (sum(com_mid19)) * 100 / (length(com_mid19)-1))*10,3)

subset_group20 = subset(경상북도,경상북도$시군구명 == listset[21])
com_mid20 = table(subset_group20$상권업종중분류명)
score_sgg_mid20 = round(((sum(com_mid20)-com_mid20) / (sum(com_mid20)) * 100 / (length(com_mid20)-1))*10,3)

subset_group21 = subset(경상북도,경상북도$시군구명 == listset[22])
com_mid21 = table(subset_group21$상권업종중분류명)
score_sgg_mid21 = round(((sum(com_mid21)-com_mid21) / (sum(com_mid21)) * 100 / (length(com_mid21)-1))*10,3)

subset_group22 = subset(경상북도,경상북도$시군구명 %in% c("포항시 남구","포항시 북구"))
com_mid22 = table(subset_group22$상권업종중분류명)
score_sgg_mid22 = round(((sum(com_mid22)-com_mid22) / (sum(com_mid22)) * 100 / (length(com_mid22)-1))*10,3)

listset
경산시 = list("지역경쟁력"= unname(score_sgg["경산시"]), "업종경쟁력"=as.list(score_sgg_mid))
경주시 = list("지역경쟁력"= unname(score_sgg["경주시"]), "업종경쟁력"=as.list(score_sgg_mid1))
고령군 = list("지역경쟁력"= unname(score_sgg["고령군"]), "업종경쟁력"=as.list(score_sgg_mid2))
구미시 = list("지역경쟁력"= unname(score_sgg["구미시"]), "업종경쟁력"=as.list(score_sgg_mid3))
군위군 = list("지역경쟁력"= unname(score_sgg["군위군"]), "업종경쟁력"=as.list(score_sgg_mid4))
김천시= list("지역경쟁력"= unname(score_sgg["김천시"]), "업종경쟁력"=as.list(score_sgg_mid5))
문경시= list("지역경쟁력"= unname(score_sgg["문경시"]), "업종경쟁력"=as.list(score_sgg_mid6))
봉화군= list("지역경쟁력"= unname(score_sgg["봉화군"]), "업종경쟁력"=as.list(score_sgg_mid7))
상주시= list("지역경쟁력"= unname(score_sgg["상주시"]), "업종경쟁력"=as.list(score_sgg_mid8))
성주군= list("지역경쟁력"= unname(score_sgg["성주군"]), "업종경쟁력"=as.list(score_sgg_mid9))
안동시= list("지역경쟁력"= unname(score_sgg["안동시"]), "업종경쟁력"=as.list(score_sgg_mid10))
영덕군= list("지역경쟁력"= unname(score_sgg["영덕군"]), "업종경쟁력"=as.list(score_sgg_mid11))
영양군=list("지역경쟁력"= unname(score_sgg["영양군"]), "업종경쟁력"=as.list(score_sgg_mid12))
영주시= list("지역경쟁력"= unname(score_sgg["영주시"]), "업종경쟁력"=as.list(score_sgg_mid13))
영천시= list("지역경쟁력"= unname(score_sgg["영천시"]), "업종경쟁력"=as.list(score_sgg_mid14))
예천군= list("지역경쟁력"= unname(score_sgg["예천군"]), "업종경쟁력"=as.list(score_sgg_mid15))
울릉군= list("지역경쟁력"= unname(score_sgg["울릉군"]), "업종경쟁력"=as.list(score_sgg_mid16))
울진군= list("지역경쟁력"= unname(score_sgg["울진군"]), "업종경쟁력"=as.list(score_sgg_mid17))
의성군= list("지역경쟁력"= unname(score_sgg["의성군"]), "업종경쟁력"=as.list(score_sgg_mid18))
청도군= list("지역경쟁력"= unname(score_sgg["청도군"]), "업종경쟁력"=as.list(score_sgg_mid19))
청송군= list("지역경쟁력"= unname(score_sgg["청송군"]), "업종경쟁력"=as.list(score_sgg_mid20))
칠곡군= list("지역경쟁력"= unname(score_sgg["칠곡군"]), "업종경쟁력"=as.list(score_sgg_mid21))
포항시= list("지역경쟁력"= unname(score_sgg["포항시"]), "업종경쟁력"=as.list(score_sgg_mid22))


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
filelist = dir("C:/Users/abc/Desktop/hanium/201706/대구광역시",pattern=".csv")
#tables = lapply(paste("../data/", wide, "/", date, "/", city,"/",filelist,sep=""),read.csv,header=T)
대구광역시 = do.call(rbind,lapply(paste("C:/Users/abc/Desktop/hanium/201706/대구광역시/",filelist,sep=""),read.csv,header=T))

head(대구광역시)

listset = unique(대구광역시$시군구명)
listset = unlist(listset)
length(listset)

sgg = table(대구광역시$시군구명)
sgg["포항시"] = sgg[23]+sgg[24]
sgg=sgg[c(-23,-24)]
sgg=sgg[sgg != 0]
listset = names(sgg)
score_sgg = round(((sum(sgg)-sgg) / (sum(sgg)) * 100 / (length(sgg)-1)),3)
length(listset)
subset_group = subset(대구광역시,대구광역시$시군구명 == listset[1])
com_mid = table(subset_group$상권업종중분류명)
score_sgg_mid = round(((sum(com_mid)-com_mid) / (sum(com_mid)) * 100 / (length(com_mid)-1))*10,3)

subset_group1 = subset(대구광역시,대구광역시$시군구명 == listset[2])
com_mid1 = table(subset_group1$상권업종중분류명)
score_sgg_mid1 = round(((sum(com_mid1)-com_mid1) / (sum(com_mid1)) * 100 / (length(com_mid1)-1))*10,3)

subset_group2 = subset(대구광역시,대구광역시$시군구명 == listset[3])
com_mid2 = table(subset_group2$상권업종중분류명)
score_sgg_mid2 = round(((sum(com_mid2)-com_mid2) / (sum(com_mid2)) * 100 / (length(com_mid2)-1))*10,3)

subset_group3 = subset(대구광역시,대구광역시$시군구명 == listset[4])
com_mid3 = table(subset_group3$상권업종중분류명)
score_sgg_mid3 = round(((sum(com_mid3)-com_mid3) / (sum(com_mid3)) * 100 / (length(com_mid3)-1))*10,3)

subset_group4 = subset(대구광역시,대구광역시$시군구명 == listset[5])
com_mid4 = table(subset_group4$상권업종중분류명)
score_sgg_mid4 = round(((sum(com_mid4)-com_mid4) / (sum(com_mid4)) * 100 / (length(com_mid4)-1))*10,3)

subset_group5 = subset(대구광역시,대구광역시$시군구명 == listset[6])
com_mid5= table(subset_group5$상권업종중분류명)
score_sgg_mid5 = round(((sum(com_mid5)-com_mid5) / (sum(com_mid5)) * 100 / (length(com_mid5)-1))*10,3)

subset_group6 = subset(대구광역시,대구광역시$시군구명 == listset[7])
com_mid6 = table(subset_group6$상권업종중분류명)
score_sgg_mid6 = round(((sum(com_mid6)-com_mid6) / (sum(com_mid6)) * 100 / (length(com_mid6)-1))*10,3)

subset_group7 = subset(대구광역시,대구광역시$시군구명 == listset[8])
com_mid7 = table(subset_group$상권업종중분류명)
score_sgg_mid7 = round(((sum(com_mid7)-com_mid7) / (sum(com_mid7)) * 100 / (length(com_mid7)-1))*10,3)

listset
남구 = list("지역경쟁력"= unname(score_sgg["남구"]), "업종경쟁력"=as.list(score_sgg_mid))
달서구 = list("지역경쟁력"= unname(score_sgg["달서구"]), "업종경쟁력"=as.list(score_sgg_mid1))
달성군 = list("지역경쟁력"= unname(score_sgg["달성군"]), "업종경쟁력"=as.list(score_sgg_mid2))
동구 = list("지역경쟁력"= unname(score_sgg["동구"]), "업종경쟁력"=as.list(score_sgg_mid3))
북구 = list("지역경쟁력"= unname(score_sgg["북구"]), "업종경쟁력"=as.list(score_sgg_mid4))
서구= list("지역경쟁력"= unname(score_sgg["서구"]), "업종경쟁력"=as.list(score_sgg_mid5))
수성구= list("지역경쟁력"= unname(score_sgg["수성구"]), "업종경쟁력"=as.list(score_sgg_mid6))
중구= list("지역경쟁력"= unname(score_sgg["중구"]), "업종경쟁력"=as.list(score_sgg_mid7))

대구광역시 = list("남구"=남구,"달서구"=달서구,"달성군"=달성군, "동구"=동구,"북구"=북구,"서구"=서구,"수성구"=수성구,"중구"=중구  )

FILE_대구 = list("대구광역시"=대구광역시)

#-------------------------------------------------------------------------------------------------
filelist = dir("C:/Users/abc/Desktop/hanium/201706/대전광역시",pattern=".csv")
#tables = lapply(paste("../data/", wide, "/", date, "/", city,"/",filelist,sep=""),read.csv,header=T)
대전광역시 = do.call(rbind,lapply(paste("C:/Users/abc/Desktop/hanium/201706/대전광역시/",filelist,sep=""),read.csv,header=T))
head(대전광역시)

listset = unique(대전광역시$시군구명)
listset = unlist(listset)
length(listset)

sgg = table(대전광역시$시군구명)
sgg["포항시"] = sgg[23]+sgg[24]
sgg=sgg[c(-23,-24)]
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


경상북도 = list("대덕구"=대덕구, "동구"=동구,"서구"=서구,"유성구"=유성구,"중구"=중구)


FILE_경상북도 = list("경상북도"=경상북도)
FILE = list(FILE_경기도,FILE_강원도,FILE_광주,FILE_서울)
write(FILE,"FILE.txt")
#-----------------------------------------------------------------------------------------------------
filelist = dir("C:/Users/abc/Desktop/hanium/201706/부산광역시",pattern=".csv")
#tables = lapply(paste("../data/", wide, "/", date, "/", city,"/",filelist,sep=""),read.csv,header=T)
부산광역시 = do.call(rbind,lapply(paste("C:/Users/abc/Desktop/hanium/201706/부산광역시/",filelist,sep=""),read.csv,header=T))
head(부산광역시)

listset = unique(부산광역시$시군구명)
listset = unlist(listset)
length(listset)

sgg = table(부산광역시$시군구명)
sgg["포항시"] = sgg[23]+sgg[24]
sgg=sgg[c(-23,-24)]
sgg=sgg[sgg != 0]
listset = names(sgg)
score_sgg = round(((sum(sgg)-sgg) / (sum(sgg)) * 100 / (length(sgg)-1)),3)
length(listset)
subset_group = subset(부산광역시,부산광역시$시군구명 == listset[1])
com_mid = table(subset_group$상권업종중분류명)
score_sgg_mid = round(((sum(com_mid)-com_mid) / (sum(com_mid)) * 100 / (length(com_mid)-1))*10,3)

subset_group1 = subset(부산광역시,부산광역시$시군구명 == listset[2])
com_mid1 = table(subset_group1$상권업종중분류명)
score_sgg_mid1 = round(((sum(com_mid1)-com_mid1) / (sum(com_mid1)) * 100 / (length(com_mid1)-1))*10,3)

subset_group2 = subset(부산광역시,부산광역시$시군구명 == listset[3])
com_mid2 = table(subset_group2$상권업종중분류명)
score_sgg_mid2 = round(((sum(com_mid2)-com_mid2) / (sum(com_mid2)) * 100 / (length(com_mid2)-1))*10,3)

subset_group3 = subset(부산광역시,부산광역시$시군구명 == listset[4])
com_mid3 = table(subset_group3$상권업종중분류명)
score_sgg_mid3 = round(((sum(com_mid3)-com_mid3) / (sum(com_mid3)) * 100 / (length(com_mid3)-1))*10,3)

subset_group4 = subset(부산광역시,부산광역시$시군구명 == listset[5])
com_mid4 = table(subset_group4$상권업종중분류명)
score_sgg_mid4 = round(((sum(com_mid4)-com_mid4) / (sum(com_mid4)) * 100 / (length(com_mid4)-1))*10,3)

subset_group5 = subset(부산광역시,부산광역시$시군구명 == listset[6])
com_mid5= table(subset_group5$상권업종중분류명)
score_sgg_mid5 = round(((sum(com_mid5)-com_mid5) / (sum(com_mid5)) * 100 / (length(com_mid5)-1))*10,3)

subset_group6 = subset(부산광역시,부산광역시$시군구명 == listset[7])
com_mid6 = table(subset_group6$상권업종중분류명)
score_sgg_mid6 = round(((sum(com_mid6)-com_mid6) / (sum(com_mid6)) * 100 / (length(com_mid6)-1))*10,3)

subset_group7 = subset(부산광역시,부산광역시$시군구명 == listset[8])
com_mid7 = table(subset_group$상권업종중분류명)
score_sgg_mid7 = round(((sum(com_mid7)-com_mid7) / (sum(com_mid7)) * 100 / (length(com_mid7)-1))*10,3)

subset_group8 = subset(부산광역시,부산광역시$시군구명 == listset[9])
com_mid8 = table(subset_group8$상권업종중분류명)
score_sgg_mid8 = round(((sum(com_mid8)-com_mid8) / (sum(com_mid8)) * 100 / (length(com_mid8)-1))*10,3)

subset_group9 = subset(부산광역시,부산광역시$시군구명 == listset[10])
com_mid9 = table(subset_group9$상권업종중분류명)
score_sgg_mid9 = round(((sum(com_mid9)-com_mid9) / (sum(com_mid9)) * 100 / (length(com_mid9)-1))*10,3)

subset_group10 = subset(부산광역시,부산광역시$시군구명 == listset[11])
com_mid10 = table(subset_group10$상권업종중분류명)
score_sgg_mid10 = round(((sum(com_mid10)-com_mid10) / (sum(com_mid10)) * 100 / (length(com_mid10)-1))*10,3)


subset_group11 = subset(부산광역시,부산광역시$시군구명 == listset[12])
com_mid11 = table(subset_group11$상권업종중분류명)
score_sgg_mid11 = round(((sum(com_mid11)-com_mid11) / (sum(com_mid11)) * 100 / (length(com_mid11)-1))*10,3)

subset_group12 = subset(부산광역시,부산광역시$시군구명 == listset[13])
com_mid12 = table(subset_group12$상권업종중분류명)
score_sgg_mid12 = round(((sum(com_mid12)-com_mid12) / (sum(com_mid12)) * 100 / (length(com_mid12)-1))*10,3)

subset_group13 = subset(부산광역시,부산광역시$시군구명 == listset[14])
com_mid13 = table(subset_group13$상권업종중분류명)
score_sgg_mid13 = round(((sum(com_mid13)-com_mid13) / (sum(com_mid13)) * 100 / (length(com_mid13)-1))*10,3)

subset_group14 = subset(부산광역시,부산광역시$시군구명 == listset[15])
com_mid14 = table(subset_group14$상권업종중분류명)
score_sgg_mid14 = round(((sum(com_mid14)-com_mid14) / (sum(com_mid14)) * 100 / (length(com_mid14)-1))*10,3)

subset_group15 = subset(부산광역시,부산광역시$시군구명 == listset[16])
com_mid15= table(subset_group15$상권업종중분류명)
score_sgg_mid15 = round(((sum(com_mid15)-com_mid15) / (sum(com_mid15)) * 100 / (length(com_mid15)-1))*10,3)


listset
강서구 = list("지역경쟁력"= unname(score_sgg["강서구"]), "업종경쟁력"=as.list(score_sgg_mid))
금정구 = list("지역경쟁력"= unname(score_sgg["금정구"]), "업종경쟁력"=as.list(score_sgg_mid1))
기장군 = list("지역경쟁력"= unname(score_sgg["기장군"]), "업종경쟁력"=as.list(score_sgg_mid2))
남구 = list("지역경쟁력"= unname(score_sgg["남구"]), "업종경쟁력"=as.list(score_sgg_mid3))
동구 = list("지역경쟁력"= unname(score_sgg["동구"]), "업종경쟁력"=as.list(score_sgg_mid4))
동래구= list("지역경쟁력"= unname(score_sgg["동래구"]), "업종경쟁력"=as.list(score_sgg_mid5))
부산진구= list("지역경쟁력"= unname(score_sgg["부산진구"]), "업종경쟁력"=as.list(score_sgg_mid6))
북구 = list("지역경쟁력"= unname(score_sgg["북구"]), "업종경쟁력"=as.list(score_sgg_mid7))
사상구= list("지역경쟁력"= unname(score_sgg["사상구"]), "업종경쟁력"=as.list(score_sgg_mid8))
사하구= list("지역경쟁력"= unname(score_sgg["사하구"]), "업종경쟁력"=as.list(score_sgg_mid9))
서구= list("지역경쟁력"= unname(score_sgg["서구"]), "업종경쟁력"=as.list(score_sgg_mid10))
수영구= list("지역경쟁력"= unname(score_sgg["수영구"]), "업종경쟁력"=as.list(score_sgg_mid11))
연제구=list("지역경쟁력"= unname(score_sgg["연제구"]), "업종경쟁력"=as.list(score_sgg_mid12))
영도구= list("지역경쟁력"= unname(score_sgg["영도구"]), "업종경쟁력"=as.list(score_sgg_mid13))
중구= list("지역경쟁력"= unname(score_sgg["중구"]), "업종경쟁력"=as.list(score_sgg_mid14))
해운대구= list("지역경쟁력"= unname(score_sgg["해운대구"]), "업종경쟁력"=as.list(score_sgg_mid15))


부산광역시 = list("강서구"=강서구,"금정구"=금정구,"기장군"=기장군,"남구"=남구, "동구"=동구,"동래구"=동래구,
             "부산진구"=부산진구, "북구"=북구,"사상구"=사상구,"사하구"=사하구,"서구"=서구,"수영구"=수영구,   
             "연제구"=연제구,"영도구"=영도구,"중구"=중구, "해운대구"=해운대구)

FILE_부산광역시 = list("부산광역시"=부산광역시)

#--------------------------------------------------------------------------------------------------------------------
filelist = dir("C:/Users/abc/Desktop/hanium/201706/인천광역시",pattern=".csv")
#tables = lapply(paste("../data/", wide, "/", date, "/", city,"/",filelist,sep=""),read.csv,header=T)
인천광역시 = do.call(rbind,lapply(paste("C:/Users/abc/Desktop/hanium/201706/인천광역시/",filelist,sep=""),read.csv,header=T))
head(인천광역시)

listset = unique(인천광역시$시군구명)
listset = unlist(listset)
length(listset)

sgg = table(인천광역시$시군구명)
sgg["포항시"] = sgg[23]+sgg[24]
sgg=sgg[c(-23,-24)]
sgg=sgg[sgg != 0]
listset = names(sgg)
score_sgg = round(((sum(sgg)-sgg) / (sum(sgg)) * 100 / (length(sgg)-1)),3)
length(listset)
subset_group = subset(인천광역시,인천광역시$시군구명 == listset[1])
com_mid = table(subset_group$상권업종중분류명)
score_sgg_mid = round(((sum(com_mid)-com_mid) / (sum(com_mid)) * 100 / (length(com_mid)-1))*10,3)

subset_group1 = subset(인천광역시,인천광역시$시군구명 == listset[2])
com_mid1 = table(subset_group1$상권업종중분류명)
score_sgg_mid1 = round(((sum(com_mid1)-com_mid1) / (sum(com_mid1)) * 100 / (length(com_mid1)-1))*10,3)

subset_group2 = subset(인천광역시,인천광역시$시군구명 == listset[3])
com_mid2 = table(subset_group2$상권업종중분류명)
score_sgg_mid2 = round(((sum(com_mid2)-com_mid2) / (sum(com_mid2)) * 100 / (length(com_mid2)-1))*10,3)

subset_group3 = subset(인천광역시,인천광역시$시군구명 == listset[4])
com_mid3 = table(subset_group3$상권업종중분류명)
score_sgg_mid3 = round(((sum(com_mid3)-com_mid3) / (sum(com_mid3)) * 100 / (length(com_mid3)-1))*10,3)

subset_group4 = subset(인천광역시,인천광역시$시군구명 == listset[5])
com_mid4 = table(subset_group4$상권업종중분류명)
score_sgg_mid4 = round(((sum(com_mid4)-com_mid4) / (sum(com_mid4)) * 100 / (length(com_mid4)-1))*10,3)

subset_group5 = subset(인천광역시,인천광역시$시군구명 == listset[6])
com_mid5= table(subset_group5$상권업종중분류명)
score_sgg_mid5 = round(((sum(com_mid5)-com_mid5) / (sum(com_mid5)) * 100 / (length(com_mid5)-1))*10,3)

subset_group6 = subset(인천광역시,인천광역시$시군구명 == listset[7])
com_mid6 = table(subset_group6$상권업종중분류명)
score_sgg_mid6 = round(((sum(com_mid6)-com_mid6) / (sum(com_mid6)) * 100 / (length(com_mid6)-1))*10,3)

subset_group7 = subset(인천광역시,인천광역시$시군구명 == listset[8])
com_mid7 = table(subset_group$상권업종중분류명)
score_sgg_mid7 = round(((sum(com_mid7)-com_mid7) / (sum(com_mid7)) * 100 / (length(com_mid7)-1))*10,3)

subset_group8 = subset(인천광역시,인천광역시$시군구명 == listset[9])
com_mid8 = table(subset_group8$상권업종중분류명)
score_sgg_mid8 = round(((sum(com_mid8)-com_mid8) / (sum(com_mid8)) * 100 / (length(com_mid8)-1))*10,3)

subset_group9 = subset(인천광역시,인천광역시$시군구명 == listset[10])
com_mid9 = table(subset_group9$상권업종중분류명)
score_sgg_mid9 = round(((sum(com_mid9)-com_mid9) / (sum(com_mid9)) * 100 / (length(com_mid9)-1))*10,3)


listset
강화군 = list("지역경쟁력"= unname(score_sgg["강화군"]), "업종경쟁력"=as.list(score_sgg_mid))
계양구 = list("지역경쟁력"= unname(score_sgg["계양구"]), "업종경쟁력"=as.list(score_sgg_mid1))
남구 = list("지역경쟁력"= unname(score_sgg["남구"]), "업종경쟁력"=as.list(score_sgg_mid2))
남동구 = list("지역경쟁력"= unname(score_sgg["남동구"]), "업종경쟁력"=as.list(score_sgg_mid3))
동구 = list("지역경쟁력"= unname(score_sgg["동구"]), "업종경쟁력"=as.list(score_sgg_mid4))
부평구= list("지역경쟁력"= unname(score_sgg["부평구"]), "업종경쟁력"=as.list(score_sgg_mid5))
서구= list("지역경쟁력"= unname(score_sgg["서구"]), "업종경쟁력"=as.list(score_sgg_mid6))
연수구 = list("지역경쟁력"= unname(score_sgg["연수구"]), "업종경쟁력"=as.list(score_sgg_mid7))
옹진군= list("지역경쟁력"= unname(score_sgg["옹진군"]), "업종경쟁력"=as.list(score_sgg_mid8))
중구= list("지역경쟁력"= unname(score_sgg["중구"]), "업종경쟁력"=as.list(score_sgg_mid9))


인천광역시 = list("강화군"=강화군,"계양구"=계양구,"남구"=남구,"남동구"=남동구,"동구"=동구,"부평구"=부평구,"서구"=서구,
             "연수구"=연수구, "옹진군"=옹진군, "중구"=중구)

FILE_인천광역시 = list("인천광역시"=인천광역시)
#----------------------------------------------------------------------------------------------------------------
filelist = dir("C:/Users/abc/Desktop/hanium/201706/전라남도",pattern=".csv")
#tables = lapply(paste("../data/", wide, "/", date, "/", city,"/",filelist,sep=""),read.csv,header=T)
전라남도 = do.call(rbind,lapply(paste("C:/Users/abc/Desktop/hanium/201706/전라남도/",filelist,sep=""),read.csv,header=T))
head(전라남도)
istset = unique(전라남도$시군구명)
listset = unlist(listset)
length(listset)

sgg = table(전라남도$시군구명)
sgg["포항시"] = sgg[23]+sgg[24]
sgg=sgg[c(-23,-24)]
sgg=sgg[sgg != 0]
listset = names(sgg)
score_sgg = round(((sum(sgg)-sgg) / (sum(sgg)) * 100 / (length(sgg)-1)),3)
length(listset)
subset_group = subset(전라남도,전라남도$시군구명 == listset[1])
com_mid = table(subset_group$상권업종중분류명)
score_sgg_mid = round(((sum(com_mid)-com_mid) / (sum(com_mid)) * 100 / (length(com_mid)-1))*10,3)

subset_group1 = subset(전라남도,전라남도$시군구명 == listset[2])
com_mid1 = table(subset_group1$상권업종중분류명)
score_sgg_mid1 = round(((sum(com_mid1)-com_mid1) / (sum(com_mid1)) * 100 / (length(com_mid1)-1))*10,3)

subset_group2 = subset(전라남도,전라남도$시군구명 == listset[3])
com_mid2 = table(subset_group2$상권업종중분류명)
score_sgg_mid2 = round(((sum(com_mid2)-com_mid2) / (sum(com_mid2)) * 100 / (length(com_mid2)-1))*10,3)

subset_group3 = subset(전라남도,전라남도$시군구명 == listset[4])
com_mid3 = table(subset_group3$상권업종중분류명)
score_sgg_mid3 = round(((sum(com_mid3)-com_mid3) / (sum(com_mid3)) * 100 / (length(com_mid3)-1))*10,3)

subset_group4 = subset(전라남도,전라남도$시군구명 == listset[5])
com_mid4 = table(subset_group4$상권업종중분류명)
score_sgg_mid4 = round(((sum(com_mid4)-com_mid4) / (sum(com_mid4)) * 100 / (length(com_mid4)-1))*10,3)

subset_group5 = subset(전라남도,전라남도$시군구명 == listset[6])
com_mid5= table(subset_group5$상권업종중분류명)
score_sgg_mid5 = round(((sum(com_mid5)-com_mid5) / (sum(com_mid5)) * 100 / (length(com_mid5)-1))*10,3)

subset_group6 = subset(전라남도,전라남도$시군구명 == listset[7])
com_mid6 = table(subset_group6$상권업종중분류명)
score_sgg_mid6 = round(((sum(com_mid6)-com_mid6) / (sum(com_mid6)) * 100 / (length(com_mid6)-1))*10,3)

subset_group7 = subset(전라남도,전라남도$시군구명 == listset[8])
com_mid7 = table(subset_group$상권업종중분류명)
score_sgg_mid7 = round(((sum(com_mid7)-com_mid7) / (sum(com_mid7)) * 100 / (length(com_mid7)-1))*10,3)

subset_group8 = subset(전라남도,전라남도$시군구명 == listset[9])
com_mid8 = table(subset_group8$상권업종중분류명)
score_sgg_mid8 = round(((sum(com_mid8)-com_mid8) / (sum(com_mid8)) * 100 / (length(com_mid8)-1))*10,3)

subset_group9 = subset(전라남도,전라남도$시군구명 == listset[10])
com_mid9 = table(subset_group9$상권업종중분류명)
score_sgg_mid9 = round(((sum(com_mid9)-com_mid9) / (sum(com_mid9)) * 100 / (length(com_mid9)-1))*10,3)

subset_group10 = subset(전라남도,전라남도$시군구명 == listset[11])
com_mid10 = table(subset_group10$상권업종중분류명)
score_sgg_mid10 = round(((sum(com_mid10)-com_mid10) / (sum(com_mid10)) * 100 / (length(com_mid10)-1))*10,3)

subset_group11 = subset(전라남도,전라남도$시군구명 == listset[12])
com_mid11 = table(subset_group11$상권업종중분류명)
score_sgg_mid11 = round(((sum(com_mid11)-com_mid11) / (sum(com_mid11)) * 100 / (length(com_mid11)-1))*10,3)

subset_group12 = subset(전라남도,전라남도$시군구명 == listset[13])
com_mid12 = table(subset_group12$상권업종중분류명)
score_sgg_mid12 = round(((sum(com_mid12)-com_mid12) / (sum(com_mid12)) * 100 / (length(com_mid12)-1))*10,3)

subset_group13 = subset(전라남도,전라남도$시군구명 == listset[14])
com_mid13 = table(subset_group13$상권업종중분류명)
score_sgg_mid13 = round(((sum(com_mid13)-com_mid13) / (sum(com_mid13)) * 100 / (length(com_mid13)-1))*10,3)

subset_group14 = subset(전라남도,전라남도$시군구명 == listset[15])
com_mid14 = table(subset_group14$상권업종중분류명)
score_sgg_mid14 = round(((sum(com_mid14)-com_mid14) / (sum(com_mid14)) * 100 / (length(com_mid14)-1))*10,3)

subset_group15 = subset(전라남도,전라남도$시군구명 == listset[16])
com_mid15= table(subset_group15$상권업종중분류명)
score_sgg_mid15 = round(((sum(com_mid15)-com_mid15) / (sum(com_mid15)) * 100 / (length(com_mid15)-1))*10,3)

subset_group16 = subset(전라남도,전라남도$시군구명 == listset[17])
com_mid16 = table(subset_group16$상권업종중분류명)
score_sgg_mid16 = round(((sum(com_mid16)-com_mid16) / (sum(com_mid16)) * 100 / (length(com_mid16)-1))*10,3)

subset_group17 = subset(전라남도,전라남도$시군구명 == listset[18])
com_mid17 = table(subset_group17$상권업종중분류명)
score_sgg_mid17 = round(((sum(com_mid17)-com_mid17) / (sum(com_mid17)) * 100 / (length(com_mid17)-1))*10,3)

subset_group18 = subset(전라남도,전라남도$시군구명 == listset[19])
com_mid18 = table(subset_group18$상권업종중분류명)
score_sgg_mid18 = round(((sum(com_mid18)-com_mid18) / (sum(com_mid18)) * 100 / (length(com_mid18)-1))*10,3)

subset_group19 = subset(전라남도,전라남도$시군구명 == listset[20])
com_mid19 = table(subset_group19$상권업종중분류명)
score_sgg_mid19 = round(((sum(com_mid19)-com_mid19) / (sum(com_mid19)) * 100 / (length(com_mid19)-1))*10,3)

subset_group20 = subset(전라남도,전라남도$시군구명 == listset[21])
com_mid20 = table(subset_group20$상권업종중분류명)
score_sgg_mid20 = round(((sum(com_mid20)-com_mid20) / (sum(com_mid20)) * 100 / (length(com_mid20)-1))*10,3)

subset_group21 = subset(전라남도,전라남도$시군구명 == listset[22])
com_mid21 = table(subset_group21$상권업종중분류명)
score_sgg_mid21 = round(((sum(com_mid21)-com_mid21) / (sum(com_mid21)) * 100 / (length(com_mid21)-1))*10,3)


listset
강진군 = list("지역경쟁력"= unname(score_sgg["강진군"]), "업종경쟁력"=as.list(score_sgg_mid))
고흥군 = list("지역경쟁력"= unname(score_sgg["고흥군"]), "업종경쟁력"=as.list(score_sgg_mid1))
곡성군 = list("지역경쟁력"= unname(score_sgg["곡성군"]), "업종경쟁력"=as.list(score_sgg_mid2))
광양시 = list("지역경쟁력"= unname(score_sgg["광양시"]), "업종경쟁력"=as.list(score_sgg_mid3))
구례군 = list("지역경쟁력"= unname(score_sgg["구례군"]), "업종경쟁력"=as.list(score_sgg_mid4))
나주시= list("지역경쟁력"= unname(score_sgg["나주시"]), "업종경쟁력"=as.list(score_sgg_mid5))
담양군= list("지역경쟁력"= unname(score_sgg["담양군"]), "업종경쟁력"=as.list(score_sgg_mid6))
목포시 = list("지역경쟁력"= unname(score_sgg["목포시"]), "업종경쟁력"=as.list(score_sgg_mid7))
무안군= list("지역경쟁력"= unname(score_sgg["무안군"]), "업종경쟁력"=as.list(score_sgg_mid8))
보성군= list("지역경쟁력"= unname(score_sgg["보성군"]), "업종경쟁력"=as.list(score_sgg_mid9))
순천시= list("지역경쟁력"= unname(score_sgg["순천시"]), "업종경쟁력"=as.list(score_sgg_mid10))
신안군= list("지역경쟁력"= unname(score_sgg["신안군"]), "업종경쟁력"=as.list(score_sgg_mid11))
여수시= list("지역경쟁력"= unname(score_sgg["여수시"]), "업종경쟁력"=as.list(score_sgg_mid12))
영광군= list("지역경쟁력"= unname(score_sgg["영광군"]), "업종경쟁력"=as.list(score_sgg_mid13))
영암군= list("지역경쟁력"= unname(score_sgg["영암군"]), "업종경쟁력"=as.list(score_sgg_mid14))
완도군= list("지역경쟁력"= unname(score_sgg["완도군"]), "업종경쟁력"=as.list(score_sgg_mid15))
장성군= list("지역경쟁력"= unname(score_sgg["장성군"]), "업종경쟁력"=as.list(score_sgg_mid16))
장흥군= list("지역경쟁력"= unname(score_sgg["장흥군"]), "업종경쟁력"=as.list(score_sgg_mid17))
진도군= list("지역경쟁력"= unname(score_sgg["진도군"]), "업종경쟁력"=as.list(score_sgg_mid18))
함평군= list("지역경쟁력"= unname(score_sgg["함평군"]), "업종경쟁력"=as.list(score_sgg_mid19))
해남군= list("지역경쟁력"= unname(score_sgg["해남군"]), "업종경쟁력"=as.list(score_sgg_mid20))
화순군= list("지역경쟁력"= unname(score_sgg["화순군"]), "업종경쟁력"=as.list(score_sgg_mid21))

전라남도 = list("강진군"=강진군,"고흥군"=고흥군,"곡성군"=곡성군,"광양시"=광양시,"구례군"=구례군,"나주시"=나주시,"담양군"=담양군,
            "목포시"=목포시,"무안군"=무안군,"보성군"=보성군,"순천시"=순천시,"신안군"=신안군,"여수시"=여수시,"영광군"=영광군,
            "영암군"=영암군,"완도군"=완도군,"장성군"=장성군,"장흥군"=장흥군,"진도군"=진도군,"함평군"=함평군,"해남군"=해남군,
            "화순군"=화순군)

FILE_전라남도 = list("전라남도"=전라남도)


#----------------------------------------------------------------------------------------------------------------
filelist = dir("C:/Users/abc/Desktop/hanium/201706/전라북도",pattern=".csv")
#tables = lapply(paste("../data/", wide, "/", date, "/", city,"/",filelist,sep=""),read.csv,header=T)
전라북도 = do.call(rbind,lapply(paste("C:/Users/abc/Desktop/hanium/201706/전라북도/",filelist,sep=""),read.csv,header=T))
head(전라북도)
listset = unique(전라북도$시군구명)
listset = unlist(listset)
length(listset)

sgg = table(전라북도$시군구명)
sgg["전주시"] = sgg[12]+sgg[13]
sgg=sgg[c(-12,-13)]
sgg=sgg[sgg != 0]
listset = names(sgg)
score_sgg = round(((sum(sgg)-sgg) / (sum(sgg)) * 100 / (length(sgg)-1)),3)
length(listset)
subset_group = subset(전라북도,전라북도$시군구명 == listset[1])
com_mid = table(subset_group$상권업종중분류명)
score_sgg_mid = round(((sum(com_mid)-com_mid) / (sum(com_mid)) * 100 / (length(com_mid)-1))*10,3)

subset_group1 = subset(전라북도,전라북도$시군구명 == listset[2])
com_mid1 = table(subset_group1$상권업종중분류명)
score_sgg_mid1 = round(((sum(com_mid1)-com_mid1) / (sum(com_mid1)) * 100 / (length(com_mid1)-1))*10,3)

subset_group2 = subset(전라북도,전라북도$시군구명 == listset[3])
com_mid2 = table(subset_group2$상권업종중분류명)
score_sgg_mid2 = round(((sum(com_mid2)-com_mid2) / (sum(com_mid2)) * 100 / (length(com_mid2)-1))*10,3)

subset_group3 = subset(전라북도,전라북도$시군구명 == listset[4])
com_mid3 = table(subset_group3$상권업종중분류명)
score_sgg_mid3 = round(((sum(com_mid3)-com_mid3) / (sum(com_mid3)) * 100 / (length(com_mid3)-1))*10,3)

subset_group4 = subset(전라북도,전라북도$시군구명 == listset[5])
com_mid4 = table(subset_group4$상권업종중분류명)
score_sgg_mid4 = round(((sum(com_mid4)-com_mid4) / (sum(com_mid4)) * 100 / (length(com_mid4)-1))*10,3)

subset_group5 = subset(전라북도,전라북도$시군구명 == listset[6])
com_mid5= table(subset_group5$상권업종중분류명)
score_sgg_mid5 = round(((sum(com_mid5)-com_mid5) / (sum(com_mid5)) * 100 / (length(com_mid5)-1))*10,3)

subset_group6 = subset(전라북도,전라북도$시군구명 == listset[7])
com_mid6 = table(subset_group6$상권업종중분류명)
score_sgg_mid6 = round(((sum(com_mid6)-com_mid6) / (sum(com_mid6)) * 100 / (length(com_mid6)-1))*10,3)

subset_group7 = subset(전라북도,전라북도$시군구명 == listset[8])
com_mid7 = table(subset_group$상권업종중분류명)
score_sgg_mid7 = round(((sum(com_mid7)-com_mid7) / (sum(com_mid7)) * 100 / (length(com_mid7)-1))*10,3)

subset_group8 = subset(전라북도,전라북도$시군구명 == listset[9])
com_mid8 = table(subset_group8$상권업종중분류명)
score_sgg_mid8 = round(((sum(com_mid8)-com_mid8) / (sum(com_mid8)) * 100 / (length(com_mid8)-1))*10,3)

subset_group9 = subset(전라북도,전라북도$시군구명 == listset[10])
com_mid9 = table(subset_group9$상권업종중분류명)
score_sgg_mid9 = round(((sum(com_mid9)-com_mid9) / (sum(com_mid9)) * 100 / (length(com_mid9)-1))*10,3)

subset_group10 = subset(전라북도,전라북도$시군구명 == listset[11])
com_mid10 = table(subset_group10$상권업종중분류명)
score_sgg_mid10 = round(((sum(com_mid10)-com_mid10) / (sum(com_mid10)) * 100 / (length(com_mid10)-1))*10,3)

subset_group11 = subset(전라북도,전라북도$시군구명 == listset[12])
com_mid11 = table(subset_group11$상권업종중분류명)
score_sgg_mid11 = round(((sum(com_mid11)-com_mid11) / (sum(com_mid11)) * 100 / (length(com_mid11)-1))*10,3)

subset_group12 = subset(전라북도,전라북도$시군구명 == listset[13])
com_mid12 = table(subset_group12$상권업종중분류명)
score_sgg_mid12 = round(((sum(com_mid12)-com_mid12) / (sum(com_mid12)) * 100 / (length(com_mid12)-1))*10,3)

subset_group13 = subset(전라북도,전라북도$시군구명 %in% c("전주시 덕진구","전주시 완산구"))
com_mid13 = table(subset_group13$상권업종중분류명)
score_sgg_mid13 = round(((sum(com_mid13)-com_mid13) / (sum(com_mid13)) * 100 / (length(com_mid13)-1))*10,3)



listset
고창군 = list("지역경쟁력"= as.numeric(unname(score_sgg["고창군"])), "업종경쟁력"=as.list(score_sgg_mid))
군산시 = list("지역경쟁력"= as.numeric(unname(score_sgg["군산시"])), "업종경쟁력"=as.list(score_sgg_mid1))
김제시 = list("지역경쟁력"= as.numeric(unname(score_sgg["김제시"])), "업종경쟁력"=as.list(score_sgg_mid2))
남원시 = list("지역경쟁력"= as.numeric(unname(score_sgg["남원시"])), "업종경쟁력"=as.list(score_sgg_mid3))
무주군 = list("지역경쟁력"= as.numeric(unname(score_sgg["무주군"])), "업종경쟁력"=as.list(score_sgg_mid4))
부안군= list("지역경쟁력"= as.numeric(unname(score_sgg["부안군"])), "업종경쟁력"=as.list(score_sgg_mid5))
순창군= list("지역경쟁력"= as.numeric(unname(score_sgg["순창군"])), "업종경쟁력"=as.list(score_sgg_mid6))
완주군 = list("지역경쟁력"= as.numeric(unname(score_sgg["완주군"])), "업종경쟁력"=as.list(score_sgg_mid7))
익산시= list("지역경쟁력"= as.numeric(unname(score_sgg["익산시"])), "업종경쟁력"=as.list(score_sgg_mid8))
임실군= list("지역경쟁력"= as.numeric(unname(score_sgg["임실군"])), "업종경쟁력"=as.list(score_sgg_mid9))
장수군= list("지역경쟁력"= as.numeric(unname(score_sgg["장수군"])), "업종경쟁력"=as.list(score_sgg_mid10))
정읍시= list("지역경쟁력"= as.numeric(unname(score_sgg["정읍시"])), "업종경쟁력"=as.list(score_sgg_mid11))
진안군= list("지역경쟁력"= as.numeric(unname(score_sgg["진안군"])), "업종경쟁력"=as.list(score_sgg_mid12))
전주시= list("지역경쟁력"= as.numeric(unname(score_sgg["전주시"])), "업종경쟁력"=as.list(score_sgg_mid13))

전라북도 = list("고창군"=고창군,"군산시"=군산시,"김제시"=김제시,"남원시"=남원시,"무주군"=무주군, "부안군"=부안군,"순창군"=순창군,
            "완주군"=완주군,"익산시"=익산시,"임실군"=임실군,"장수군"=장수군,"정읍시"=정읍시,"진안군"=진안군,"전주시"=전주시)

FILE_전라북도 = list("전라북도"=전라북도)
toJSON(FILE_전라북도)
#----------------------------------------------------------------------------------------------------------------
filelist = dir("C:/Users/abc/Desktop/hanium/201706/충청남도",pattern=".csv")
#tables = lapply(paste("../data/", wide, "/", date, "/", city,"/",filelist,sep=""),read.csv,header=T)
충청남도 = do.call(rbind,lapply(paste("C:/Users/abc/Desktop/hanium/201706/충청남도/",filelist,sep=""),read.csv,header=T))
head(충청남도)
istset = unique(충청남도$시군구명)
listset = unlist(listset)
length(listset)

sgg = table(충청남도$시군구명)
sgg["천안시"] = sgg[12]+sgg[13]
sgg=sgg[c(-12,-13)]
sgg=sgg[sgg != 0]
listset = names(sgg)
score_sgg = round(((sum(sgg)-sgg) / (sum(sgg)) * 100 / (length(sgg)-1)),3)
length(listset)
subset_group = subset(충청남도,충청남도$시군구명 == listset[1])
com_mid = table(subset_group$상권업종중분류명)
score_sgg_mid = round(((sum(com_mid)-com_mid) / (sum(com_mid)) * 100 / (length(com_mid)-1))*10,3)

subset_group1 = subset(충청남도,충청남도$시군구명 == listset[2])
com_mid1 = table(subset_group1$상권업종중분류명)
score_sgg_mid1 = round(((sum(com_mid1)-com_mid1) / (sum(com_mid1)) * 100 / (length(com_mid1)-1))*10,3)

subset_group2 = subset(충청남도,충청남도$시군구명 == listset[3])
com_mid2 = table(subset_group2$상권업종중분류명)
score_sgg_mid2 = round(((sum(com_mid2)-com_mid2) / (sum(com_mid2)) * 100 / (length(com_mid2)-1))*10,3)

subset_group3 = subset(충청남도,충청남도$시군구명 == listset[4])
com_mid3 = table(subset_group3$상권업종중분류명)
score_sgg_mid3 = round(((sum(com_mid3)-com_mid3) / (sum(com_mid3)) * 100 / (length(com_mid3)-1))*10,3)

subset_group4 = subset(충청남도,충청남도$시군구명 == listset[5])
com_mid4 = table(subset_group4$상권업종중분류명)
score_sgg_mid4 = round(((sum(com_mid4)-com_mid4) / (sum(com_mid4)) * 100 / (length(com_mid4)-1))*10,3)

subset_group5 = subset(충청남도,충청남도$시군구명 == listset[6])
com_mid5= table(subset_group5$상권업종중분류명)
score_sgg_mid5 = round(((sum(com_mid5)-com_mid5) / (sum(com_mid5)) * 100 / (length(com_mid5)-1))*10,3)

subset_group6 = subset(충청남도,충청남도$시군구명 == listset[7])
com_mid6 = table(subset_group6$상권업종중분류명)
score_sgg_mid6 = round(((sum(com_mid6)-com_mid6) / (sum(com_mid6)) * 100 / (length(com_mid6)-1))*10,3)

subset_group7 = subset(충청남도,충청남도$시군구명 == listset[8])
com_mid7 = table(subset_group$상권업종중분류명)
score_sgg_mid7 = round(((sum(com_mid7)-com_mid7) / (sum(com_mid7)) * 100 / (length(com_mid7)-1))*10,3)

subset_group8 = subset(충청남도,충청남도$시군구명 == listset[9])
com_mid8 = table(subset_group8$상권업종중분류명)
score_sgg_mid8 = round(((sum(com_mid8)-com_mid8) / (sum(com_mid8)) * 100 / (length(com_mid8)-1))*10,3)

subset_group9 = subset(충청남도,충청남도$시군구명 == listset[10])
com_mid9 = table(subset_group9$상권업종중분류명)
score_sgg_mid9 = round(((sum(com_mid9)-com_mid9) / (sum(com_mid9)) * 100 / (length(com_mid9)-1))*10,3)

subset_group10 = subset(충청남도,충청남도$시군구명 == listset[11])
com_mid10 = table(subset_group10$상권업종중분류명)
score_sgg_mid10 = round(((sum(com_mid10)-com_mid10) / (sum(com_mid10)) * 100 / (length(com_mid10)-1))*10,3)

subset_group11 = subset(충청남도,충청남도$시군구명 == listset[12])
com_mid11 = table(subset_group11$상권업종중분류명)
score_sgg_mid11 = round(((sum(com_mid11)-com_mid11) / (sum(com_mid11)) * 100 / (length(com_mid11)-1))*10,3)

subset_group12 = subset(충청남도,충청남도$시군구명 == listset[13])
com_mid12 = table(subset_group12$상권업종중분류명)
score_sgg_mid12 = round(((sum(com_mid12)-com_mid12) / (sum(com_mid12)) * 100 / (length(com_mid12)-1))*10,3)

subset_group13 = subset(충청남도,충청남도$시군구명 == listset[14])
com_mid13 = table(subset_group13$상권업종중분류명)
score_sgg_mid13 = round(((sum(com_mid13)-com_mid13) / (sum(com_mid13)) * 100 / (length(com_mid13)-1))*10,3)

subset_group14 = subset(충청남도,충청남도$시군구명 %in% c("천안시 동남구","천안시 서북구"))
com_mid14 = table(subset_group14$상권업종중분류명)
score_sgg_mid14 = round(((sum(com_mid14)-com_mid14) / (sum(com_mid14)) * 100 / (length(com_mid14)-1))*10,3)


listset
계룡시 = list("지역경쟁력"= as.numeric(unname(score_sgg["계룡시"])), "업종경쟁력"=as.list(score_sgg_mid))
공주시 = list("지역경쟁력"= as.numeric(unname(score_sgg["공주시"])), "업종경쟁력"=as.list(score_sgg_mid1))
금산군 = list("지역경쟁력"= as.numeric(unname(score_sgg["금산군"])), "업종경쟁력"=as.list(score_sgg_mid2))
논산시 = list("지역경쟁력"= as.numeric(unname(score_sgg["논산시"])), "업종경쟁력"=as.list(score_sgg_mid3))
당진시 = list("지역경쟁력"= as.numeric(unname(score_sgg["당진시"])), "업종경쟁력"=as.list(score_sgg_mid4))
보령시= list("지역경쟁력"= as.numeric(unname(score_sgg["보령시"])), "업종경쟁력"=as.list(score_sgg_mid5))
부여군= list("지역경쟁력"= as.numeric(unname(score_sgg["부여군"])), "업종경쟁력"=as.list(score_sgg_mid6))
서산시 = list("지역경쟁력"= as.numeric(unname(score_sgg["서산시"])), "업종경쟁력"=as.list(score_sgg_mid7))
서천군= list("지역경쟁력"= as.numeric(unname(score_sgg["서천군"])), "업종경쟁력"=as.list(score_sgg_mid8))
아산시= list("지역경쟁력"= as.numeric(unname(score_sgg["아산시"])), "업종경쟁력"=as.list(score_sgg_mid9))
예산군= list("지역경쟁력"= as.numeric(unname(score_sgg["예산군"])), "업종경쟁력"=as.list(score_sgg_mid10))
청양군= list("지역경쟁력"= as.numeric(unname(score_sgg["청양군"])), "업종경쟁력"=as.list(score_sgg_mid11))
태안군= list("지역경쟁력"= as.numeric(unname(score_sgg["태안군"])), "업종경쟁력"=as.list(score_sgg_mid12))
홍성군= list("지역경쟁력"= as.numeric(unname(score_sgg["홍성군"])), "업종경쟁력"=as.list(score_sgg_mid13))
천안시= list("지역경쟁력"= as.numeric(unname(score_sgg["천안시"])), "업종경쟁력"=as.list(score_sgg_mid14))

충청남도 = list("계룡시"=계룡시,"공주시"=공주시,"금산군"=금산군,"논산시"=논산시,"당진시"=당진시,"보령시"=보령시, 
            "부여군"=부여군,"서산시"=서산시,"서천군"=서천군,"아산시"=아산시,"예산군"=예산군,"청양군"=청양군,"태안군"=태안군, 
            "홍성군"=홍성군,"천안시"=천안시)

FILE_충청남도 = list("충청남도"=충청남도)

#----------------------------------------------------------------------------------------------------------------
filelist = dir("C:/Users/abc/Desktop/hanium/201706/제주도",pattern=".csv")
#tables = lapply(paste("../data/", wide, "/", date, "/", city,"/",filelist,sep=""),read.csv,header=T)
제주도 = do.call(rbind,lapply(paste("C:/Users/abc/Desktop/hanium/201706/제주도/",filelist,sep=""),read.csv,header=T))
head(제주도)
listset = unique(제주도$시군구명)
listset = unlist(listset)
length(listset)

sgg = table(제주도$시군구명)
sgg["천안시"] = sgg[12]+sgg[13]
sgg=sgg[c(-12,-13)]
sgg=sgg[sgg != 0]
listset = names(sgg)
score_sgg = round(((sum(sgg)-sgg) / (sum(sgg)) * 100 / (length(sgg)-1)),3)
length(listset)
subset_group = subset(제주도,제주도$시군구명 == listset[1])
com_mid = table(subset_group$상권업종중분류명)
score_sgg_mid = round(((sum(com_mid)-com_mid) / (sum(com_mid)) * 100 / (length(com_mid)-1))*10,3)

subset_group1 = subset(제주도,제주도$시군구명 == listset[2])
com_mid1 = table(subset_group1$상권업종중분류명)
score_sgg_mid1 = round(((sum(com_mid1)-com_mid1) / (sum(com_mid1)) * 100 / (length(com_mid1)-1))*10,3)


listset
서귀포시 = list("지역경쟁력"= unname(score_sgg["서귀포시"]), "업종경쟁력"=as.list(score_sgg_mid))
제주시 = list("지역경쟁력"= unname(score_sgg["제주시"]), "업종경쟁력"=as.list(score_sgg_mid1))

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

sgg = table(세종$시군구명)
sgg["천안시"] = sgg[12]+sgg[13]
sgg=sgg[c(-12,-13)]
sgg=sgg[sgg != 0]
listset = names(sgg)
score_sgg = round(((sum(sgg)-sgg) / (sum(sgg)) * 100 / (length(sgg)-1)),3)
length(listset)
subset_group = subset(세종,세종$시군구명 == listset[1])
com_mid = table(subset_group$상권업종중분류명)
score_sgg_mid = round(((sum(com_mid)-com_mid) / (sum(com_mid)) * 100 / (length(com_mid)-1))*10,3)


listset
세종 = list("지역경쟁력"= unname(score_sgg["세종특별자치시"]), "업종경쟁력"=as.list(score_sgg_mid))

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
filelist = dir("C:/Users/abc/Desktop/hanium/201706/울산광역시",pattern=".csv")
#tables = lapply(paste("../data/", wide, "/", date, "/", city,"/",filelist,sep=""),read.csv,header=T)
울산광역시 = do.call(rbind,lapply(paste("C:/Users/abc/Desktop/hanium/201706/울산광역시/",filelist,sep=""),read.csv,header=T))
head(울산광역시)
listset = unique(울산광역시$시군구명)
listset = unlist(listset)
length(listset)

sgg = table(울산광역시$시군구명)
sgg["천안시"] = sgg[12]+sgg[13]
sgg=sgg[c(-12,-13)]
sgg=sgg[sgg != 0]
listset = names(sgg)
score_sgg = round(((sum(sgg)-sgg) / (sum(sgg)) * 100 / (length(sgg)-1)),3)
length(listset)
subset_group = subset(울산광역시,울산광역시$시군구명 == listset[1])
com_mid = table(subset_group$상권업종중분류명)
score_sgg_mid = round(((sum(com_mid)-com_mid) / (sum(com_mid)) * 100 / (length(com_mid)-1))*10,3)

subset_group1 = subset(울산광역시,울산광역시$시군구명 == listset[2])
com_mid1 = table(subset_group1$상권업종중분류명)
score_sgg_mid1 = round(((sum(com_mid1)-com_mid1) / (sum(com_mid1)) * 100 / (length(com_mid1)-1))*10,3)

subset_group2 = subset(울산광역시,울산광역시$시군구명 == listset[3])
com_mid2 = table(subset_group2$상권업종중분류명)
score_sgg_mid2 = round(((sum(com_mid2)-com_mid2) / (sum(com_mid2)) * 100 / (length(com_mid2)-1))*10,3)

subset_group3 = subset(울산광역시,울산광역시$시군구명 == listset[4])
com_mid3 = table(subset_group3$상권업종중분류명)
score_sgg_mid3 = round(((sum(com_mid3)-com_mid3) / (sum(com_mid3)) * 100 / (length(com_mid3)-1))*10,3)

subset_group4 = subset(울산광역시,울산광역시$시군구명 == listset[5])
com_mid4 = table(subset_group4$상권업종중분류명)
score_sgg_mid4 = round(((sum(com_mid4)-com_mid4) / (sum(com_mid4)) * 100 / (length(com_mid4)-1))*10,3)

listset
남구 = list("지역경쟁력"= unname(score_sgg["남구"]), "업종경쟁력"=as.list(score_sgg_mid))
동구 = list("지역경쟁력"= unname(score_sgg["동구"]), "업종경쟁력"=as.list(score_sgg_mid1))
북구 = list("지역경쟁력"= unname(score_sgg["북구"]), "업종경쟁력"=as.list(score_sgg_mid2))
울주군 = list("지역경쟁력"= unname(score_sgg["울주군"]), "업종경쟁력"=as.list(score_sgg_mid3))
중구 = list("지역경쟁력"= unname(score_sgg["중구"]), "업종경쟁력"=as.list(score_sgg_mid4))

울산광역시 = list("남구"=남구,"동구"=동구,"북구"=북구,"울주군"=울주군,"중구"=중구  )

FILE_울산광역시 = list("울산광역시"=울산광역시)

#--------------------------------------------------------------------------------------------
FILE = list(FILE_강원도,FILE_경기도,FILE_경상남도,FILE_경상북도,FILE_광주,FILE_대구,FILE_대전광역시,FILE_부산광역시,FILE_서울,
            FILE_세종,FILE_울산광역시,FILE_인천광역시,FILE_전라남도,FILE_전라북도,FILE_제주도,FILE_충청남도)

toJSON(FILE_전라북도)
JSON = toJSON(FILE)
JSON1 = enc2utf8(JSON)
write(JSON,"final2.json")
?enc2utf8
Encoding(JSON)
