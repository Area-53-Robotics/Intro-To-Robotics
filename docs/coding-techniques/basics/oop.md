# Object Oriented Programming

Simply put, object oriented programming is a way of organizing your code. It allows you to associate functions and variables with groups called objects.

Objects are defined from classes. A class is like a blueprint. Imagine we have a class called Car. Car has properties, which are: color, speed, wheel_size. It might also have methods, like drive() and brake(). If we define a new car based on the Car class, it will have those properties and methods.

<!--prettier-ignore-->
!!! note
    Astute readers will notice that the capitalizations in the paragraph above are weird. This is because we always capitalize class names, but we never capitalize objects.

## Classes

You can define a class as follows:

```cpp
class Car {
    public:
    int speed;
    Color color; // enum
    int wheelSize;
    void drive(); // you can define functions as a part of classes
};

// You can define a new object like this
Car volvo;
// Member variables are uninitialized by default
volvo.speed = 3;
volvo.color = Red;
volvo.wheelSize = 2
volvo.drive();
```

### Class Members

Almost anything can be part of a class. Enums, functions, objects, and of course variables, can all be a part of a class.

### Public vs Private

In our class definition, all of our members are public. This means that they can be accessed outside of the class. This is why we can assign values to the variables after the object is defined. Good practice is to only give public access to things that really need it. A good rule to follow is to make everything private by default, and then make things public as needed.

There are other member categories, like protected and friend, but those will not be covered here.

```cpp
class Car {
    private:
    int speed,
};

Car volvo;
volvo.speed = 3; // This will not work
```

## Constructors

The way we had to assign values to members in the last chapter was pretty clunky. It required multiple lines, and all of the variables had to be public. However, there is a solution to this problem called constructors. Constructors are a special type of functions that return an instance of a class. They must have the same name as class.

```cpp
class Car {
    public:
    Car(int input) {
        speed = input;
    }
    private:
    int speed;
};

// Now we can use our constructor like this:
Car volvo(3);
```

### Initializer Lists

C++ provides even more shorthand for initializing variables. Initializer lists are a quick way to assign values to members of a class.

```cpp
class Car {
    public:
    Car();
    private:
    int speed;
    int wheelSize;
};

Car::Car(int speed, int wheelSize):
    speed(speed),
    wheelSize(wheelSize),
{
    // More complicated stuff should go here
}
```
