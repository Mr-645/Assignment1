#include <Arduino.h>
#include <SevSeg.h>

#define interruptPinStartStop 2 //The Start/Stop button pin
#define interruptPinReset 3 //The Reset button pin
#define ledPin 13 //LED builtin pin

uint32_t debounceDelay = 50;  //Debounce time - Switch ignore time
uint32_t lastDebounceTime = 0; //This will store the last time the LED was updated
bool debounceDelayDone = false; //Whether or not the debounce delay has occured
bool allowTiming = false;

//Create an instance of the object.
SevSeg myDisplay;

//Create global variables
uint32_t startTimePoint = 0;
uint32_t timeWhilstStopped = 0;
uint32_t TimeOfStopWatch = 0;
uint8_t stageVal = 0;

//Function to give clearance for serial output
void startStopFunc(){
  if (debounceDelayDone == true) {
    //If debounceDelayDone is true, do the following 

    //Toggle between the modes
    if (allowTiming == true){
      allowTiming = false;
      // stageVal = 1;
    }
    //else if (allowTiming == false){
    else{
      allowTiming = true;
      // stageVal = 2;
    }
    lastDebounceTime = millis(); //Reset last debounce time
  }
}

//Function to give clearance for serial output
void resetFunc(){
  if (debounceDelayDone == true) {
    //If debounceDelayDone is true, do the following
    TimeOfStopWatch = 0;
    startTimePoint = 0;
    timeWhilstStopped = 0;
    allowTiming = false;
    lastDebounceTime = millis(); //Reset last debounce time
    // stageVal = 0;
  }
}

void setup(){
  Serial.begin(9600); //Initialises serial comms at a baud rate of 9600

  int displayType = COMMON_CATHODE; //Your display is either common cathode or common anode
    //This pinout is for a bubble dispaly
       //Declare what pins are connected to the GND pins (cathodes)
       int digit1 = 10; //Pin 1
       int digit2 = 12; //Pin 10
       int digit3 = 11; //Pin 4
       int digit4 = A0; //Pin 6
       
       //Declare what pins are connected to the segments (anodes)
       int segA = A1; //Pin 12
       int segB = A2; //Pin 11
       int segC = 4; //Pin 3
       int segD = 5; //Pin 8
       int segE = 6; //Pin 2
       int segF = 7; //Pin 9
       int segG = 8; //Pin 7
       int segDP= 9; //Pin 5
   
  int numberOfDigits = 4; //Do you have a 1, 2 or 4 digit display?

  myDisplay.Begin(displayType, numberOfDigits, digit1, digit2, digit3, digit4, segA, segB, segC, segD, segE, segF, segG, segDP);
  
  myDisplay.SetBrightness(100); //Set the display to 100% brightness level

  pinMode(ledPin, OUTPUT); //Sets the builtin led pin as an output
  pinMode(interruptPinStartStop, INPUT_PULLUP); //Assigns a pull up resistor to the push button
  pinMode(interruptPinReset, INPUT_PULLUP); //Assigns a pull up resistor to the push button

  //Run the dispValFunc function when the pin is high
  attachInterrupt(digitalPinToInterrupt(interruptPinStartStop), startStopFunc, FALLING);

  //Run the dispValFunc function when the pin is high
  attachInterrupt(digitalPinToInterrupt(interruptPinReset), resetFunc, FALLING);
}

void loop(){
  //Example ways of displaying a decimal number
  char tempString[10]; //Used for sprintf
  sprintf(tempString, "%4d", TimeOfStopWatch); //Convert TimeOfStopWatch into a string that is right adjusted

  if (TimeOfStopWatch >= 1000 && TimeOfStopWatch < 10000){
    myDisplay.DisplayString(tempString, 1);
  }
  else if (TimeOfStopWatch >= 10000){
    myDisplay.DisplayString(tempString, 2);
  }
  else{
    myDisplay.DisplayString(tempString, 0);
  }

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
  // /*
  Serial.print(TimeOfStopWatch);
  Serial.print(",");
  Serial.print(timeWhilstStopped);
  Serial.print(",");
  Serial.print(startTimePoint);
  Serial.print(",");
  Serial.print(stageVal);
  Serial.println(",");
  // */

  //Take care of switch debouncing
  if (millis() - lastDebounceTime >= debounceDelay){
    debounceDelayDone = true;
    digitalWrite(ledPin, LOW);
  }
  else {
    debounceDelayDone = false;
    digitalWrite(ledPin, HIGH);
  }
}