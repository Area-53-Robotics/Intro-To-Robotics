# Intakes

Intakes are a subsystem used to pick up game objects and bring them into your robot.

## Define Constraints

The first thing you should do when designing an intake is decide what you are actually trying to accomplish.

-   What is the size of the object you are trying to intake?
-   How fast do you need to be able to pick up those objects?
-   How long do you need the intake to be?

## Choose Features

Once you know what goals you are trying to achieve, you can choose the features of your intake.

### Types of Intake

#### Side Roller Intakes

This style of intake uses rollers on the sides of the object. These are easy to tune for compression, and are a great choice if you need to reach into place with your intake, or need to intake larger game objects.

<figure markdown>
![image](https://github.com/purduesigbots/BLRS-Wiki/raw/master/.gitbook/assets/SROLL.jpg){width=600}
</figure>

#### Top Down Roller Intakes

This style of intake uses rollers on the top, while the bottom of the intake is just a flat surface (usually some kind of polycarbonate sheet).

<!--TODO: image-->

### Types of Rollers

This highly depends on how much you want your intake to compress, and how much traction you need.

#### Flex Wheels

Flex wheels are an all around good choice for intakes. They have good compression and traction, and are usually the go to option for intakes.

#### Sprockets and Flaps

This used to be a more common option for rollers, but usually flex wheels are a better choice. These are good when you need long continuous intakes.

### Sprockets and Rubber Bands

These are comprised of two sprockets with rubber bands pulled across them.

<figure markdown>
![image](http://darkroom-cdn.s3.amazonaws.com/2016/01/BS-md-darkroom-robotics-p4-.jpg){width=400}
</figure>

These rollers are extremely compressible, and are very useful when the game object you're trying to intake has a strange, irregular shape.

<!--looking at you triballs-->

### Intake RPM

Typically you want your intake to be as fast as possible, but there are some limitations:

-   the speed of your drivetrain
-   the torque of your intake motor

Your intake generally doesn't need to spin the rollers faster than the drivetrain can move. Its generally recommended to keep the speed of your intake and the speed of your drivetrain pretty similar. This makes it so that you don't need to slow down as you intake because your intake can keep up with the input.

<!--prettier-ignore-->
!!! note
    The size of your rollers also impacts the speed of your intake. The RPM of your intake and drivetrain will need to differ if the wheel size of your drivetrain and your rollers differ.

As detailed [here](../theory/torque-speed.md), the faster your intake is, the harder of a time it will have picking up objects.

## Further Reading

-   [BLRS Wiki: Intakes](https://wiki.purduesigbots.com/hardware/intakes)
