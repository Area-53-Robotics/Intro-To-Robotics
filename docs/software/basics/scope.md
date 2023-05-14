# Scope

Scope has to do when what is accessible where. This applies to everything that can be defined and declared, but is most relevant for variables.

## Variables

All variables have a scope. This scope is layered. Variables from a higher scope can be accessed in a lower scope, but variables in a lower scope cannot be accessed in a higher scope, unless they are returned by a function. Scope is usually denoted by curly braces.

```cpp
// Highest scope (Global)
int main() {
  // Lower scope (Local)
  {
      // Lowest scope (Local)
    }
  }
```

## Global Scope

If a variable is in the highest scope, it is considered global, and is accessible everywhere in the file (unless it is [externally linked](https://www.learncpp.com/cpp-tutorial/external-linkage-and-variable-forward-declarations/)).

### Abuse of Global Scope

Global scope is very commonly abused. Just because functions can access variables in a higher scope then them, doesn't mean they should.

```cpp
int x = 4;
void blackBox() {
    x = 2; // This is possible, but never do it
}
```

As a general rule, functions should work in a vacuum. They should be able to be copied and pasted into someone else's code by themselves, and compile.

The reason for this is this: as your programs grow, it'll become harder and harder to keep track of what modifies what. Functions should only modify things in their scope. The only acceptable use of reading values outside of scope are constants. Constants are guaranteed to never change, so there's nothing to keep track of.

```cpp
const float PI = 3.14; // Consts should be spelled with all caps
float calculateWheelCircumference(float radius) {
    return 2 * radius * PI;
}
```

## Local Scope

If a variable is defined inside of a function, it is considered to have local scope.

### Lifetimes

When a variable's local scope ends, the variables becomes "killed". The variable can no longer be referenced, and it's value is deallocated in memory.

### Shadowing

A variable's value can be overridden in a lower scope. If a variable is redefined in a lower scope, the compiler will prioritize that definition over the one that already exists. Once the new definition leaves scope, the old one becomes used again.

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

## Further Resources

-   [Introduction to local scope](https://www.learncpp.com/cpp-tutorial/introduction-to-local-scope/)
-   [Introduction to global variables](https://www.learncpp.com/cpp-tutorial/introduction-to-global-variables/)
-   [Why (non-const) global variables are evil](https://www.learncpp.com/cpp-tutorial/why-non-const-global-variables-are-evil/)
