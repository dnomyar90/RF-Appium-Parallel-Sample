# Parallel Appium Test in Robot Framework via Pabot
- [http://robotframework.org/](http://robotframework.org/)
- [https://pabot.org/](https://pabot.org/)
- [https://appium.io/](https://appium.io/)

### Pre-Requisites
* Python
* Android sdk
* Robot Framework
* Appium 

### Installation
- Python

```
Follow the tutorial on how to install Python [here](https://realpython.com/installing-python/)
```

- Appium
```
$ npm install -g appium
```
- Robotframework, Appium Library, and Pabot
```
$ pip install robotframework
$ pip install robotframework-appiumlibrary
$ pip install robotframework-pabot
```
### Run Appium server
```
$ appium -p 4723 
```

### Install APK
Install APK for calculator sample to your devices. Located [here](https://github.com/dnomyar90/RF-Appium-Parallel-Sample/blob/main/asset/calculator.apk)

### Devices Set
Store device info such as UDID, Name, Appium Port, and System Port as .dat file

E.g.

```
[Device1]
tags=device1
udid=9RGNU20920100424
appium_port=4724
system_port=8201

[Device2]
tags=device2
udid=4aba4aacac3f71ce
appium_port=4723
system_port=8202
```
### How To Run
```
$ ./run-test.sh [tag] [threads]

./run-test.sh calculator 2
```

## Notes
You definitely can improve this sample to automatically install APK and start Appium server instead of having to do it manually. This sample is provided as-is at bare minimum just to give you idea how to do parallel Appium test on Robot Framework.

### Demo
[![Parallel RF Appium Tests](https://j.gifs.com/jZ74m4.gif)](https://www.youtube.com/watch?v=u0nHLsjJnqc)asset