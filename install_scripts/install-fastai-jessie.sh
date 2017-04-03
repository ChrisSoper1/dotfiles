#!/bin/bash

CUDA_INSTALLER="https://developer.nvidia.com/compute/cuda/8.0/Prod2/local_installers/cuda_8.0.61_375.26_linux-run"
ANACONDA_INSTALLER="https://repo.continuum.io/archive/Anaconda2-4.2.0-Linux-x86_64.sh" 
CUDNN_TARBALL="http://platform.ai/files/cudnn.tgz"

install() {
# Install pre-requisite dependencies
sudo apt update
sudo apt install -yyq tmux build-essential gcc g++ make binutils
sudo apt install -yyq software-properties-common nvidia-smi

# Install Anaconda2
wget $ANACONDA_INSTALLER -O /tmp/anaconda2-install.sh
bash /tmp/anaconda2-install.sh -b

# Add Anaconda to PATH
export PATH="$PATH:$HOME/anaconda2/bin"
cat <<EOF >>  $HOME/.profile
# Added `date` by install-fastai.sh
export PATH="$PATH:$HOME/anaconda2/bin"
EOF

# Download the cuda SDK installer
wget $CUDA_INSTALLER -O /tmp/cuda-install.sh

# Install the CUDA SDK
bash /tmp/cuda-install.sh --silent --toolkit
sudo modprobe nvidia
nvidia-smi

# Install Anaconda2 libraries
conda install -y bcolz
conda upgrade -y --all

# Install and configure theano
pip install theano

cat <<EOF > $HOME/.theanorc
[global]
device=gpu
floatX = float32

[cuda]
root = /usr/local/cuda
EOF

# Install and configure keras
pip install keras==1.2.2
mkdir ~/.keras
cat <<EOF > $HOME/.keras/keras.json
{
	"image_dim_ordering": "th",
	"epsilon": 1e-07,
	"floatx": "float32",
	"backend": "theano"
}
EOF
}

# Install cudnn libraries
wget $CUDNN_TARBALL -O /tmp/cudnn.tgz
mkdir /tmp/cudnn
cd /tmp/cudnn
tar -zxf /tmp/cudnn.tgz
cd cuda
sudo cp lib64/* /usr/local/cuda/lib64/
sudo cp include/* /usr/local/cuda/include/

# Configure jupyter
jupyter notebook --generate-config
jupass=`python -c "from notebook.auth import passwd; print(passwd())"`
cat <<EOF >> $HOME/.jupyter/jupyter_notebook_config.py
c.NotebookApp.password = u'$jupass'
c.NotebookApp.ip = '*'
c.NotebookApp.open_browser = False
EOF
