# Control Flow

Normally our code runs from top to bottom. However, sometimes we don't want it to. This is where control flow comes into play. These are pieces of code that let us control the flow of the program, hence their name.

There are certain cases where we may want a piece of code to run and certain cases where we won’t want it to run. We can accommodate for this through the use of control flow, which allows us to define what a program should do under certain circumstances.

I’d recommend checking out [this](http://www.cplusplus.com/doc/oldtutorial/control/) link if you want to look at more information about control structures.

## If, Else if, Else

If, else if, and else statements are great for allowing us to control the flow of a program. They’re the bread and butter of your robot’s code.

<!--real languages let you return values out of their control flow. C++ however, is stupid-->

### If statement:

If statements follow this structure
if (condition) statement
if - The keyword that indicates the creation of an if statement
condition - A boolean condition in parentheses (evaluates to true or false)
statement - The code you want to run
Comparison operators are particularly useful for conditional statements. For example, you could have an if statement like this:

```cpp
bool inRestPos = false;
if (degrees >= 45) {
    inRestpos = true;
  }
```

The boolean variable inRestPos would only be set to true if the variable degrees was greater than or equal to 45.

However, sometimes we want more than one code statement to run under an if-statement. We do this through the use of curly brackets ( {} ). We can put several code statements under curly brackets under an if-statement to tell the code that we want all statements in there to be run if the condition is true.

```cpp
if (L1) {
    intake.move(127); // We'll go over what this means later
  }
```

### Else if statement:

Else if statements follow a similar structure to if statements:

```
else if (condition) statement
```

Else if statements follow an if statement and run only if the statement before it evaluates as false.

```cpp
if (count == 0) {
  atRest = true;
} else if (count == 1) {
  atRest = false;
}
```

In the example above, the else if statement only runs if count is not equal to 0.

You can also chain else if statements together.

```cpp
if (count == 0) {
  armAngle = 0;
} else if (count == 1) {
  armAngle = 30;
} else if (count == 2) {
  armAngle = 60;
} else if (count == 3) {
  armAngle = 90;
}
```

### Else statement:

Else statements follow this structure:

```
else statement
```

Note that they do not need a condition. That is because else statements run automatically if the statement above evaluates as false.

```cpp
if (count == 0) {
  atRest = true;
} else {
  atRest = false;
}
```

The code under the else statement will run automatically if the if statement above it is false.

Note that else statements can follow a chain of if and else if statements as a final condition.

> Note: you don’t have to be concerned with what this code means, this is just an example used to show a use of the else statement.

```cpp
if (L1) {
  intake.move(127);
} else if (L2) {
  intake.move(-127);
} else {
  intake.move(0);
}
```

## Switch statement

Switch statements are a good way to control the flow of your code when you have many different ‘cases’ you may be trying to test. They follow this structure:

```cpp
switch (value) {
case x:
  // code here
  break;
case y:
  // code here
  break;
case z:
  // code here
  break;

//...as many cases as you need

// optional catch-all statement
default:
  // code here
  break;
}
```

A switch statement will take a value you give it and test it against several different cases. If the value is equal to a certain case, then that case’s code will be run. Let’s look at an example.

```cpp
switch (autonChoice) {
case 0:
  onePoint();
  break;
case 1:
  redUnsafe();
  break;
case 2:
  redSafe();
  break;
case 3:
  blueUnsafe();
  break;
case 4:
  blueSafe();
  break;
default:
  onePoint();
  printf("Error in auton choice\n");
  break;
}
```

```cpp
if (autonChoice == 0) {
  onePoint();
} else if (autonChoice == 1) {
  redUnsafe();
} else if (autonChoice == 2) {
  redSafe();
} else if (autonChoice == 3) {
  blueUnsafe();
} else if (autonChoice == 3) {
  blueSafe();
} else {
  onePoint();
  printf("Error in auton choice\n");
}

```

Here, you are checking the autonChoice variable against several different cases in the switch statement. (in this case autonChoice is an integer value.)

-   If autonChoice is equal to 0, the code will run the onePoint() function.
-   f autonChoice is equal to 1, redUnsafe() will be run.
-   If autonChoice is equal to 2, redSafe() will be run.
-   If autonChoice is equal to 3, blueUnsafe() will be run.
-   If autonChoice is equal to 4, blueSafe() will be run.
-   If autonChoice isn’t equal to any of the cases, run the code under default.

Note that the break statements just tell the code to exit from the switch statement after a case is run. Make sure you include these, your code may not work properly without them!
The code above can also be represented through if, else if, and else statements as shown.

## While loop

While loops let you repeat a section of code for as long as its condition is fulfilled. They follow this structure:

```

while (expression) statement
```

-   while - The keyword that indicates the creation of a while loop.
-   expression - a boolean (true or false) condition in parentheses
-   statement - The code you want to run

Here’s an example of a while loop that runs 5 times. Don't worry about what printf does, just know that it will print to the console when called. We'll go over printing to standard out later.

```cpp
int i = 0;
while (i < 5) {
  printf("%i\n", i);
  i++;
}
```

Generally speaking, we don’t use while or for loops as much as we do if statements in robotics, but they’re still handy to be familiar with. Be wary if you use them in the driver control period, because if you add while loops to driver control, they may prevent other important pieces of code from running when they’re supposed to.

## For loop

For loops are similar to while loops, but they run for a specified number of times. In that sense, for loops are better for when you know how many times a section of code should run, while loops are better for when you don’t know how many times a section of code should run.

Here’s the structure of a for loop:

```
for (initialization; condition; increase) statement
```

-   initialization - Initializes loop variable and defines its initial value.
-   condition - What condition the variable must meet in order for the loop to keep running
-   increase - Defines how the variable is changed after each run through the loop.
-   statement - The code you want to run (usually in curly brackets)

```cpp
for (int i = 0; i < 5; i++) {
  // do something
}
```

Above is an example of a for loop. Notice how there is an initialization statement, condition statement, and increase statement separated by semicolons in the header. Assuming that i is not changed inside the curly brackets, this loop will run 5 times as described below:

-   i is set to be 0. 0 is less than 5, so the code in the loop runs. i increases by 1.
-   i is 1, 1 is less than 5, so the code in the loop runs. i increases by 1.
-   i is 2, 2 is less than 5, so the code in the loop runs. i increases by 1.
-   i is 3, 3 is less than 5, so the code in the loop runs. i increases by 1.
-   i is 4, 4 is less than 5, so the code in the loop runs. i increases by 1.
-   i is 5, 5 is not less than 5, so the code in the loop does not run. The for loop is finished.

One important thing to note is that the variable you initialize inside the for loop header is destroyed once the loop is over (that is, it cannot be accessed outside the for loop). That is why this code here is invalid.

```cpp
for (int i = 0; i < 5; i++) {
  // do something
}
i = 2; // This doesn't work
```

Also, note that the variable declared in the for loop header will override any other previous variable with the same name.

Here’s one more example of a for loop. It runs 5 times. Can you find out why?

```cpp
for (int j = 0; j <= 9; j+=2 {
  // do something
}
```
