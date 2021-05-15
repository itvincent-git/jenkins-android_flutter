# Description

1. 镜像基于itvincent/jenkins-android-v1创建
2. 安装的flutter版本是：1.22.6
3. FLUTTER_HOME 和 PATH都已经设置好



# How to use

```
docker run \
  -u root \
  -d \
  --name jenkins-android-flutter-v1 \
  -p 8080:8080 \
  -p 50000:50000 \
  -v $DOCKERDATA_HOME/jenkins:/var/jenkins_home \
  jenkins-android-flutter-v1
```

