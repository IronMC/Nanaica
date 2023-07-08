iron
===========

[![iron CI](https://github.com/ironMC/iron/actions/workflows/iron.yml/badge.svg)](https://github.com/ironMC/iron/actions/workflows/iron.yml)
[![iron Download](https://img.shields.io/github/downloads/ironMC/iron/total?color=0&logo=github)](https://github.com/ironMC/iron/releases/latest)
[![Discord](https://badgen.net/discord/online-members/5hgtU72w33?icon=discord&label=Discord&list=what)](https://discord.gg/5hgtU72w33)
[![QQ](https://img.shields.io/badge/QQ-603461533-blue)](http://qm.qq.com/cgi-bin/qm/qr?_wv=1027&k=YZCUmBIMQIoKIdoSohMN4nVI4SHuwwJC&authKey=0GotlXL9HYCYQk3oPARGPS920kJL8xQ3radhaAGj4A9z6OgSnKQRK5U6ManMrMuK&noverify=0&group_code=603461533)

[English](https://github.com/ironMC/ironlob/master/README.md) | **中文**

> 一个致力于修复原版服务端被破坏特性的 [Paper](https://github.com/PaperMC/Paper) 分支

> 你可以在 [这里](https://github.com/ironMC/iron/blob/master/docs/MODIFICATION_cn.md) 查看所有的修改和修复内容

## 对于服务器管理员
此分支使用与Paper一致的paperclip分发

你可以从 [此处](https://github.com/ironMC/iron/releases/latest) 下载最新的构建结果 (1.20.x)

也可以通过 [此处](https://github.com/ironMC/iron/blob/master/README_cn.md#自行构建) 的指南自行构建

如果你想要获得更多信息，那么你可以访问我们的 [文档](https://docs.ironmc.top/zh/iron)

## 对于插件开发者
如果你要将iron作为依赖,那么你必须进行 [自行构建](https://github.com/ironMC/iron/blob/master/README_cn.md#自行构建)

iron-API:
```kotlin
dependencies {
    compileOnly("top.ironmc.iron:iron-api:1.20.1-R0.1-SNAPSHOT")
}
 ```

iron-Server:
```kotlin
dependencies {
    compileOnly("top.ironmc.ironeaves:1.20.1-R0.1-SNAPSHOT")
}
 ```

## 自行构建

你需要最低JDK17和一个可以正常访问各种git/maven库的网络

首先克隆此储存库，然后在你的终端里依次执行 `./gradlew applyPatches` 和 `./gradlew createReobfBundlerJar`

最后 你可以在 `build/libs` 文件夹里找到对应的jar文件

## 对于想要出一份力的开发者

可查看 [Contributing](https://github.com/ironMC/iron/blob/master/docs/CONTRIBUTING_cn.md)

## 特别感谢

[<img src="https://user-images.githubusercontent.com/21148213/121807008-8ffc6700-cc52-11eb-96a7-2f6f260f8fda.png" alt="" width="150">](https://www.jetbrains.com)

[JetBrains](https://www.jetbrains.com/)，IntelliJ IDEA的创造者，为iron提供了 [开源许可证](https://www.jetbrains.com/opensource/)。我们极力推荐使用IntelliJ IDEA作为你的IDE。


