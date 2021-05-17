FROM jenkins-android-v1
USER root
# 使用方式: docker build -t jenkins-android-flutter-v1 .
# 镜像打标签： docker tag jenkins-android-flutter-v1 itvincent/jenkins-android-flutter-v1:1.0
# 上传镜像： docker push itvincent/jenkins-android-flutter-v1:1.0


# export FLUTTER_HOME=/opt/flutter
ENV FLUTTER_HOME=/opt/flutter
# v1.1增加设置flutter的国内镜像
ENV FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn
ENV PUB_HOSTED_URL=https://pub.flutter-io.cn

# 设置环境变量: 把 flutter sdk加入到 PATH 中
# export PATH=$FLUTTER_HOME/bin:$PATH
ENV PATH ${FLUTTER_HOME}/bin:${PATH}

# 解压flutter到opt
ADD flutter_linux_1.22.6-stable.tar.xz /opt

## 安装好dart-sdk & flutter tool
# RUN yes | flutter -v

# 同意licenses
# RUN yes | flutter doctor --android-licenses
RUN yes | sdkmanager --licenses

# docker run \
#   -u root \
#   -d \
#   --name jenkins-android-flutter-v1 \
#   -p 8080:8080 \
#   -p 50000:50000 \
#   -v $DOCKERDATA_HOME/jenkins:/var/jenkins_home \
#   jenkins-android-flutter-v1:1.0