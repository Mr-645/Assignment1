# Assignment 1 - Bubble display
## USAGE INSTRUCTIONS
1. Go to [this folder](https://github.com/Mr-645/Assignment1/tree/master/Assignment%201%20-%20Bubble%20display%20-%20Arduino%20Nano)
2. Go to the `/src` folder and run `main.cpp`.
## Report
![Fully built prototype](/20190508_095920.jpg)
# *Work in progress*
### Introduction
Blah blah
### Design
blah
```C
// Main timing stuff starts here
  //Pressed start
  if(allowTiming == true){
    if(TimeOfStopWatch == 0){
      startTimePoint = millis();
      TimeOfStopWatch++;
      // stageVal = 1;
    }
    else if(timeWhilstStopped == 0){
      TimeOfStopWatch = millis() - timeWhilstStopped - startTimePoint;
      // stageVal = 2;
    }
    else{
      TimeOfStopWatch = millis() - timeWhilstStopped;
      // stageVal = 3;
    }
  }
  //Pressed stop
  else if(allowTiming == false) {
    if(TimeOfStopWatch != 0){
      timeWhilstStopped = millis() - TimeOfStopWatch;
      // stageVal = 4;
    }
    else{
      timeWhilstStopped = 0;
      // stageVal = 5;
    }
  }
  // Main timing stuff stops here
```