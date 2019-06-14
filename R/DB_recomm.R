#Data hast to be downloaded from https://movielens.org/ and saved in the same working folder
#than the current R project. Needed archives are movies_metadata1, credits and keywords

#load basic DB and eliminate unnecessary info

setwd()
db1<-read.csv("movies_metadata1.csv")
db1<-db1[db1$original_language=="en",] #only films in ENGLISH (in line with the bot)
db1$year <- substr(db1$release_date, 1, 4) #we are only interested in the release year
drops<-c("original_title", "release_date","belongs_to_collection", "homepage", "imdb_id", "poster_path", "production_countries", "production_companies", "spoken_languages", "status", "tagline", "video", "original_title", "original_language","budget", "revenue")
db1<-db1[,!names(db1)%in%drops]
db1<-db1[!duplicated(db1$id),]

#load credits DB

credits<-read.csv("credits.csv")
credits<-credits[!duplicated(credits$id),]

#load keywords DB

keywords<-read.csv("keywords.csv")
keywords<-keywords[!duplicated(keywords$id),]

#check of compatibilities as needed before merging via id

str(db1$id)
str(credits$id)
str(keywords$id)

#converting db1$id to integer

db1$id <- as.integer(as.character(db1$id))
str(db1$id)

#merging in db_fin, column id is eliminated as not needed anymore

library(dplyr)
db_fin<-inner_join(db1,credits)
db_fin<-inner_join(db_fin, keywords)
drops<-c("id")
db_fin<-db_fin[,!names(db_fin)%in%drops]

#db_fin reordeing, title first for easier comprehension

db_fin<-db_fin[,c(6,1:5,7:12)]

#load movie to use comparison

movie <- "Toy Story"
movie_char <- db_fin[which(db_fin$title == movie), ]

