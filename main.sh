#Install FFmpeg



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
