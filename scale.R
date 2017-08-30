install.packages("stringr")
libray(stringr)
filelist = dir("C:/Users/abc/Desktop/hanium/201606/서울특별시",pattern=".csv")
#tables = lapply(paste("../data/", wide, "/", date, "/", city,"/",filelist,sep=""),read.csv,header=T)
광주2017 = do.call(rbind,lapply(paste("C:/Users/abc/Desktop/hanium/201706/광주광역시/",filelist,sep=""),read.csv,header=T))
region = read.csv("C:/Users/abc/Desktop/hanium/201603/서울특별시.csv",header=T)

list_region=unlist(strsplit(filelist,".csv"))

광산구 = subset(광주,광주$시군구명=="광산구")
광산구2017 = subset(광주2017,광주2017$시군구명=="광산구")
i=3
bull = NA

colnames(region)[2] = "NAME"

list_region = unique(earth$시군구명)
list_region = unlist(list_region)
earth = "서울특별시"
earth_gu = "구"
bull = data.frame()
SEOUL =data.frame()
j=1
date = c(201603,201606,201609,201703,201706)

name201603 = unlist(earth201603$NAME)
name201606 = unlist(earth201606$NAME)
name201706 = unlist(earth201706$NAME)
head(earth201603)
job=unique(earth201512$상권업종중분류명)
job = unlist(job)

earth = "대전광역시"
filelist = dir(paste("C:/Users/abc/Desktop/hanium/201512/",earth,sep=""),pattern=".csv")
list_region=unlist(strsplit(filelist,".csv"))

job=unique(earth201512$상권업종중분류명)
job = unlist(job)
  filelist = dir(paste("C:/Users/abc/Desktop/hanium/201512/",earth[9],sep=""),pattern=".csv")
  earth = earth[9]
  print(paste(earth,"make!",sep=""))
  list_region=unlist(strsplit(filelist,".csv"))
  
  for( i in 1:length(list_region)){
    bull = data.frame()
    JOB = data.frame()
      
    earth201512 = read.csv(paste("C:/Users/abc/Desktop/hanium/201512/",earth,"/",list_region[i],".csv",sep=""),header=T)
    job=unique(earth201512$상권업종중분류명)
    job = unlist(job)
    
    earth201603 = read.csv(paste("C:/Users/abc/Desktop/hanium/201603/",earth,"/",list_region[i],".csv",sep=""),header=T)
    
    earth201606 = read.csv(paste("C:/Users/abc/Desktop/hanium/201606/",earth,"/",list_region[i],".csv",sep=""),header=T)
      
    earth201609 = read.csv(paste("C:/Users/abc/Desktop/hanium/201609/",earth,"/",list_region[i],".csv",sep=""),header=T)
      
    earth201703 = read.csv(paste("C:/Users/abc/Desktop/hanium/201703/",earth,"/",list_region[i],".csv",sep=""),header=T)
      
    earth201706 = read.csv(paste("C:/Users/abc/Desktop/hanium/201706/",earth,"/",list_region[i],".csv",sep=""),header=T)
    print(paste(list_region[i],"를 진행하고 있습니다!",sep=""))
    
    for(k in 1:length(job)){
      subset201512 = subset(earth201512,earth201512$상권업종중분류명==paste(job[k]))
      name201512 = unlist(subset201512$상호명)
      
      subset201603 = subset(earth201603,earth201603$상권업종중분류명==paste(job[k]))
      name201603 = unlist(subset201603$상호명)
      
      subset201606 = subset(earth201606,earth201606$상권업종중분류명==paste(job[k]))
      name201606 = unlist(subset201606$상호명)
      
      subset201609 = subset(earth201609,earth201609$상권업종중분류명==paste(job[k]))
      name201609 = unlist(subset201609$상호명)
      
      subset201703 = subset(earth201703,earth201703$상권업종중분류명==paste(job[k]))
      name201703 = unlist(subset201703$상호명)
      
      subset201706 = subset(earth201706,earth201706$상권업종중분류명==paste(job[k]))
      name201706 = unlist(subset201706$상호명)
      
      for(j in 1:length(name201512)){
        if(j != 0){
          bull[j,1] = any( name201603 %in% name201512[j])
          bull[j,2] = any( name201606 %in% name201512[j])
          bull[j,3] = any( name201609 %in% name201512[j])
          bull[j,4] = any( name201703 %in% name201512[j])
          bull[j,5] = any( name201706 %in% name201512[j])
          if(j %% 100 ==0){
            print(j)
          }
          
          if(bull[j,1]&bull[j,2]&bull[j,3]&bull[j,4]&bull[j,5] == TRUE){
            bull[j,6] = 5
          }else if(bull[j,1]&bull[j,2]&bull[j,3]&bull[j,4] == TRUE){
            bull[j,6] = 4
          }else if(bull[j,1]&bull[j,2]&bull[j,3]==TRUE){
            bull[j,6] = 3
          }else if(bull[j,1]&bull[j,2] == TRUE){
            bull[j,6] = 2
          }else if(bull[j,1] == TRUE){
            bull[j,6] = 1
          }else{
            bull[j,6] = 0
          }
        }else{
        }
        }
          
        
      
      JOB[k,1] = sum(bull[,1])
      JOB[k,2] = sum(bull[,2])
      JOB[k,3] = sum(bull[,3])
      JOB[k,4] = sum(bull[,4])
      JOB[k,5] = sum(bull[,5])
      JOB[k,6] = sum(bull[,6])
      JOB[k,7] = round((sum(bull[,6]) / (dim(bull)[1]*5)) * 100,3)
      
      rownames(JOB)[k] = paste(job[k])
      
      
    }
    write.csv(JOB,paste("C:/Users/abc/Desktop/hanium/안정성/",earth,"/",list_region[i],".csv",sep=""))
}

  
filelist = dir(paste("C:/Users/abc/Desktop/hanium/201512/광주광역시",sep=""),pattern=".csv")
filelist

 = subset_group[1]
?paste
colnames(dddd) = c("업종","201603","201606","201609","201703","201706","총점수","안정성점수")
 = list("업종"=)

for(i in 1:dim(dddd)[1]){
  LIST_광주 = list()
}

