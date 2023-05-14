# Bang Bang Controller

The bang bang controller is one of the most basic control loops you can use. It's a feedback controller which means that it responds to the current state of the system. With this controller, there are only two outputs, on, and off.


```cpp
float error = calculateError(); // Error is the distance away from the point you want to reach.

while (true) {
  error = calculateError();
  if (error > 0)
    chassis.move(127); // Move the chassis forward at max speed
  } else {
    chassis.move(0); // Stop the chassis
  }
}
```

In this case, the while loop would run until the system hits the target, in this case the drivetrain. Generally you would not use a bang bang controller for autonomous drivetrain movement because you usually overshoot your target, however for some systems you don't need any more precision then bang bang.
