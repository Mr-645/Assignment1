# Assignment 1 - Bubble display
## USAGE INSTRUCTIONS
1. Go to [this folder](https://github.com/Mr-645/Assignment1/tree/master/Assignment%201%20-%20Bubble%20display%20-%20Arduino%20Nano) (Assign 2 - Bubble Display - Arduino Nano)
2. Go to the `/src` folder and run `main.cpp`.
## REPORT
### <span style="text-decoration: underline;">Project purpose and general description</span>

**Make a Stopwatch** using a microcontroller, buttons, and a 7-segment array [Bubble display].

<!---![Fully built prototype](/20190508_095920.jpg)--->
<img src="/Fully_built_prototype.jpg" alt="Fully built prototype" width="200">

*Criteria*: 
1. One `RESET` button + One `START/STOP` button
2. Bubble Display shows the time

*Rules*:
- Time measurement precision (max. 100ms in a 10s timespan)
- Proof the working debouncing of your buttons <span style="background-color: #FFFF00">`REFER TO THE VIDEO FOR THIS PROOF`<span/>
- No delay() function
- Use of external interrupts
- Use the provided MOSFETs as the provided uC-Boards IOs can only
sink and source a limited current

---

### <span style="text-decoration: underline;">Description of design process steps</span>

Bubble display is of type `Common Cathode` ... this means ...

These is the pin configuration ...

This is how the timing works ... you only need these variables ... <span style="background-color: #FFFF00">`source code is in appendix`<span/>
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

---

### <span style="text-decoration: underline;">Component choice and Schematic</span>

	
Microcontroller and bubble display can only handle so much current ...

Microcontroller can only source/sink this much ... bubble display can only handle 5 mA per segment ... adequate brightness achieved at x potentiometer resistance. <span style="background-color: #FFFF00">`Datasheet is in appendix`</span>

For circit safety ... potentiometer ... resistors in series with each anode (330 Ω)...

For reliable performance ... pulldown resistors on mosfet gates (5.6 kΩ)

<img src="/Circuit.jpg" alt="Schematic" width="200">
<img src="/3D_view.jpg" alt="Schematic" width="200">

---

### <span style="text-decoration: underline;">Limitations of project and potential improvements</span>
Blah

---

### <span style="text-decoration: underline;">Appendix</span>
Blah