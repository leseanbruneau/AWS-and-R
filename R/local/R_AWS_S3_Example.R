###########################################################
#
# Data Science Examples Blog
# 	Site: http://datascienceexamples.com
# 	Blog Post:  https://datascienceexamples.com/2018/07/31/r-and-aws-s3/
# 	Last Update: 9/5/2018
#
# Desc: Load libraries, function and R commands to read and write 
#       to AWS S3 bucket
#
###########################################################

### NOTE:  If using AWS S3 Bucket, need to enter access information
###  set system environment variables for AWS IAM account
###  replace <PUT-ACCESS-KEY> with your AWS IAM Account access key
###  replace <PUT-SECRET-KEY> with your AWS IAM Account secret key
###  Command to enter at R prompt
###  > Sys.setenv("AWS_ACCESS_KEY_ID" = "<PUT-ACCESS-KEY>","AWS_SECRET_ACCESS_KEY" = "<PUT-SECRET-KEY>")


#load libraries - if not loaded into memory
library("aws.s3")
library("jsonlite")

#create function to select output data
teamGames <- function(games, team) {
	
	teamGames <- subset(games, (games$Tm == team), select = c("GmNo","Date","Tm","Loc","Opp","Outcome","R","RA","Streak") )
	  
	return(teamGames)
}

#Load all 2017 MLB season games into mlb_2017 data.table
### Replace <YOUR_S3_BUCKET_NAME> with name of your AWS S3 bucket
mlb_2017 <- aws.s3::s3read_using(read.csv, object = "s3://<YOUR_S3_BUCKET_NAME>/R/2017-mlb-games.txt", sep=",", header=FALSE, stringsAsFactors = TRUE, quote="\"", comment.char = "")

#Add header names to mlb_2017 data.table
names(mlb_2017) <- c("GmNo","Date","Pre.Sum","Tm","Loc","Opp","Outcome","R","RA","Inn","W-L","Rank","GB","Win","Loss","Save","Time","D/N","Attendance","Streak","Orig. Scheduled")


#Team Examples - Minnesota Twins and Atlanta Braves

#Example 1.  For Minnesota Twins (MIN) team
tg <- teamGames(mlb_2017,"MIN")

#Windows RStudio
write_json(tg,"c:\\R\\data.json", pretty = TRUE)
#EC2 RStudio Server - through a web browser
#write_json(tg,"/home/rstudio/data.json", pretty = TRUE)

### Replace <YOUR_S3_BUCKET_NAME> with name of your AWS S3 bucket
#Windows RStudio - Local
put_object(file = "c:\\R\\data.json", object = "webapp/js/data.json", bucket = "<YOUR_S3_BUCKET_NAME>", acl = c("public-read"))
#EC2 RStudio Server - through a web browser
#put_object(file = "/home/rstudio/data.json", object = "webapp/js/data.json", bucket = "<YOUR_S3_BUCKET_NAME>", acl = c("public-read"))


#Example 2.  For Atlanta Braves (ATL) team
tg <- teamGames(mlb_2017,"ATL")

#Windows RStudio - Local
write_json(tg,"c:\\R\\data.json", pretty = TRUE)
#EC2 RStudio Server - through a web browser
#write_json(tg,"/home/rstudio/data.json", pretty = TRUE)

### Replace <YOUR_S3_BUCKET_NAME> with name of your AWS S3 bucket
#Windows RStudio - Local
put_object(file = "c:\\R\\data.json", object = "webapp/js/data.json", bucket = "<YOUR_S3_BUCKET_NAME>", acl = c("public-read"))
#EC2 RStudio Server - through a web browser
#put_object(file = "/home/rstudio/data.json", object = "webapp/js/data.json", bucket = "<YOUR_S3_BUCKET_NAME>", acl = c("public-read"))

