# Scope

Variables are only valid if they are in scope. Often, scope is denoted by curly brackets. You can think of scope as layered. Things lower scope have access to things higher in scope than them, but the higher scope cannot access the lower scope.

## Functions

The most common example of scope is functions. Variables defined inside functions are not accessible by the outside scope.

```cpp
void black_box() {
    int x = 1;
};

int main() {
    int x = 42;
    black_box();
    printf("%i\n",x); // This will output 42, not 1
}
```

<!-- prettier-ignore -->
!!! note
     You can still get values out of a function by returning.

## Shadowing

You can create your own lower scope just by inserting curly braces into your code. This is called shadowing.

```cpp
int main() {
    int x = 1;
    {

        printf("%i\n",x); // Will output 1.
        int x = 42;
        printf("%i\n",x); // Will output 42.
    }
    printf("%i\n",x); // Will output 1.
}
```

## Abuse of Global Scope

Global scope is very commonly abused. Just because functions can access variables in a higher scope then them, doesn't mean they should.

```cpp
int x = 4;
void black_box() {
    x = 2; // This is possible, but never do it
}
```

The reason for this is this: as your programs grow, it'll become harder and harder to keep track of what modifies what. Functions should only modify things in their scope. The only acceptable use of reading values outside of scope are constants. Constants are guaranteed to never change, so there's nothing to keep track of.

```cpp
const float PI = 3.14; // Consts should be spelled with all caps
float calculate_wheel_circumference(float radius) {
    return 2 * radius * PI;
}
```
