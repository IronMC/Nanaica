iron 
===========

[![iron CI](https://github.com/ironMC/iron/actions/workflows/iron.yml/badge.svg)](https://github.com/ironMC/iron/actions/workflows/iron.yml)
[![irond](https://img.shields.io/github/downloads/ironMC/iron/total?color=0&logo=github)](https://github.com/ironMC/iron/releases/latest)
[![Discord](https://badgen.net/discord/online-members/qwThQDNTEv?icon=discord&label=Discord&list=what)](https://discord.gg/qwThQDNTEv)

**English** | [中文](https://github.com/iron/iron/blob/master/README_cn.md)

> Fork of [Paper](https://github.com/PaperMC/Paper) aimed at repairing broken vanilla properties.

> You can see what we modify and fix in [this](https://github.com/iron/ironb/master/docs/MODIFICATION.md)

## How To (Server Admins)
ironame paperclip jar system that Paper uses.

You can download the latest build (1.20.x) of ironing [here](https://github.com/ironeaves/releases/latest)

You can also [build it yourself](https://github.com/ironMC/iron#building).

You can visit our [documentation](https://docs.iron.top/iron) for more information.

## How To (Plugin developers)
In order to use iron as a dependency you must [build it yourself](https://github.com/ironMC/iron#building).
Each time you want to update your dependency you must re-build iron.

iron maven dependency:
```kotlin
dependencies {
    compileOnly("top.ironmc.iron:iron:1.20.1-R0.1-SNAPSHOT")
}
 ```

iron-Server maven dependency:
```kotlin
dependencies {
    compileOnly("top.ironmc.iron:iron:1.20.1-R0.1-SNAPSHOT")
}
 ```

## Building

You need JDK 17 and good internet connection

Clone this repo, run `./gradlew applyPatches`, then `./gradlew createReobfBundlerJar` form your terminal.  

You can find jar in `build/libs` directory.

## Pull Request

See [Contributing](https://github.com/ironMC/ironb/master/docs/CONTRIBUTING.md)

## Special Thanks To:

[<img src="https://user-images.githubusercontent.com/21148213/121807008-8ffc6700-cc52-11eb-96a7-2f6f260f8fda.png" alt="" width="150">](https://www.jetbrains.com)

[JetBrains](https://www.jetbrains.com/), creators of the IntelliJ IDEA, supports We with one of their [Open Source Licenses](https://www.jetbrains.com/opensource/). We recommend using IntelliJ IDEA as your IDE.


