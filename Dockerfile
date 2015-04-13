FROM shippableimages/ubuntu1404_python:latest

RUN apt-get update && apt-get install -y texlive-full
