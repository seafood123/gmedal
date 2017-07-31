library(twitteR)
library(ROAuth)
library(ggplot2)
library(RCurl)
library(base64enc)
install.packages("tm")
library(tm)
install.packages("KoNLP")
library(KoNLP)
library(wordcloud)
library(stringr)
library(RJSONIO)
library(RColorBrewer)
library(plyr)
install.packages("rJava")
library(rJava)

install.packages("jsonlite")
library(jsonlite)
install.packages("rjson")
library(rjson)

setwd("C:/Users/Master/Documents")
data<-fromJSON(file = "test.json")

jb_text<-laply(jb, function(t)t$getText())
jb_text<-jb_text[Encoding(g_text)=='UTF-8']




data2<-fromJSON("tee.json")



url_rqst<-"https://api.twitter.com/oauth/request_token"
url_acc<-"https://api.twitter.com/oauth/access_token"
url_auth<-"https://api.twitter.com/oauth/authorize"



consumer_key <- "PrTrED9HnWCMa4yJ2jFkKHSEt"
consumer_secret <- "CpqGlzDmlSOlsh27IUnnKuxAIuCcqVQ7HRFBroYSrCCd0tyjC4"
access_token = "887219511891382272-ofKPmtvokjmfFnOQudtqFFURWRd4qw5"
access_secret = "wh39eUOAf7v7b1SEweGgq3M4MxW2YR2aU85pE0wNgjaBx" 

cred<-OAuthFactory$new(consumerKey=consumer_key, consumerSecret=consumer_secret,
                       requestURL="https://api.twitter.com/oauth/request_token",
                       accessURL = "https://api.twitter.com/oauth/access_token",
                       authURL = "https://api.twitter.com/oauth/authorize")
cred$handshake(cainfo=system.file("CurlSSL","cacert.pem",package = "RCurl"))

options(RCurlOptions = list(cainfo = system.file("CurlSSL", "cacert.pem", package = "RCurl")))
download.file(url="http://curl.haxx.se/ca/cacert.pem", destfile="cacert.pem")
setup_twitter_oauth(consumer_key,consumer_secret,access_token,access_secret)


jucbal<-enc2utf8("족발")
jb<-searchTwitter(jucbal,since='2016-10-29',geocode='35.874,128.246,400km',n=1000)
jb2<-searchTwitter(jucbal,since='2017-06-29',geocode='35.874,128.246,400km',n=1000)
jb_tmp <-unlist(jb,use.names = TRUE)
jb_number<-length(jb)
head(jb)
length(jb)

jb_text<-laply(jb, function(t)t$getText())
jb_text<-jb_text[Encoding(g_text)=='UTF-8']


jb_text<-gsub('\\x','',jb_text) #특수문자제거
jb_df<-as.data.frame(jb_text)
length(jb_df)
View(jb_df)


food_list<-c("족발","치킨","회","보쌈","떡볶이","분식","피자")
store_list<-c("pc방", "당구장", "술집", "미용실", "병원","치과", "주유소")

class(date)
class('2017.10.11')
date<-as.Date(-7,origin = Sys.Date()) # 현재 날짜로 부터 일주일 전
date
date1<-as.character(date)
date1                                 # 형변환
class(as.character(date))


list<-c()
list1<-c()
search_conut<-c()
search_conut1<-c()

for(i in 1:length(food_list)){
  x<-enc2utf8(food_list[i])
  x_search<-searchTwitter(x,since=date1,geocode='35.874,128.246,400km',n=100)
  x_number<-length(x_search)
  name <- food_list[i]
  ex <- length(x_search)
  list[i]<-name
  search_conut[i]<-ex

}
for(i in 1:length(store_list)){
  x<-enc2utf8(store_list[i])
  x_search<-searchTwitter(x,since=date1,geocode='35.874,128.246,400km',n=1000)
  x_number<-length(x_search)
  name1 <- store_list[i]
  ex1 <- length(x_search)
  list1[i]<-name1
  search_conut1[i]<-ex1
  
}

store<-c(list1, search_conut1)
food<-c(list,search_conut)

mat_store<-matrix(store,byrow=F,ncol=2)
mat_food<-matrix(food,byrow=F,ncol=2)
#############일주일 간 검색 횟수 ##############
mat_store        
mat_food
###############################################

v1 <-c(1,2,3,4,5,6)
v2 <-c(6,7,8,9,0,21)
v4 <-c(v1,v2)
v3 <- matrix(v4,byrow=F, ncol=2)
v3
barplot(v3)
windows()
barplot(as.matrix(mat_food), horiz = TRUE)

