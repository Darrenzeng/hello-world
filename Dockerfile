#!/bin/bash

FROM continuumio/anaconda3

### 下载编译需要用到的软件 python

RUN conda create -n zyf_dockerfile_test python=3.10 -y
# 激活新环境
RUN echo "conda activate zyf_dockerfile_test" >> ~/.bashrc

# 激活 Conda 环境
SHELL ["conda", "run", "-n", "zyf_dockerfile_test", "/bin/bash", "-c"]

# 安装所需的软件包
RUN pip3 install --extra-index-url https://download.pytorch.org/whl/test/cu118 llama-recipes

RUN yum install -y gcc gcc-c++ autoconf automake libtool make zlib* libffi-devel
### 下载编译需要用到的软件 openssl
RUN yum install -y zlib zlib-dev openssl-devel sqlite-devel bzip2-devel libffi libffi-devel gcc gcc-c++
# 切换工作目录
WORKDIR /home

