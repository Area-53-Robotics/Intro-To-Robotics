# Advanced Concepts

The concepts in this section aren't required to make a functioning robot, but they can make your robot extremely efficient and precise, a must if you want to make large scale autonomous routines.

## Control Theory

From [Wikipedia](https://en.wikipedia.org/wiki/Control_theory):

> Control theory is a field of control engineering and applied mathematics that deals with the control of dynamical systems in engineered processes and machines. The objective is to develop a model or algorithm governing the application of system inputs to drive the system to a desired state, while minimizing any delay, overshoot, or steady-state error and ensuring a level of control stability; often with the aim to achieve a degree of optimality.

If you are moving your robot, control theory is something to take into consideration. This can be applied anywhere where you have control over a system, and a way to measure it's position. This section covers multiple controllers that can be used to move a system in just the right way, from primitive bang bang controllers, to PID, TBH, and FeedForward controllers.

## Position Tracking

You cannot apply control theory if you don't have reliable data on the location of your robot. There are numerous methods to tracking your robot, from 1 dimensional distance, to full field position tracking with odometry.
