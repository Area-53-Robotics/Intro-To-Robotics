# PID Controller

## History

From [Wikipedia](https://en.wikipedia.org/wiki/PID_controller#Origins):

> It was not until 1922, however, that a formal control law for what we now call PID or three-term control was first developed using theoretical analysis, by Russian American engineer Nicolas Minorsky. Minorsky was researching and designing automatic ship steering for the US Navy and based his analysis on observations of a helmsman. He noted the helmsman steered the ship based not only on the current course error but also on past error, as well as the current rate of change; this was then given a mathematical treatment by Minorsky. His goal was stability, not general control, which simplified the problem significantly. While proportional control provided stability against small disturbances, it was insufficient for dealing with a steady disturbance, notably a stiff gale (due to steady-state error), which required adding the integral term. Finally, the derivative term was added to improve stability and control.

> Trials were carried out on the USS New Mexico, with the controllers controlling the angular velocity (not the angle) of the rudder. PI control yielded sustained yaw (angular error) of ±2°. Adding the D element yielded a yaw error of ±1/6°, better than most helmsmen could achieve.

## Application

PID controller can be used anywhere a bang bang controller could be used. They are very precise, and are the bread and butter of autonomous movement. The fundamental difference between a bang bang controller and a PID controller is that the output varies based on the proximity to the target. The PID controller has a lower output as the system moves close to the target. This makes it much better than the bang bang controller, which assumes that the system can go from maximum speed to halted instantly.

## Components

The PID controller has three components, all of which get added together to produce the output.

### Proportional

The proportional term is the simplest term. It is equal to error.

```cpp
float distTraveled = 0;
float target = 12; // We want to move 12 inches forward
float error = target;
float output;

while (true) {
  distTraveled = getDistanceTraveled(); // Returns the distance traveled in inches
  error = target - distTraveled;

  output = error;
  chassis.move(output);
  pros::delay(10); // Delay for 10 ms
  }
```

As the system (in the case the chassis) move close to the target, power decreases. Notice that if the system passes the target, power will be negative, meaning it will move backwards. If this system overshoots, it will self correct.

Note that this code snippet won't work, there is no exit condition, and the raw output of error doesn't really match what the chassis expects as input.

### Integral

The integral term serves to control the system while it's close to the error. The proportional term is usually really small near the target, so the system doesn't have a lot of power to correct itself while it's near the target.

Integral is usually represented as the total error of the loop. Every PID loop needs a P term, but the I and D terms are optional.

```cpp
integral += error
```

Adding integral to our loop will look like this:

```cpp
float distTraveled = 0;
float target = 12; // We want to move 12 inches forward
float error = target;
float output;
float integral;

while (true) {
  distTraveled = getDistanceTraveled(); // Returns the distance traveled in inches
  error = target - distTraveled;
  integral += error;

  output = error + integral;
  chassis.move(output);
  pros::delay(10); // Delay for 10 ms
  }
```

### Derivative

Derivative serves to dampen the output of the loop. It represents the rate of change of the system. It's calculated like this:

```cpp
derivative = error - prevError;
prevError = error;
```

Note that the derivative will always be negative if the system is traveling toward the target. The size of derivative will be larger the faster the system is traveling. We can integrate this into our code like so:

```cpp
float distTraveled = 0;
float target = 12; // We want to move 12 inches forward
float error = target;
float output;
float totalError;
float derivative;
float prevError;

while (true) {
  distTraveled = getDistanceTraveled(); // Returns the distance traveled in inches
  error = target - distTraveled;
  integral += error;

  derivative = error - prevError;
  prevError = error;

  output = error + integral + derivative;
  chassis.move(output);
  pros::delay(10); // Delay for 10 ms
}
```

## Gains

However, there is still one major problem: The output of this loop does not match what the methods of the motor expect as input. We can solve this problem with gains. These are constants that are multiplied with each term. Each term has it's own constant. These are set by you, and need to be tuned manually.

```cpp
float distTraveled = 0;
float target = 12; // We want to move 12 inches forward
float error = target;
float output;
float totalError;
float derivative;
float prevError;

float kP = 10;
float kI = 0; // This would disable the integral
float kD = 30;

while (true) {
  distTraveled = getDistanceTraveled(); // Returns the distance traveled in inches
  error = target - distTraveled;
  integral += error;

  derivative = error - prevError;
  prevError = error;

  output = error * kP + integral * kI + derivative * kD;
  chassis.move(output);
  pros::delay(10); // Delay for 10 ms
}

```

Keep in mind that the constants will change depending on what the units are of the motor's move method.

### Tuning

Tuning is often the hardest part of PID. Follow these steps, and you'll be able to get something reasonably precise.

1. Set all of your constants to zero. This will effectively disable the loop.
2. Increase kP until the system overshoots and moves back and forth around the target.
3. Increase kD until the system doesn't oscillate around the target anymore.

Whether you want an I term usually depends on whether your system is trying to maintain it's position, in which case you do want I, or if your loop is exiting as soon as you hit the target, in which case you don't.

4. Adjust kI until your system gets as close to the target as possible.

## Exit Conditions

If your system is something like a drivetrain, you probably want to exit the loop once you hit the target. However, this may be trickier than you would think. We could just do this:

```cpp
while (error > 0) {
  // compute the loop
  }

```

While this seems like it should work, it has some problems. This would exit instantly, as soon as error is passed. If the system is overshooting, this will have the same issues as bang bang. A more elegant solution is to require the system to be within a target range for a certain amount of time.

```cpp
// Variable definitions

// Time elapsed since the start of the program in milliseconds
startTime = getCurrentTime(); // This function doesn't exist

while (true) {

  // compute the loop

  // Max time is nice to have if your system gets stuck
  if (getCurrentTime() - startTime > timeout) {
    break;
  }

  if (std::fabs(prevError) < acceptableError) {
    if (!timeAtTarget)
      timeAtTarget = getCurrentTime();
    else if (getCurrentTime() - timeAtTarget > settleTime)
      break;
  }
}


```

## Further Reading

[George Gillard - Intro to PID](https://georgegillard.com/resources/documents)
