attach(input[[1]])

# filelist = dir(paste("../data/", wide, "/", date,sep=""),pattern=".csv")
# tables = lapply(paste("../data/", wide, "/", date, "/", city,"/",filelist,sep=""),read.csv,header=T)
# total = do.call(rbind,lapply(paste("../data/", wide, "/", date,"/",filelist,sep=""),read.csv,header=T))

filelist = dir("C:/Users/abc/Desktop/hanium/201706/광주광역시",pattern=".csv")
#tables = lapply(paste("../data/", wide, "/", date, "/", city,"/",filelist,sep=""),read.csv,header=T)
total = do.call(rbind,lapply(paste("C:/Users/abc/Desktop/hanium/201706/광주광역시/",filelist,sep=""),read.csv,header=T))



# region = read.csv(paste("../data/", wide, "/", date, "/", city, ".csv", sep=""), header=T)
sgg = table(total$시군구명)

unname_sgg = sgg[order(sgg, decreasing=T)]
score_sgg = round((sum(unname_sgg)-unname_sgg) / sum(unname_sgg) * 25,3)[city]

# data_score_sgg <- data.frame("종류"=names(uname_sgg), "점수"=unname(score_sgg))

sub_region = subset(total,total$시군구명==city) # 선택한 구에 맞는 부분집합을 만든다

com_mid = table(sub_region$상권업종중분류명) # 상권업종중분류명별로 빈도수를 측정

unname_com_mid=com_mid[order(com_mid,decreasing=T)] 
score_com_mid = round(seq(1,100,length.out = length(unname_com_mid)),3)
score = unname_com_mid / sum(unname_com_mid) * 100
data_score_com_mid <- data.frame("종류"=names(unname_com_mid),"점수"=score_com_mid)
number_score = c(unname(score_sgg),data_score_com_mid[data_score_com_mid$종류==category,2])
return(number_score)
