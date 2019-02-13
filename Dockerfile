FROM ubuntu:latest
RUN yes Y | apt-get upgrade 
RUN yes Y | apt-get update 
RUN apt-get install -y openjdk-8-jdk wget unzip nano git 

ENV ANDROID_HOME /opt/android-sdk-linux

RUN mkdir -p ${ANDROID_HOME} && \
cd ${ANDROID_HOME} && \
wget -q https://dl.google.com/android/repository/sdk-tools-linux-4333796.zip -O android_tools.zip && \
unzip android_tools.zip && \
rm android_tools.zip

ENV PATH ${PATH}:${ANDROID_HOME}/tools:${ANDROID_HOME}/tools/bin:${ANDROID_HOME}/platforms-tools
RUN yes | sdkmanager --licenses

RUN yes Y | apt-get upgrade 
RUN yes Y | apt-get update 
RUN yes Y | apt-get install npm
RUN npm install --save-dev babel-polyfill

RUN npm config set unsafe-perm true

RUN npm i -g npm@6.4.1
RUN npm i -g node@8.14.0
RUN npm i -g gradle@latest

RUN npm i react-native-cli@2.0.1 -g



