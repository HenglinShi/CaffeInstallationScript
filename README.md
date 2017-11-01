# Using CSC Taito-GPU


##Using caffe 1
The CSC taito-GPU server has already provided 

module purge
module avail
module avail <Module Name> ##e.g. module avail caffe
module load caffe


This caffe was built with OpenCV 2.4.10 and Python 3.4.5. If you want build your own caffe based on Python 2.7


module purge
module load python-env/2.7.10
python -V
# Down load your own caffe and place it in the right place


## How to use Nsight on Taito-GPU
Requirements: Putty, Xming
## Configure Xming and starting Xming Server


## Configure X11 forwarding for Putty
srun -n 1 -N 1 --gres=gpu:k80:1 --x11=first -p gpu nsight
