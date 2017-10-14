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

#Install FFmpeg
wget https://www.ffmpeg.org/releases/ffmpeg-2.8.12.tar.gz
tar -xzvf ffmepg-2.8.12.tar.gz
cd ffmpeg-2.8.12
./configure --enable-shared --enable-gpl --enable-swscale --prefix=$HOME/local
make
make install
export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:$HOME/local/lib/pkgconfig
cd ..

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
wget https://github.com/google/glog/archive/v0.3.3.tar.gz
tar -xzvf v0.3.3.tar.gz
cd glog-0.3.3
./configure --prefix=$HOME/local
make -j32
make install
cd ..

#install protobuf 2.5.0

#install boost 1.55.0

#install hdf5

