# Toggling Subsystems

This is a common pattern that you might want to use on subsystems. Often, subsystems will have an on or off state, and you might want to toggle between them with a single button press. This may be advantageous for the driver, because it means they don't need to hold down a button to enable something.

<!-- prettier-ignore-start -->
=== "PROS"
    ```cpp
    #include "main.h"
    
    pros::Motor motor(1);
    pros::Controller master();
    pros::AdiDigitalOut piston();
    
    bool move = false; // by default, this will not move
    bool isPistonOn = false; // Piston starts retracted
    
    void opcontrol() {
        while(true) {
            if(master.get_digital_new_press(pros::Digital_B)) {
                // If this is true, move will changed to false
                // and vice versa. 
                move = !move; 
            }
            
            // If move is true, move the motor.         
            if(move) {
                motor.move(100);
            }
            // Else, don't
            else {
                motor.move(0);
            }

            
            if(master.get_digital_new_press(pros::Digital_A)) {
                isPistonOn = !isPistonOn; 
            } 

            piston.set_value(isPistonOn);
            
            pros::delay(20);
        }
    }


    ```

=== "VEXCode"
    ```cpp
    vex::motor mtr(vex::PORT1);
    
    void Motor_Move() {
        mtr.spin(vex::directionType::fwd, 100);
    }
    
    bool prev_value = false; 
    bool move = false;
    
    int main() {
        // Since VEXCode doesn't have an equivalent function to 
        // get_digital_new_press, we need to detect the new push 
        // of a controller button. 
        while (1) {
            prev_value = Controller1.ButtonB.pressing();
            // Detect a new press
            if(prev_value == false && Controller1.ButtonB.pressing()) {
                move = !move;
            }
            
            if(move) {
                mtr.spin(vex::directionType::fwd, 100);
            }
            else {
                mtr.spin(vex::directionType::fwd, 0);
            }
            wait(20, msec);
        }
        // OR
        
        // Alternatively, VEXCode also supports 
        // callbacks bound to controller buttons
        //
        // DO NOT put this in a while loop, call before a
        // while loop unlike this example. 
        Controller1.ButtonB.pressed( Motor_Move );
    }
    ```
<!-- prettier-ignore-end -->
