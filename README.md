# Assignment 1 - Bubble display
## USAGE INSTRUCTIONS
1. Go to [this folder](https://github.com/Mr-645/Assignment1/tree/master/Assignment%201%20-%20Bubble%20display%20-%20Arduino%20Nano) (Assign 2 - Bubble Display - Arduino Nano)
2. Go to the `/src` folder and run `main.cpp`.
## REPORT
### Project purpose and general description

**Make a Stopwatch** using a microcontroller, buttons, and a 7-segment array [Bubble display].

<!---![Fully built prototype](/20190508_095920.jpg)--->
<img src="/Fully_built_prototype.jpg" alt="Fully built prototype" width="600">

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

The Arduino Nano microcontroller and the bubble display can only handle so much current. 

The Nano can only handle 20 mA per pin, and 200 mA overall.
The bubble display can only handle 5 mA per segment and 0.5 mA per segment provides adequate brightness.
<span style="background-color: #FFFF00">`Datasheet is in appendix`

For circit safety I put a potentiometer in series in the GND line (source pins of the mosfets). What I did was dial the resistance down to control the current flow (and thereby the brightness) until adequate brightness was achieved [the potentiometer resistance value is and the current flow was].

I put resistors in series for each anode (330 Ω) for extra safety.

For reliable performance I installed pulldown resistors on the mosfet gates (5.6 kΩ). The concern was with the potential for segment flickering during startup.

<img src="/Circuit.jpg" alt="Schematic">
<img src="/3D_view.jpg" alt="3D view" width="600">

---

### Limitations of project and potential improvements
It worked really well most of the time. The timing, and displaying values to the screen is perfect. Unfortunately, sometimes a glitch happens when a button is pressed. 

The glitch is: the microcontroller registers a hardware interrupt and flashes the LED for debounce indication, but it doesn't run the code in the function (refer to this time point).

I don't know how I'll implement an improvement to this system to sort out the glitch.

---

### Appendix
#### Datasheet and reference

<!---<img src="/datasheet.png" alt="Datasheet" width="500" border="5">--->
The Bubble display datasheet (BB_QDSP_DS.pdf) is available [here](/BB_QDSP_DS.pdf)

An infographic for the Nano is available [here](https://i.pinimg.com/736x/c4/87/21/c487213e9081fb0050878a02304e5693.jpg), it shows current capability too. 

#### Source code of non-testing version of programme
The source code (main.cpp) is available [here](/Assignment%201%20-%20Bubble%20display%20-%20Arduino%20Nano/src/main.cpp)