count_df<-data.frame(list,search_conut,list1, search_conut1)
count_df   #트위터에서 언급된 횟수 

barplot(1000,count_df)

apple_tweets<-searchTwitter("@apple", n=500)
head(apple_tweets)
length(apple_tweets)
#감정사전 불러오기
setwd("C:/Users/Master/Documents") 
pos.word=scan("positive-ko.txt", what="character", comment.char = ";")
neg.word=scan("negative-ko.txt", what="character", comment.char = ";")


#score.sentiment 함수생성
score.sentiment=function(sentences, pos.words, neg.words, .progress="none")
{
  require(plyr)
  require(stringr)
  score=laply(sentences, function(sentence,pos.words,neg.words) {
    #문장에서 불필요한 요소 삭제
    sentence=gsub('[[:punct:]]','',sentence)
    sentence=gsub('[[:cntrl:]]','',sentence)
    sentence=gsub('\\d+','',sentence)
    #영어 모두 소문자로 
    sentence=tolower(sentence)
    #문장을 단어로 분리
    word.list=str_split(sentence,'\\s+')
    #분리된 단어들을 리스트에서 벡터로 변경
    words=unlist(word.list)
    #감정사전과 단어 비교
    pos.matches=match(words, pos.words)
    neg.matches=match(words, neg.words)
    #결측값 제거
    pos.matches=!is.na(pos.matches)
    neg.matches=!is.na(neg.matches)
    #긍정빈도-부정빈도=점수
    score=sum(pos.matches)-sum(neg.matches)
    return(score)
  }, pos.words, neg.words, .progress=.progress)
  score.df=data.frame(scores=score, text=sentences)
  return(score.df)
}

#감정사전 불러오기
setwd("C:/Users/Master/Documents") 
pos.word=scan("positive-ko.txt", what="character", comment.char = ";")
neg.word=scan("negative-ko.txt", what="character", comment.char = ";")

list_emo<-c()
list_text<-c()
food_list[2]

food_list2<-c("족발","치킨","회","보쌈","떡볶이","분식","피자")
for(i in 1:length(food_list2)){
  x1<-enc2utf8(food_list2[i])
  x_search<-searchTwitter(x1,since=date1,geocode='35.874,128.246,400km',n=110)
  x_text<-laply(x_search, function(t)t$getText())
  x_text<-x_text[Encoding(x_text)=='UTF-8']
  
  x_text<-gsub('\\x','',x_text) #특수문자제거
  x_text<-x_text[Encoding(x_text)=="UTF-8"]
  x_score<-score.sentiment(x_text, pos.word, neg.word, .progress="none")
  red_score$remark[red_score$score >=1] = "긍정"
  red_score$remark[red_score$score ==0] = "중립"
  red_score$remark[red_score$score < 0] = "부정"
  
  sentiment_result= table(red_score$remark)
  print(sentiment_result)
}
 

red<- enc2utf8("족발")
redb <- searchTwitter(red,since=date1,geocode='35.874,128.246,400km',n=100)
head(redb)
list(redb)

#getText()함수 : 트위터 내용중 본문만 추출
red_text<-laply(redb, function(t)t$getText())
red_text<-red_text[Encoding(red_text)=='UTF-8']

red_text<-gsub('\\x','',red_text) #특수문자제거




#인코딩변환
red_text<-red_text[Encoding(red_text)=="UTF-8"]

 
red_score<-score.sentiment(red_text, pos.word, neg.word, .progress="none")




hist(red_score$score)

red_score$color[red_score$scores >=1] = "blue"
red_score$color[red_score$score ==0] = "green"
red_score$color[red_score$score < 0] = "red"

windows()

plot(red_score$score, col=red_score$color) # 산포도 색생 적용
barplot(red_score$score, col=red_score$color, main ="감성분석 결과화면")   # 막대차트

# -- (1) 감성분석 빈도수
table(red_score$color)

# -- (2) score 칼럼 리코딩
red_score$remark[red_score$score >=1] = "긍정"
red_score$remark[red_score$score ==0] = "중립"
red_score$remark[red_score$score < 0] = "부정"

sentiment_result= table(red_score$remark)

######업종에 대한 감정(긍정,부정,중립)체크가능 ##############
#############창업에 대한 감정(긍정,부정.중립)  ##############
sentiment_result
#############일주일 간 검색 횟수(관심도)       ##############
mat_store        
mat_food
#############################################################
#업종에 대한 감정, 관심도, 

# -- (3) 제목, 색상, 원크기
pie(sentiment_result, main="호프집에 대한
감성분석 결과",
    col=c("blue","red","green"), radius=0.8)                        


