#!/bin/bash

###########################################################
#
# Data Science Examples Blog
# 	Site: http://datascienceexamples.com
# 	Blog Post:  https://datascienceexamples.com/2018/08/03/rstudio-server-on-aws-ec2/
# 	Last Update: 9/5/2018
#
# Desc: Install dependencies packages on Linux for R Installation
#
###########################################################


# NOTES:  
#   1. These scripts need to be run with root access
#   2. Scripts set up to run from ec2-user home directory - /home/ec2-user
#   3. Need root access to install packages - sudo
#
#  >  sudo /home/ec2-user/R-and-AWS-S3-master/R/Server/Script1_install_ec2_sudo.sh

echo 'Install utilities needed for R installation...'


yum -y install make libX11-devel.* libICE-devel.* libSM-devel.* libdmx-devel.* libx* 
yum -y xorg-x11* libFS* libX*  readline-devel gcc-gfortran gcc-c++ 
yum -y texinfo tetex texlive texlive-latex
yum -y install bzip2-devel.x86_64 bzip2-libs.x86_64 bzip2.x86_64
yum -y install libcurl libcurl-devel
yum -y install pcre pcre-devel
yum -y install java-1.8.0-openjdk.x86_64 java-1.8.0-openjdk-devel.x86_64
yum -y install openssl-devel
