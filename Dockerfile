FROM shippableimages/ubuntu1404_python:latest

RUN apt-get update && apt-get install -y texlive-full
RUN add-apt-repository -y ppa:george-edison55/cmake-3.x && apt-get update && apt-get install -y cmake
RUN apt-get install -y python3-pip && pip3 install colorama
RUN apt-get install -y llvm clang-3.5
RUN apt-get --no-install-recommends install -y doxygen
