# Naming Conventions

The capitalization of names communicates information as well. Whether something starts with a capital letter or a lowercase letter, or whether it uses snake_case, or camelCase, informs the reader of it's purpose.

## Variable Names

Variables use lower case snake_case.

```cpp
int MotorPower // Incorrect
int motorPower // Incorrect
int motor_power // Correct
```

### Constants

Constants use SCREAMING_SNAKE_CASE.
The reason constants are different from normal variables is because these a guaranteed to never change.

```cpp
const float WHEEL_RADIUS = 2.75;
```

## Enums, Structs and Classes

Enum, Struct and Class names all use UpperCamelCase.

```cpp
enum Colors{};
struct Coordinates{};
class MotorEncoder{};
```

### Enum Members

Enum members also use UpperCamelCase;

```cpp
enum Colors {
    Red,
    Green,
    Blue
}
```

### Struct and Class Members

These use snake_case.

```cpp
class MotorEncoder {
    public:
    float current_position;
};
```
