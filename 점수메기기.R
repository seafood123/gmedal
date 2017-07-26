library(dplyr)

광주 = read.csv("광주광역시.csv",header=T)
서울_중랑구 = read.csv("서울특별시_중랑구.csv",header=T)
head(서울_중랑구,10)
choice = c("북구","일곡동","Q","Q05")

colnames(광주)

(광주$행정동명 == choice[3])

광주 %>% count(행정동명)

행정동별=table(광주$법정동명)
data.frame(행정동별)
bigcode = table(광주$상권업종대분류코드)
midcode = table(광주$상권업종중분류코드)
시군구명 = table(광주$시군구명)



write.csv(행정동별,"광주_행정동별.csv",row.names=F)
write.csv(bigcode,"bigcode.csv",row.names=F)
write.csv(midcode,"midcode.csv",row.names=F)
write.csv(시군구명,"광주_시군구별.csv",row.names=F)

# 상점이 많은 지점을 1점, 적은 지점을 100점으로 점수화함

a1 = read.csv("광주_행정동별.csv",header=T)
a1=a1[order(a1$Freq),]
a11=seq(100,1,length.out=length(행정동별))
a1$Freq = a11

a2 = read.csv("광주_시군구별.csv",header=T)
a2 = a2[order(a2$Freq),]
a22 = seq(100,1,length.out=5)
a2$Freq = a22

a3 = read.csv("bigcode.csv",header=T)
a3 = a3[order(a3$Freq),]
a33 = seq(100,1,length.out=length(bigcode))
a3$Freq = a33

a4 = read.csv("midcode.csv",header=T)
a4 = a4[order(a4[2]),][2]
a44 = seq(100,1,length.out = length(midcode))
a4$Freq = a44
dim(a4)
aaa = rbind(a1,a2,a3,a4)

ccc=NA

aaa[which(aaa==choice[2]),]

rate_score(서울_중랑구,choice)

choice = c("북구","일곡동","Q","Q05")

rate_score = function(basedata,data){
  data_sgg = table(basedata$시군구명) # basedata 에서 시군구명 열을 찾아서 그 구에 있는 상점갯수분석
  basedata_sgg = subset(basedata,basedata$시군구명 == data[1]) # 찾고자 하는 구들의 데이터 부분집합 불러오기 -> basedata_sgg
   
  data_dong = table(basedata_sgg$법정동명) # basedata_sgg 에서 법정동명 열을 찾아서 그 동에 있는 상점갯수분석 [ex) 목동 4323]
  
  basedata_sggdong = subset(basedata_sgg,basedata_sgg$법정동명 == data[2]) # 찾고자 하는 동들의 데이터 부분집합 불러오기 -> basedata_sggdong
  
  data_bigcode = table(basedata_sggdong$상권업종대분류코드) # basedata_sggdong 에서 대분류코드 열을 찾아서 그 지역의 상권업종코드갯수분석
  data_midcode = table(basedata_sggdong$상권업종중분류코드) # basedata_sggdong 에서 중분류코드 열을 찾아서 그 지역의 상권업종코드갯수분석
  
  
  
  data_dong = data.frame(data_dong) # 형식바꾸기
  data_sgg = data.frame(data_sgg)
  data_bigcode = data.frame(data_bigcode)
  data_midcode = data.frame(data_midcode)
  
  base_data_data = rbind(data_dong,data_sgg,data_bigcode,data_midcode) # 합치기
  
  for(i in 1:length(data)){
    print(base_data_data[base_data_data==data[i],])
  }                                                     #  점수화 하기 전 빈도수 체크 
  
  score_dong = seq(100,1,length.out=dim(data_dong)[1]) # 1점 부터 100점까지를 일정한 간격으로 나눔
  score_sgg = seq(100,1,length.out=dim(data_sgg)[1])
  score_bigcode = seq(100,1,length.out=dim(data_bigcode)[1])
  score_midcode = seq(100,1,length.out=dim(data_midcode)[1])
  
  data_dong[order(data_dong[2]),][2] = score_dong # 점수를 부여
  data_sgg[order(data_sgg[2]),][2] = score_sgg
  data_bigcode[order(data_bigcode[2]),][2] = score_bigcode
  data_midcode[order(data_midcode[2]),][2] = score_midcode
  
  data_data = rbind(data_dong,data_sgg,data_bigcode,data_midcode) # 데이터 합치기
  
  
  
  ccc = NA
  
  for(i in 1:length(data)){
    ccc[i] = data_data[which(data_data==data[i]),]$Freq
    total=sum(ccc)
    
    cat(i,"번째를 합한 총 점수는",total/4,"\n")
  }
}
rate_score(광주,choice)
aaa[aaa==choice[1],]
colnames(서울_중랑구)

일곡=subset(광주,광주$법정동명 == "일곡동")
AAA=subset(일곡,일곡$상권업종중분류코드=="Q05")
