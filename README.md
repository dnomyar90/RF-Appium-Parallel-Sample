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
### How To Run
```
$ ./run-test.sh [tag] [threads]

E.g.

./run-test.sh calculator 2
```