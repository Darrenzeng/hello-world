FROM centos:centos7
### 下载编译需要用到的软件 python
RUN yum install -y gcc gcc-c++ autoconf automake libtool make zlib* libffi-devel
### 下载编译需要用到的软件 openssl
RUN yum install -y zlib zlib-dev openssl-devel sqlite-devel bzip2-devel libffi libffi-devel gcc gcc-c++

RUN pip install --extra-index-url https://download.pytorch.org/whl/test/cu118 llama-recipes[vllm]

# 切换工作目录
WORKDIR /spider

