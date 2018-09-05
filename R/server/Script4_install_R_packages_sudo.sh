#!/bin/bash

###########################################################
#
# Data Science Examples Blog
# 	Site: http://datascienceexamples.com
# 	Blog Post:  https://datascienceexamples.com/2018/08/03/rstudio-server-on-aws-ec2/
# 	Last Update: 9/5/2018
#
# Desc: Install R System Libraries on Linux server
#
###########################################################

# NOTES:  
#   1. make utility will need time to run - could be up to 90 minutes to complete
#   2. comments at end of script to verify R installation and how to create Unix user for RStudio Server
#   3. Scripts set up to run from ec2-user home directory - /home/ec2-user
#   4. Need root access to run script
#
#  >  sudo /home/ec2-user/R-and-AWS-S3-master/R/Server/Script4_install_R_packages_sudo.sh

R CMD INSTALL /home/ec2-user/lib/jsonlite_1.5.tar.gz
R CMD INSTALL /home/ec2-user/lib/mime_0.5.tar.gz
R CMD INSTALL /home/ec2-user/lib/curl_3.2.tar.gz
R CMD INSTALL /home/ec2-user/lib/openssl_1.0.2.tar.gz
R CMD INSTALL /home/ec2-user/lib/R6_2.2.2.tar.gz
R CMD INSTALL /home/ec2-user/lib/httr_1.3.1.tar.gz
R CMD INSTALL /home/ec2-user/lib/base64enc_0.1-3.tar.gz
R CMD INSTALL /home/ec2-user/lib/httr_1.3.1.tar.gz
R CMD INSTALL /home/ec2-user/lib/digest_0.6.15.tar.gz
R CMD INSTALL /home/ec2-user/lib/Rcpp_0.12.18.tar.gz
R CMD INSTALL /home/ec2-user/lib/BH_1.66.0-1.tar.gz
R CMD INSTALL /home/ec2-user/lib/xml2_1.2.0.tar.gz
R CMD INSTALL /home/ec2-user/lib/aws.signature_0.4.4.tar.gz
R CMD INSTALL /home/ec2-user/lib/aws.s3_0.3.12.tar.gz
