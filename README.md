# CMSC6950_Project
Course project for CMSC6950 Spring 2021

James Munroe


## Software setup

Assuming you already have a conda installation such Miniforge installed, 

```
conda create -n rescal-snow
conda install numpy pandas scipy
conda activate rescale-snow
```

Clone the third-party software repo:
```
git clone https://github.com/kellykochanski/rescal-snow.git
cd rescal-snow
mkdir build
cmake -Wno-dev -DCMAKE_BUILD_TYPE=Release ..
make -j 4
```


