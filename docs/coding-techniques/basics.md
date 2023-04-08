# Basics

In this section we’ll talk about the bread-and-butter of coding. It’s a bit of a long section, but it’s important to know these things to become a good programmer.

## Introduction to Variables

Storing and editing information are crucial in coding to help you to streamline your code and save important values that can be used when necessary. We do this through the use of variables.

To create a variable, you need three main components:

-   A data type
-   A variable name
-   A value to store

Here’s an example of creating a variable using these 3 components.

-   Data type: int
-   Variable name: meaningOfLife
-   Value: 42

```cpp
int meaningOfLife = 42;
```

### Naming a Variable

You can use almost anything for a variable name. But, there are a few rules and conventions.

-   The name can only begin with a letter or underscore.
    -   Starting with anything else WILL give you an error!
    -   Numbers will work in a name after the first character though (so a variable called TheLegend27 would work fine)
-   Variable names are case sensitive
    -   For example, variablename and VariableName are two different variables!
        No special characters or spaces are allowed!
-   (note that underscores are an exception and can be used anywhere in a variable name)
-   Keywords (predefined and reserved words in C++) cannot be used as variable names
    -   For example, words such as try, switch, while, int, and if will not work. You’ll get familiar with many of the different variables in C++ soon, and keywords in VEXCode will show up with a different color for easy identification.

## Semicolons

Real quickly, though, let’s talk about semicolons. You need a semicolon at the end of every statement in your code excluding function headers and control structures (which we’ll go over soon). You can think of them like punctuation but for coding. Just like you don’t want to end a sentence without a period, you don’t want to end a coding statement without a semicolon. As you can see below, the lack of a semicolon in the first statement gives you an error, so please, please, please don’t forget to use semicolons.

```cpp
//Valid
int number = 42;

//Invalid
int number = 42
```

## Datatypes

There are 3 data types that you should familiarize yourself with. Data types define the type of value that a variable can hold. You only specify the data type of a variable when you create it, and the data type of a variable cannot be changed after it has been set.

### Integer (int)

The integer data type is used when you need a variable that holds an integer number (one without any decimal points). You declare an integer variable by using the keyword int in front of the variable name.
Here are some examples of integers:

-   5
-   0
-   -532

Here are some examples of numbers that aren’t integers:

-   5.0
-   0.0
-   -532.234

Only use integer variables if you know that the values assigned to it will never have decimals, or else your code may not work the way you want it to. Integer variables are useful for counting and simple measurements where precision is not important.

Example of creating an integer variable:

```cpp
int number = 5;
```

### Float (float)/Double (double)

The float and decimal data types are used when you need a variable that holds a decimal number (one with a decimal point). You declare a float variable by using the keyword float in front of the variable name, and a double variable by using the keyword double in front of the variable name.
Here are some examples of decimals:

-   4.0
-   0.2
-   -23.4

Float and double variables are useful for when you need more precise measurements for your code, such as exact mathematical calculations and degree measurements. In this document we will use float for convenience’s sake; you do NOT need to know the difference between a float and a double.
Example of creating a float variable:

```cpp
float number = 5.0;
```

Example of creating a double variable:

```cpp
double number = 5.0;
```

> Editor’s note: If you are curious, though, double variables are more precise than float variables; able to store 64 bits of data instead of 32. We usually don’t need the extra precision in robotics, so we tend to use float more than double.

### Boolean (bool)

The boolean data type is used to store a boolean (true or false) value. You declare a boolean variable by using the keyword bool in front of the variable name.
The two boolean values are true and false. A boolean variable can only store either one of these two values.
Boolean variables are going to be particularly useful for control structures, which we'll go over in a different section.

Example of creating a boolean variable:

```cpp
bool atRest = false;
```

## Operators

