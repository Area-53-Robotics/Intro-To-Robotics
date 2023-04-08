# Moving

The next topic is moving relations. This isn’t when you and your girlfriend move to different schools. You’re in robotics, you wouldn’t have a girlfriend. If something uses a motor, it’s probably in this section.

## Bearings, Spacers, Collars

Knowing when to use bearing blocks, spacers, and collars is important. Any axle needs all 3 for clean building. There are tons of combinations, and only a few of them don’t work.
Bearings, Spacers, & Collars Video (Stop at 7:08, that’s when Rubber Bands starts)

## Screws vs Axles

In robotics, we can’t use screws that are larger than 2.5 inches. Since your nylock is under 0.25 in, that gives you about 2.25 in of screw to work with. Also remember that axles go up to 12 in long. When deciding what to use for a joint you need to consider the size of the joint. If it’s less than 2.5 in, use a screw joint; if it’s more, use an axle. Pretty simple. The basic rule is to use screws until you can’t.
But why? In Stationary, I talked about slop. More moving parts are going to create a larger chance of slop, while less moving parts are going to reduce it. With screws, there are 2 “moving” parts, the screw and the nylock. With axles, there are 3: the axle and 2 collars. Collars are also dangerous because we have really bad collars and they can come undone easily.

## Rubber Bands

An important non-VEX part that you can use are rubber bands. They have a lot of different uses but their main ones include:

-   Tension for shooting mechanisms
-   Tension for lifting mechanisms
-   Releasing release mechanisms
-   Rollers

Shooting mechanisms like the puncher and catapult require rubber bands to pull them forwards. The slip gear pulls it back, tightening the rubber band and when no teeth are exposed, the rubber bands release, bringing the mechanism forwards.
Lifting mechanisms are often heavy so we use rubber bands to hold some of the weight. Use them on any type of bar. Try to create a triangle that expands as the mechanism goes down, but shrinks as it goes up.
Release mechanisms are pretty simple because you have something that holds the mechanism in while the rubber bands are bending. When that object leaves, the rubber bands act and pull the mechanism into place.
Rollers are similar to intakes in function, but not in design. They’re 2 sprockets spaced apart on the same axle. In the grooves of the sprocket you string rubber bands to the other side. You can still use chain on these.
Rubber Bands Video (Stop at 10:18, that’s when Gears, Sprockets, & Ratios starts)

Rubber bands are very useful and there are many types of rubber bands. We commonly use size 64. We also buy from the company Advantage as they have a lot of different types of rubber bands. Some are more stretchy and work better at longer distances, some are sturdier and work better at shorter distances. Buy the ones you want to try and test them. It’s probably a good idea to have multiple styles on hand. Generic Staples rubber bands also do the job.
Since you’re using rubber bands frequently and they usually pull large forces, it’s good to replace them often. You might need 2-4 sets of rubber bands for a tournament. Keep track of how many rubber bands you need and where you need them so you can be prepared. Also try to use old rubber bands that have lost their elasticity for simple mechanisms like anti-tips. Rubber bands may also tear or cut, so make sure you get rid of them. I like to tear them apart so we know we can’t use it.

## Gears, Sprockets, and Ratios

I’m not going to talk about when to use gears and sprockets because they’re very similar and pretty obvious when you need to move power around. Although a good rule of thumb is to use gears for short ranges and sprockets for large ranges.
This section is about gear ratios and how to use them. I’m only going to be using gears as my example, but know that sprockets work the same.
Also, because I might have not said this, we have 3 speeds of motors: 100rpm, 200rpm, and 600rpm. The higher the rpm, the lower the torque. Torque is the inverse of speed. If you need to go fast, you want a high speed, while your side effect is a lower moving capability. If you need to move something heavy, you want a high torque, while your side effect is a lower speed.

<iframe width="560" height="315" src="https://www.youtube.com/embed/y8EGzFVsPJA" title="Robotics Introduction - Building Techniques - Motion Pt. 1" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

Gear A to Gear B results in B/A times torque and A/B times speed
The ratio is then called A/B simplified.
If Gear A is smaller, you’ll get higher torque, lower speed.
If Gear A is larger, you’ll get lower torque, higher speed.

If there are 3 or more gears, Gear A is powered by the motor and Gear B is the farthest most gear.

I’ll go through a written example too.
If we have a motor driving a 12 tooth (A), which then turns a 36 tooth (B), we get 3x higher torque and 3x slower speed. So let’s say our motor is driving at 600 rpms. Our 36 tooth is driving at 200 rpms and our 12 tooth is driving at 600 rpms.
Lower rpms deliver higher torque, while higher rpms deliver higher speeds.

That’s simple gears. Let’s say you have a motor powering Gear A. Gear A then powers Gear B. Gear B is on the same axle as Gear C. Gear C then powers Gear D.
We’ll use the same example. The motor is 600 rpms, Gear A and C are 12 tooths, Gear B and D are 36 tooths. Gear A experiences 600 rpms. Gear B experiences 200rpms. Gear C also experiences 200 rpms. Gear D then experiences 200/3 rpms. We get 9x higher torque and 9x slower speed from Gear D.
By placing gears on the same axle to transfer power, we multiply each ending gear together. One way to think about it is the motor powers Gear A which transfers it to B. Then Gear B acts as the motor that powers Gear C which transfers it to D.

## Custom Parts

Here we’re talking about slip gears and ratchets.
Slip gears allow for punchers and catapults to work, they don’t have too many other uses. If your mechanism can translate into a puncher or a catapult then use a slip gear. If it doesn’t, then see if you can use something else.
Ratchets allow you to move a mechanism one way and one way only. If your mechanism needs to move one way, consider using these.

<iframe width="560" height="315" src="https://www.youtube.com/embed/GQ1Rsz-0t64" title="Robotics Introduction - Building Techniques - Motion Pt.2" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
