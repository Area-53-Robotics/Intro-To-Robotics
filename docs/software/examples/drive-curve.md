Drive curves are a method used to give the driver more control over a robot. They reduce the speed of the of the robot in the lower regions of the joystick, but do not reduce the speed of the robot when the joystick is pressed all the way forward. Normally the relationship between the position of the joystick and the speed of the robot is linear, but a drive curve changes this by passing the output of the controller into an exponential function. Any function can work, as long as when the joystick outputs its max value the function also outputsthe maximum speed of the motors. For example: in PROS the maximum output of the joystick is 127, and the move method of the motors spins the motor at max speed when its input is 127. Therefore the function must return 127 when its input is 127.

<!-- prettier-ignore-start -->
=== "PROS"
    Here are two different functions that can be used for PROS:

    Assuming these variables:

    - $x$ is the joystick output
    - $t$ is the gain that controls the steepness of the curve


    $$(e^{-\frac{t}{10}} + e^{\frac{|x|-127}{10}} * (1-e^{-\frac{t}{10}})*x$$

    $$e^\frac{|x|-127}{1000}*x$$

    Here's how you would implement that in code:

    ```cpp
    pros::Motor_Group motors_left({1,2,3});
    pros::Motor_Group motors_right({-4,-5,-6}); // Negative ports indicate reversed motors
    pros::Controller controller(pros:E_CONTROLLER_MASTER);


    double calc_drive_curve(double joy_stick_position, float drive_curve_scale) {
      if (drive_curve_scale != 0) {
        return (powf(2.718, -(drive_curve_scale / 10)) +
                powf(2.718, (fabs(joy_stick_position) - 127) / 10) *
                    (1 - powf(2.718, -(drive_curve_scale / 10)))) *
               joy_stick_position;
      }
      return joy_stick_position;
    }

    void opcontrol() {
        while(1) {
            int left_power = calc_drive_curve(controller.get_analog(pros::E_CONTROLLER_ANALOG_LEFT_Y), 3.5); // Gain is arbitrarily set to 3.5
            int right_power = calc_drive_curve(controller.get_analog(pros::E_CONTROLLER_ANALOG_RIGHT_Y), 3.5);
            motors_left.move(left_power);
            motors_right.move(right_power);
            delay(20);
        }
    }

    ```

=== "VEXCode"
    ```cpp
    //TODO
    ```
<!-- prettier-ignore-end -->

## References

-   [Team 5225A In The Zone Code Release (yes you read that right)](https://www.vexforum.com/t/team-5225a-in-the-zone-code-release-yes-you-read-that-right/63199)
-   [EZ Template: Joystick Curves](https://ez-robotics.github.io/EZ-Template/Tutorials/joystick_curve)
-   [Pilons Input Scaling Graph](https://www.desmos.com/calculator/rcfjjg83zx)
