#
wget http://www.tortall.net/projects/yasm/releases/yasm-1.3.0.tar.gz
tar -xzvf yasm-1.3.0.tar.gz
cd yasm-1.3.0/
./configure --prefix=$HOME/local
make
make install
cd ..

##
wget http://www.ece.uvic.ca/~frodo/jasper/software/jasper-1.900.1.zip
unzip jasper-1.900.1.zip
cd jasper-1.900.1/
./configure --enable-shared --prefix=$HOME/local
make
make install
cd ..

##
wget https://www.nasm.us/pub/nasm/releasebuilds/2.14.02/nasm-2.14.02.tar.gz
tar -xzvf nasm-2.14.02.tar.gz
cd nasm-2.14.02
./configure  --prefix=$HOME/local
make
make install
cd ..


git clone https://code.videolan.org/videolan/x264.git
cd x264
./configure --enable-shared --enable-static --prefix=$HOME/local


#Install FFmpeg
wget https://www.ffmpeg.org/releases/ffmpeg-2.8.12.tar.gz
tar -xzvf ffmepg-2.8.12.tar.gz
cd ffmpeg-2.8.12
./configure --enable-shared --enable-gpl --enable-swscale --enable-libx264 --prefix=$HOME/local
make
make install
export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:$HOME/local/lib/pkgconfig
cd ..

#Activate python 2.7

# Active cuda


#Install opencv
wget https://github.com/opencv/opencv/archive/2.4.13.tar.gz
tar -xzvf 2.4.13.tar.gz
cd opencv-2.4.13
mkdir build
cd build
# specify g++ for cuda
# specify gpu type
cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=$HOME/local -D BUILD_opencv_gpu=OFF -DCUDA_HOST_COMPILER=/usr/bin/g++ -D CUDA_GENERATION=Kepler ..
make -j32
make install
cd ..
cd ..

#安装gflags完成后，再安装glog。其它顺序随意
#install gflags-1.7
wget https://github.com/gflags/gflags/archive/v1.7.tar.gz
tar -xzvf v1.7.tar.gz
cd gflags-1.7
./configure --prefix=$HOME/local
make -j32
make install
cd ..

#install glog 0.3.3
wget https://github.com/google/glog/archive/v0.7.1.tar.gz
tar -xzvf v0.7.1.tar.gz
cd glog-0.7.1
./configure --prefix=$HOME/local
make -j32
make install
cd ..

#install protobuf 2.5.0
wget https://github.com/google/protobuf/releases/download/v2.5.0/protobuf-2.5.0.tar.gz
tar -xzvf protobuf-2.5.0.tar.gz
cd protobuf-2.5.0
./configure --prefix=$HOME/local
make
make install
cd ..

#install boost 1.55.0
wget https://sourceforge.net/projects/boost/files/boost/1.55.0/boost_1_55_0.tar.gz
tar -xzvf boost_1_55_0.tar.gz
cd boost_1_55_0
./bootstrap.sh --prefix=$HOME/local
./b2 -j 32
./b2 install
cd ..

# install pip
mkdir pip
wget https://bootstrap.pypa.io/get-pip.py


#install hdf5


