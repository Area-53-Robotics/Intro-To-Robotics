# Descriptive Variables

Names communicate information. The more information you can communicate with your program, the better. This makes it clearer what the program is doing, not just to other people, but to you as well. Even if you think you will remember what a name means, you usually will not.

In general, strive for descriptive variable and function names. Imagine that someone else is trying to read your code. Would they be more likely to understand a variable named `p`, or one named `motorPower`?

### Booleans

Boolean names should give a hint as to what their state means.

```cpp
// Is true reversed, or is false reversed?
bool reversed;
bool isReversed; // Its clear that when this variable is true, something is reversed. But what?
bool isNotReversed; // Never ever do this
```

### Magic Numbers

Never leave unlabeled numbers in your program.

```cpp
// What is 2.75?
double distTraveled = encoder.get_value() * (2 * M_PI * 2.75) / 360;

// Better
const float WHEEL_RADIUS = 2.75;
double distTraveled = encoder.get_value() * (2 * M_PI * WHEEL_RADIUS) / 360;

// Even better
const float WHEEL_RADIUS = 2.75;
const float CIRCUMFERENCE =  2 * M_PI * WHEEL_RADIUS;
double distTraveled = encoder.get_value() * CIRCUMFERENCE / 360;

// Best
const float WHEEL_RADIUS = 2.75;
const float CIRCUMFERENCE =  2 * M_PI * WHEEL_RADIUS;
const float DIST_TRAVELED_PER_DEGREE =  CIRCUMFERENCE / 360;
double distTraveled = encoder.get_value() * DIST_TRAVELED_PER_DEGREE;
// This is maybe a little too explicit, but at least its very clear what's happening
```
