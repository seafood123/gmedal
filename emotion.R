library(twitteR)
library(ROAuth)
library(ggplot2)
library(RCurl)
library(base64enc)
library(tm)
library(KoNLP)
library(wordcloud)
library(stringr)
library(RJSONIO)
library(RColorBrewer)
library(plyr)
library(rJava)

#트위터 API인증 
setup_twitter_oauth(consumer_key,consumer_secret,access_token,access_secret)

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


red<- enc2utf8("창업")
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

red_score$color[red_score$scores >=1] = "blue"
red_score$color[red_score$score ==0] = "green"
red_score$color[red_score$score < 0] = "red"

windows()


##############감성분석 빈도수#############################
table(red_score$color)

#칼럼 리코딩
red_score$remark[red_score$score >=1] = "긍정"
red_score$remark[red_score$score ==0] = "중립"
red_score$remark[red_score$score < 0] = "부정"

sentiment_result= table(red_score$remark)

######업종에 대한 감정(긍정,부정,중립)체크가능 ##############
#############창업에 대한 감정(긍정,부정.중립)  ##############
sentiment_result



                   
