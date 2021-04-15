# Parallel Appium Test in Robot Framework via Pabot
[http://robotframework.org/](http://robotframework.org/)
### Pre-Requisites
* Android sdk
* Robot Framework
* Appium 

### Installation
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
### Run APPIUM server
```
$ appium -p 4723 
```

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