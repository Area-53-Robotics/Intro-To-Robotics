# Bang Bang Controller

This is the most basic controller you can use. It's incredibly simple, and incredibly imprecise. It's a feedback look, which means that acts in response to the actions of the system. It only has two modes, on or off.

```cpp
float error = calculateError(); // Error is the distance away from the point you want to reach.

while (error < 0) {
    chassis.move(127);
    error = calculateError();
  }
  chassis.move(0);

```

In this case, the while loop would run until the system hits the target, in this case the drivetrain. Generally you would not use a bang bang controller for autonomous drivetrain movement because you usually overshoot your target, however for some systems you don't need any more precision then bang bang.
