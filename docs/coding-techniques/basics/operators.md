# Operators

We’ll go over operators in this section. I highly recommend checking out this [link](http://www.cplusplus.com/doc/tutorial/operators/) from [cplusplus.com](). It’s very helpful for learning operators, and we’ll be using some tables and examples from there.

## Arithmetic Operators

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

<!--prettier-ignore-->
!!! note
    There is a HUGE difference between the = and == operators. The first one is used for assigning values to variables while the latter is used for comparing two operands with each other. Remember: One equal sign assigns, while two compare.

## Logical Operators

There are 3 logical operators:

### ! - The Not Operator

Takes one boolean operand to its right and reverses its value (i.e. true → false, false → true)

#### Examples

```cpp
!false    //Evaluates to true
!(5 == 5) //Evaluates to false
!(5 >= 2) //Evaluates to true
```

### || - The Or Operator

Takes 2 operands; one on the left and one on the right. Will return true if at least one operand evaluates to true and false otherwise.

| a     | b     | a \|\| b |
| ----- | ----- | -------- |
| true  | true  | true     |
| true  | false | true     |
| false | true  | true     |
| false | false | false    |

#### Examples

```cpp
(5 == 5) || (2 < 0) //Evaluates to true
(3 > 3) || (2 == -1) //Evaluates to false
(true || (10 < 50) //Evaluates to true
```

### && - The And Operator

Takes 2 operands; one on the left and one on the right. Will return true if and only if both operands evaluate to true and false otherwise.

#### Examples

```cpp
(5 == 5) && (2 < 0)   //Evaluates to false
(3 > 3) | | (2 == -1) //Evaluates to false
true | | (10 < 50)    //Evaluates to true
```

## Compound Operators

| Operator | is equivalent to ... |
| -------- | -------------------- |
| x += 5   | x = x + 5            |
| x -= 5   | x = x - 5            |
| x \*= 5  | x = x \* 5           |
| x /= 5   | x = x / 5            |

Compound operators combine the functions of the assignment operator and arithmetic operators. They offer a shortcut way to modify and set the value of a variable.

## Incremental and Decremental Operators

| Operator | is equivalent to ... |
| -------- | -------------------- |
| x++      | x = x + 1            |
| x--      | x = x - 1            |

These are incremental and decremental operators. They’re shortcuts similar to compound operators, but change a variable’s value by increments of one. They’re most commonly used in for loops, which we’re going to cover soon!

<!--prettier-ignore-->
!!! note
    You must have a value assigned to a variable before you can use a compound, incremental, or decrement operator on it. This makes sense if you think about it; you can’t perform arithmetic on undefined values
