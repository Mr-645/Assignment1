Prab Singh - 2121645<br>MG7013 - Embedded Systems<br>16 May 2019
# Assignment 1 - Bubble display
## USAGE INSTRUCTIONS
1. Download and install the [Adafruit BMP085 Library](https://github.com/adafruit/Adafruit-BMP085-Library) for use with your Arduino compatible board.
2. If your setup is like mine (MOSFETs for the cathodes), find the `SevSeg.cpp` file of library and make [these](https://github.com/Mr-645/Assignment1#changes-to-sevsegcpp) modifications.
3. Download [this folder](https://github.com/Mr-645/Assignment1/tree/master/Assignment%201%20-%20Bubble%20display%20-%20Arduino%20Nano) (Assign 2 - Bubble Display - Arduino Nano) to get the Arduino sketch/C-programme
4. Navigate to the `/src` folder and run `main.cpp`.
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

The Bubble display is of the type `Common Cathode`. This means that every segment in a single digit shares a ground pin (a cathode is a negative pin). What this equates to is that in order to turn off an entire digit, all you need to do is disconnect its ground. The [Adafruit BMP085 Library](https://github.com/adafruit/Adafruit-BMP085-Library) can take care of this for you.

The only problem was that: we weren't driving the common-cathode 7-segment array in the fashion that the library expected. The library expected a direct connection, but we had MOSFETs between the array's negative pins and the GND rail (the MOSFETs were a requirement due to the microcontroller's limited current handling capabilities). 

With a direct connection, the microcontroller set a `logic low` on the cathode (GND) pins of the array, but because of the MOSFETs, we needed the microcontroller to put out a `logic high` instead. So, a modification of the `SevSeg.cpp` file of library was required in order to make it compliant. 

#### Changes to <SevSeg.cpp>
The code segment we need to change lies around the line number 100 mark. It looked like this:
```C
if(mode == COMMON_ANODE)
  {
    DigitOn = HIGH;
    DigitOff = LOW;
    SegOn = LOW;
    SegOff = HIGH;
  }
  else {
    DigitOn = LOW;
    DigitOff = HIGH;
    SegOn = HIGH;
    SegOff = LOW;
  }
```
It was changed to this:
```C
if(mode == COMMON_ANODE)
  {
    DigitOn = HIGH;
    DigitOff = LOW;
    SegOn = LOW;
    SegOff = HIGH;
  }
  else {
  //-----------------------THE CHANGE WAS MADE BETWEEN HERE
    DigitOn = HIGH;
    DigitOff = LOW;
  //-----------------------AND HERE
    SegOn = HIGH;
    SegOff = LOW;
  }
``` 

#### Pin choice
I needed two pins with hardware interrupt capability to handle button presses. The Arduino Nano only has two hardware interrupt pins and they're both 'Digital Pins'. The 7-segment array is run by multiplexing its pins (a digital process). If I was to use only the digital pins for the array, I would have run since there are only so many of those pins. 

Fortunately most of the analogue pins could be used as digital pins so I ended up using the A0, A1, and A2 pins of the Nano for the array. There was no need for changing a configuration setting of any sort. The usage of the analogue pins was in the same way as it was with the digital pins. All that was required was pin declaration in the setup function with the digital pins.

#### Programme logic for making the stopwatch work properly
This code below is the heart of the stopwatch functionality. You only need three variables to do it.

The variables are:
```C
//Global variables
uint32_t startTimePoint = 0; //Point at which the stopwatch starts from a reset or the microcontroller turning on
uint32_t timeWhilstStopped = 0; //Tracks end time points for the latest stopped time period
uint32_t TimeOfStopWatch = 0; //Tracks the end time point for the latest run time period
```
This is the logic:
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

For circit safety I put a potentiometer in series in the GND line (source pins of the mosfets). What I did was dial the resistance down to control the current flow (and thereby the brightness) until adequate brightness was achieved. The pot resistance was 330 Ω.

Initially I put resistors in series for each anode (330 Ω) but considered removing them once I installed the potentiometer, eventually I left them in for extra safety.

For reliable performance I installed pulldown resistors on the mosfet gates (5.6 kΩ). The concern was with the potential for segment flickering during startup.

<img src="/Circuit.jpg" alt="Schematic">
<img src="/3D_view.jpg" alt="3D view" width="600">

---

### Limitations of project and potential improvements
It worked really well most of the time. The timing, and the aspect of displaying values to the screen is perfect. Unfortunately, sometimes a glitch happens when a button is pressed. It doesn't happen very often, but it's not very rare either. 

The glitch is: the microcontroller registers a hardware interrupt and flashes the LED for debounce indication, but it doesn't run the code in the function.

I don't know how I'll implement an improvement to this system to sort out the glitch.

---

### Appendix
#### Datasheet and reference

<!---<img src="/datasheet.png" alt="Datasheet" width="500" border="5">--->
The Bubble display datasheet (BB_QDSP_DS.pdf) is available [here](/BB_QDSP_DS.pdf)

An infographic for the Nano is available [here](https://i.pinimg.com/736x/c4/87/21/c487213e9081fb0050878a02304e5693.jpg), it shows pin type information and current capability too. 

#### Source code of non-testing version of programme
The source code (main.cpp) is available [here](/Assignment%201%20-%20Bubble%20display%20-%20Arduino%20Nano/src/main.cpp)
