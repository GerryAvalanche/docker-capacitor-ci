FROM node:21-bookworm

LABEL version="1.0"
LABEL maintainer="Gerrit Kirschbaum <lotusash>"

RUN apt-get update
RUN apt-get install -y openjdk-17-jdk
RUN apt-get install -y android-sdk
ENV ANDROID_HOME=/lib/android-sdk
ENV PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin:$ANDROID_HOME/platform-tools
RUN apt-get install -y sdkmanager
RUN yes | sdkmanager --licenses
RUN npm -g install @capacitor/core
RUN npm -g install @capacitor/cli --save-dev

CMD ["bash"]
