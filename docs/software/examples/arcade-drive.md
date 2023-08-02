# Arcade Drive

This is another control scheme for controlling the drivetrain. With this, on joystick controls how fast the drivetrain move forwards and backwards, while the other controls the robot's turning.

This control scheme may be more intuitive for beginner drivers, but is harder to program.

<!-- prettier-ignore-start -->
=== "PROS"
    ```cpp
    #include "main.h"

    // Motor definitions
    pros::Motor_Group motors_left({1, 2, 3});
    pros::Motor_Group motors_right({-4, -5, -6});

    void opcontrol() {
      while(1) {
        // Retrieve the necessary joystick values
        int leftY = master.get_analog(pros::E_E_CONTROLLER_ANALOG_LEFT_Y);
        int rightX = master.get_analog(pros::E_E_CONTROLLER_ANALOG_RIGHT_X);

        // Move the left side of the robot
        motors_left.move(leftY + rightX);

        // Move the right side of the robot
        motors_right.move(leftY - rightX);
        delay(20);
      }
    }

    ```
=== "VEXCode"
    ```cpp
    #include "vex.h"
    using namespace vex;

    vex::motor left_motor(vex::PORT1);
    vex::motor right_motor(vex::PORT2);

    int main(void) {
      while(1) {
        // Retrieve the necessary joystick values
        int leftY = Controller1.Axis3.position(percent);
        int rightX = Controller1.Axis1.position(percent);
        
        // Move the left side of the robot
        motors_left.spin(vex::directionType::fwd, leftY + rightX);
        
        // Move the right side of the robot 
        motors_right.spin(vex::directionType::fwd, leftY - rightX);
        wait(20, msec);
      }
    }

    ```
<!-- prettier-ignore-end -->
