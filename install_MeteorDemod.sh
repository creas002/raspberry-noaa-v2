#!/bin/bash

cd ~
sudo apt update
sudo apt install python3-dev python3-pip -y
sudo apt install cmake build-essential pkg-config git -y
sudo apt install libatlas-base-dev liblapacke-dev gfortran -y

#git clone https://github.com/opencv/opencv.git
#cd opencv/
#mkdir build && cd build
#cmake ../  -DBUILD_LIST=core,imgproc,imgcodecs -DCMAKE_INSTALL_PREFIX=/usr/local -DBUILD_TESTS=OFF -DBUILD_EXAMPLES=OFF -DCMAKE_SHARED_LINKER_FLAGS=-latomic
#make -j4
#sudo make install

sudo apt install libopencv-dev python3-opencv -y

cd ~
git clone --depth=1 https://github.com/Digitelektro/MeteorDemod.git
cd MeteorDemod
git checkout beta
git submodule update --init --recursive
mkdir build && cd build
cmake ../
make -j4
sudo make install
sudo chown $USER:$USER -R ~/.config/meteordemod

cd ~