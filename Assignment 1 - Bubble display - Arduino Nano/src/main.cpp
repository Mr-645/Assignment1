#include <Arduino.h>
#include <SevSeg.h>

#define interruptPinStartStop 2 //The Start/Stop button pin
#define interruptPinReset 3 //The Reset button pin
#define ledPin 13 //LED builtin pin for showing when the debounce function is ignoring button presses

uint32_t debounceDelay = 50;  //Debounce time - Switch ignore time
uint32_t lastDebounceTime = 0; //This will store the last time the LED was updated
bool debounceDelayDone = false; //Whether or not the debounce delay has occurred
bool allowTiming = false; //Whether or not the stopwatch should run

//An instance of the object.
SevSeg myDisplay;

//Global variables
uint32_t startTimePoint = 0; //Point at which the stopwatch starts from a reset or the micro turning on
uint32_t timeWhilstStopped = 0; //Tracks end time points for the latest stopped time period
uint32_t TimeOfStopWatch = 0; //Tracks the end time point for the latest run time period

//Function to handle start/stop functionality
void startStopFunc(){
  if (debounceDelayDone == true) {
    //If debounceDelayDone is true, do the following 

    //Toggle between the modes
    if (allowTiming == true){
      allowTiming = false;
    }
    else{
      allowTiming = true;
    }
    lastDebounceTime = millis(); //Reset last debounce time
  }
}

//Function to handle reset functionality
void resetFunc(){
  if (debounceDelayDone == true) {
    //If debounceDelayDone is true, do the following
	//Reset all the variables
    TimeOfStopWatch = 0;
    startTimePoint = 0;
    timeWhilstStopped = 0;
    allowTiming = false;
    lastDebounceTime = millis(); //Reset last debounce time
  }
}

void setup(){
  int displayType = COMMON_CATHODE; //The .cpp file underneath (in the library) had to be modified
       //Pins that are connected to the Mosfet gate pins (to sink the cathodes to GND)
       int digit1 = 10; 
       int digit2 = 12; 
       int digit3 = 11; 
       int digit4 = A0;
       
       //Pins that are connected to the segments (anodes)
       int segA = A1; 
       int segB = A2; 
       int segC = 4; 
       int segD = 5; 
       int segE = 6; 
       int segF = 7; 
       int segG = 8; 
       int segDP= 9; 
   
  int numberOfDigits = 4; //4 digit display

  myDisplay.Begin(displayType, numberOfDigits, digit1, digit2, digit3, digit4, segA, segB, segC, segD, segE, segF, segG, segDP);
  
  myDisplay.SetBrightness(100); //Set the display to 100% brightness level

  pinMode(ledPin, OUTPUT); //Sets the builtin led pin as an output
  pinMode(interruptPinStartStop, INPUT_PULLUP); //Assigns a pull up resistor to the push button
  pinMode(interruptPinReset, INPUT_PULLUP); //Assigns a pull up resistor to the push button

  //Run the interruptPinStartStop function when the pin goes low
  attachInterrupt(digitalPinToInterrupt(interruptPinStartStop), startStopFunc, FALLING);

  //Run the interruptPinReset function when the pin goes low
  attachInterrupt(digitalPinToInterrupt(interruptPinReset), resetFunc, FALLING);
}

void loop(){
  //Display the floating point number that the "TimeOfStopWatch" variable is associated with
  char tempString[10]; //Used for sprintf
  sprintf(tempString, "%4d", TimeOfStopWatch); //Convert TimeOfStopWatch into a string that is right adjusted

  //Handle the placement of the decimal point
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
  // Main timing stuff stops here


  //Take care of switch debouncing
  if (millis() - lastDebounceTime >= debounceDelay){
    debounceDelayDone = true;
    digitalWrite(ledPin, LOW); //Turns the builtin LED off if the debounce timer has finished (not ignoring inputs)
  }
  else {
    debounceDelayDone = false;
    digitalWrite(ledPin, HIGH); //Turns the LED on if the timer is still running (ignoring inputs)
  }
}