We’ll go over operators in this section. I highly recommend checking out this [link](http://www.cplusplus.com/doc/tutorial/operators/) from [cplusplus.com](). It’s very helpful for learning operators, and we’ll be using some tables and examples from there.

### Arithmetic Operators

| Operator | Description    |
| -------- | -------------- |
| +        | addition       |
| -        | subtraction    |
| \*       | multiplication |
| /        | division       |
| %        | modulo         |

The addition, subtraction, multiplication, and division operators all do (for the most part) what you’d think they’d do. The modulo operator is a bit different though. It’s also known as a remainder operator. It returns the remainder of division between two operands.

```
Operand: An expression that an operator performs an action on.
```

For example:

-   11 % 5 = 1
    -   11 / 5 = 2, with a remainder of 1
-   20 % 3 = 2
    -   20 / 3 = 6, with a remainder of 2
-   3 % 5 = 3
    -   3 / 5 = 0, with a remainder of 3

There’s one more thing you need to know about how arithmetic operators work. They will only output a result with decimal points if a double or float is involved. For example:

-   4 + 4 returns 8
-   4 + 4.0 returns 8.0

-   21 / 4 returns 5 instead of 5.25
    -   Only integers are being provided.
-   21 / 4.0 returns 5.25
-   A double is used in the expression, so the result will be a double.

| Operator | Description              |
| -------- | ------------------------ |
| ==       | Equal to                 |
| !=       | Not equal to             |
| <        | Less than                |
| >        | Greater than             |
| <=       | Less than or equal to    |
| >=       | Greater than or equal to |

Comparison operators compare two operands and then return a boolean value (true/false). They’re useful for conditional statements and loops, which we’ll go into soon.
They’re fairly self explanatory, but here are some examples:

```cpp
(7 == 5) // evaluates to false
(5 > 4)  // evaluates to true
(3 != 2) // evaluates to true
(6 >= 6) // evaluates to true
(5 < 5)  // evaluates to false
```

You can also compare variables:

```cpp
int a = 2;
(a > 1)  //evaluates to true
```

> Note: There is a HUGE difference between the = and == operators. The first one is used for assigning values to variables while the latter is used for comparing two operands with each other. Remember: One equal sign assigns, while two compare.

### Logical Operators

There are 3 logical operators:

#### ! - The Not Operator

Takes one boolean operand to its right and reverses its value (i.e. true → false, false → true)

##### Examples

```cpp
!false    //Evaluates to true
!(5 == 5) //Evaluates to false
!(5 >= 2) //Evaluates to true
```

#### || - The Or Operator

Takes 2 operands; one on the left and one on the right. Will return true if at least one operand evaluates to true and false otherwise.

| a     | b     | a \|\| b |
| ----- | ----- | -------- |
| true  | true  | true     |
| true  | false | true     |
| false | true  | true     |
| false | false | false    |

##### Examples

```cpp
(5 == 5) || (2 < 0) //Evaluates to true
(3 > 3) || (2 == -1) //Evaluates to false
(true || (10 < 50) //Evaluates to true
```

#### && - The And Operator

Takes 2 operands; one on the left and one on the right. Will return true if and only if both operands evaluate to true and false otherwise.

##### Examples

```cpp
(5 == 5) && (2 < 0)   //Evaluates to false
(3 > 3) | | (2 == -1) //Evaluates to false
true | | (10 < 50)    //Evaluates to true
```

### Compound Operators

| Operator | is equivalent to ... |
| -------- | -------------------- |
| x += 5   | x = x + 5            |
| x -= 5   | x = x - 5            |
| x \*= 5  | x = x \* 5           |
| x /= 5   | x = x / 5            |

Compound operators combine the functions of the assignment operator and arithmetic operators. They offer a shortcut way to modify and set the value of a variable.

### Incremental and Decremental Operators

| Operator | is equivalent to ... |
| -------- | -------------------- |
| x++      | x = x + 1            |
| x--      | x = x - 1            |

These are incremental and decremental operators. They’re shortcuts similar to compound operators, but change a variable’s value by increments of one. They’re most commonly used in for loops, which we’re going to cover soon!

> NOTE: You must have a value assigned to a variable before you can use a compound, incremental, or decrement operator on it. This makes sense if you think about it; you can’t perform arithmetic on undefined values

## Further Reading

This is the baseline that you will need to program for robotics, but we highly recommend that you read through some other tutorials. We recommend [this](https://www.learncpp.com/) one.
