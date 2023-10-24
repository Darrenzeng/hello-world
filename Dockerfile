#!/bin/bash
#FROM nvcr.io/nvidia/pytorch:23.09-py3
FROM pytorch/pytorch:2.1.0-cuda11.8-cudnn8-devel
# FROM continuumio/anaconda3

# ### 下载编译需要用到的软件 python

# RUN conda create -n zyf_dockerfile_test python=3.10 -y
# # 激活新环境
# RUN echo "conda activate zyf_aquila2" >> ~/.bashrc

# # 激活 Conda 环境
# SHELL ["conda", "run", "-n", "zyf_aquila2", "/bin/bash", "-c"]

# # 安装所需的软件包
# RUN pip install flagai
# RUN pip install -U numpy
# RUN pip install deepspeed
# RUN pip install peft

# RUN pip install bitsandbytes


# # 切换工作目录
# WORKDIR /home

