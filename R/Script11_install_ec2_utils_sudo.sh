#!/bin/bash

# NOTE:  These scripts need to be run with root access
#  >  sudo ./Script11_install_ec2_sudo.sh

echo 'Install utilities needed for R installation...'


yum -y install make libX11-devel.* libICE-devel.* libSM-devel.* libdmx-devel.* libx* xorg-x11* libFS* libX*  readline-devel gcc-gfortran gcc-c++ texinfo tetex
yum -y install bzip2-devel.x86_64 bzip2-libs.x86_64 bzip2.x86_64
yum -y install libcurl libcurl-devel
yum -y install java-1.8.0-openjdk.x86_64 java-1.8.0-openjdk-devel.x86_64
yum -y install openssl-devel

