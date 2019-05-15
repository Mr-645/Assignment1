# Assignment 1 - Bubble display
## USAGE INSTRUCTIONS
1. Go to [this folder](https://github.com/Mr-645/Assignment1/tree/master/Assignment%201%20-%20Bubble%20display%20-%20Arduino%20Nano) (Assign 2 - Bubble Display - Arduino Nano)
2. Go to the `/src` folder and run `main.cpp`.
## REPORT
### Project purpose and general description

**Make a Stopwatch** using a microcontroller, buttons, and a 7-segment array [Bubble display].

<!---![Fully built prototype](/20190508_095920.jpg)--->
<img src="/Fully_built_prototype.jpg" alt="Fully built prototype" width="200">

*Criteria*: 
1. One `RESET` button + One `START/STOP` button
2. Bubble Display shows the time

*Rules*:
- Time measurement precision (max. 100ms in a 10s timespan)
- Proof the working debouncing of your buttons `REFER TO THE VIDEO FOR THIS PROOF`
- No delay() function
- Use of external interrupts
- Use the provided MOSFETs as the provided uC-Boards IOs can only
sink and source a limited current

---

### Description of design process steps

Bubble display is of type `Common Cathode` ... this means ... had to modify .cpp file of library to make it compliant with my system

These is the pin configuration ...

This is how the timing works ... you only need these variables ... <span style="background-color: #FFFF00">`source code is in appendix`</span>
```C
// Main timing stuff starts here
  //Pressed start
  if(allowTiming == true){
    if(TimeOfStopWatch == 0){
      startTimePoint = millis(); //Keeps updating the start time point until start is pressed
      TimeOfStopWatch++; //This just gets the variable going for the loop to handle next time
    }
    else if(timeWhilstStopped == 0){
      TimeOfStopWatch = millis() - timeWhilstStopped - startTimePoint; //Main sums for stop watch running before the first stop
    }
    else{
      TimeOfStopWatch = millis() - timeWhilstStopped; //Main sums for all following stopwatch stop/starts
    }
  }
  //Pressed stop
  else if(allowTiming == false) {
    if(TimeOfStopWatch != 0){
      timeWhilstStopped = millis() - TimeOfStopWatch; //Keeps track of how long we were stopped for
    }
    else{
      timeWhilstStopped = 0; //Housekeeping for when the stopwatch is reset
    }
  }
```

---

### Component choice and Schematic

Microcontroller and bubble display can only handle so much current ...

Microcontroller can only source/sink this much ... bubble display can only handle 5 mA per segment ... adequate brightness achieved at x potentiometer resistance. <span style="background-color: #FFFF00">`Datasheet is in appendix`

For circit safety ... potentiometer ... resistors in series with each anode (330 Ω)...

For reliable performance ... pulldown resistors on mosfet gates (5.6 kΩ)

<img src="/Circuit.jpg" alt="Schematic" width="200">
<img src="/3D_view.jpg" alt="3D view" width="200">

---

### Limitations of project and potential improvements
It worked really well most of the time.
Sometimes there are unidentifiable glitches when a button press happens

---

### Appendix
#### Datasheet

<img src="/datasheet.png" alt="Datasheet" width="500">

#### Source code of non-testing version of programme
The source code (main.cpp) is available [here](https://github.com/Mr-645/Assignment1/blob/master/Assignment%201%20-%20Bubble%20display%20-%20Arduino%20Nano/src/main.cpp)