#!/bin/bash

# NOTE:  These scripts need to be run with root access
#  >  sudo ./Script44_install_R_packages_sudo.sh

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

