
#load libraries - if not loaded into memory
library("aws.s3")
library("jsonlite")


#Load all 2017 MLB season games into mlb_2017 data.table
### Replace <YOUR_S3_BUCKET_NAME> with name of your AWS S3 bucket
mlb_2017 <- aws.s3::s3read_using(read.csv, object = "s3://<YOUR_S3_BUCKET_NAME>/R/2017-mlb-games.txt", sep=",", header=FALSE, stringsAsFactors = TRUE, quote="\"", comment.char = "")

#Add header names to mlb_2017 data.table
names(mlb_2017) <- c("GmNo","Date","Pre.Sum","Tm","Loc","Opp","Outcome","R","RA","Inn","W-L","Rank","GB","Win","Loss","Save","Time","D/N","Attendance","Streak","Orig. Scheduled")


#Team Examples - Minnesota Twins and Atlanta Braves

#Example 1.  For Minnesota Twins (MIN) team
tg <- teamGames(mlb_2017,"MIN")

write_json(tg,"c:\\R\\data.json", pretty = TRUE)

### Replace <YOUR_S3_BUCKET_NAME> with name of your AWS S3 bucket
put_object(file = "c:\\R\\data.json", object = "R/data.json", bucket = "<YOUR_S3_BUCKET_NAME>", acl = c("public-read"))


#Example 2.  For Atlanta Braves (ATL) team
tg <- teamGames(mlb_2017,"ATL")

write_json(tg,"c:\\R\\data.json", pretty = TRUE)

### Replace <YOUR_S3_BUCKET_NAME> with name of your AWS S3 bucket
put_object(file = "c:\\R\\data.json", object = "R/data.json", bucket = "<YOUR_S3_BUCKET_NAME>", acl = c("public-read"))