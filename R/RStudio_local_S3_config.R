
#install libraries
install.packages("httr")
install.packages("xml2")
install.packages("digest")
install.packages("base64enc")
install.packages("devtools")
install.packages("aws.s3", repos = c("cloudyr" = "http://cloudyr.github.io/drat"))
install.packages("jsonlite", repos="http://cran.r-project.org")

#load libraries
library("aws.s3")
library("jsonlite")

#set system environment variables for AWS IAM account
###  replace <PUT-ACCESS-KEY> with your AWS IAM Account access key
###  replace <PUT-SECRET-KEY> with your AWS IAM Account secret key
Sys.setenv("AWS_ACCESS_KEY_ID" = "<PUT-ACCESS-KEY>","AWS_SECRET_ACCESS_KEY" = "<PUT-SECRET-KEY>")

#create function to select output data
teamGames <- function(games, team) {
	
	teamGames <- subset(games, (games$Tm == team), select = c("GmNo","Date","Tm","Loc","Opp","Outcome","R","RA","Streak") )
	  
	return(teamGames)
}


