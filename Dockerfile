#!/bin/bash

FROM continuumio/anaconda3

### 下载编译需要用到的软件 python

RUN conda create -n zyf_dockerfile_test python=3.10 -y
# 激活新环境
RUN echo "conda activate zyf_aquila2" >> ~/.bashrc

# 激活 Conda 环境
SHELL ["conda", "run", "-n", "zyf_aquila2", "/bin/bash", "-c"]

# 安装所需的软件包
RUN pip3 install flagai
RUN pip install deepspeed
RUN pip install peft

RUN pip install bitsandbytes


# 切换工作目录
WORKDIR /home

