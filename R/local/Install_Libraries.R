###########################################################
#
# Data Science Examples Blog
# 	Site: http://datascienceexamples.com
# 	Blog Post:  https://datascienceexamples.com/2018/07/31/r-and-aws-s3/
# 	Last Update: 9/5/2018
#
# Desc: Load R libraries to read and write to AWS S3 bucket
#
###########################################################

#install libraries
install.packages("httr")
install.packages("xml2")
install.packages("digest")
install.packages("base64enc")
install.packages("devtools")
install.packages("aws.s3", repos = c("cloudyr" = "http://cloudyr.github.io/drat"))
install.packages("jsonlite", repos="http://cran.r-project.org")


### NOTE:  If using AWS S3 Bucket, need to enter access information
###  set system environment variables for AWS IAM account
###  replace <PUT-ACCESS-KEY> with your AWS IAM Account access key
###  replace <PUT-SECRET-KEY> with your AWS IAM Account secret key
###  Command to enter at R prompt
###  > Sys.setenv("AWS_ACCESS_KEY_ID" = "<PUT-ACCESS-KEY>","AWS_SECRET_ACCESS_KEY" = "<PUT-SECRET-KEY>")

