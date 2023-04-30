# Tank Drive

Tank drive is a control scheme for controlling the drivetrain. With this, the controller's left joystick controls the left side of the robot, while the right joystick controls the right side of the robot.

This control scheme is very easy to code, but can be unintuitive for an inexperienced driver. Some drivers prefer this control scheme due to it's increased level of control.

<!-- prettier-ignore-start -->
=== "PROS"

    ``` cpp
    #include "main.h"

    // Motor Group Declarations for Left and Right
    pros::Motor_Group motors_left({1,2,3});
    pros::Motor_Group motors_right({-4,-5,-6}); // Negative ports indicate reversed motors

    void opcontrol() {
      while(1) {
        // Drive the left side of the robot forward at joystick left Y speed
        motors_left.move(master.get_analog(pros::E_CONTROLLER_ANALOG_LEFT_Y));

        // Drive the right side of the robot forward at joystick right Y speed
        motors_right.move(master.get_analog(pros::E_CONTROLLER_ANALOG_RIGHT_Y));
        delay(20);
      }
    }
    ```

=== "VEXCode"

    ``` c++
    #include "vex.h"
    using namespace vex;

    vex::motor left_motor(vex::PORT1);
    vex::motor right_motor(vex::PORT2, true);

    int main(void) {
      while(1) {
        // Retrieve the necessary joystick values
        int leftY = Controller1.Axis3.position(percent);
        int rightY = Controller1.Axis2.position(percent);

        // Move the left side of the robot
        motors_left.spin(vex::directionType::fwd, leftY);

        // Move the right side of the robot
        motors_right.spin(vex::directionType::fwd, rightY);
        wait(20, msec);
      }
    }

    ```
<!-- prettier-ignore-end -->
