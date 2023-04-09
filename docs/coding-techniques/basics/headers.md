# Header Files

Header files are C++ of program organization. These let you access functions, variables, classes, and objects across multiple files. A header file is any file with the .h or .hpp extension.

## Variables in Headers

As a general rule, the only variables that should be defined in headers are consts. This is because variables defined in headers are globally acessible, and therefore should not change.

## Forward Declarations

The primary purpose of a header file is to forward declare things. One of the more common examples is a function:

```cpp
int add(int x, inty);
```

Not that this function has no body. This is just a declaration, it doesn't do anything by itself. Definitions occur in body files.

## Including

To get access to this forward declaration you need to use a preprocessor directive (also called macros).

If we named our header add.hpp, we can include it like this:

```cpp
#include "add.hpp" //No semicolon
```

This tells the compiler to copy and paste the contents of add.hpp into the current file at compile time. You can then define the function like this:

```cpp
#include "add.hpp"

int add(int x, int y) {
    return x + y;
  }
```

You can only define a function that has been forward declared once. It must match the name, return type, and inputs as the declaration, otherwise the compiler with think that it's a different function. You can then access this definition anywhere in the program by doing the same include.

## Header Guards

The include macro copies and pastes the contents of the header into body files at compile time which means that if we're not careful, we can end up with multiple declarations of the same function, which will cause a compiler error. To solve this problem we have header guards.

```cpp
#ifndef ADD_HPP // This name  must be unique, otherwise you will cause other headers to be ignored
#define ADD_HPP

int add(int x, int y);

#endif
```

## Pragma Once

Alternatively pragma once will do the same thing:

```cpp
#pragma once
```

This ensures that add will only be copied once, even if it is included multiple times.

## More Info

[This](https://www.learncpp.com/cpp-tutorial/header-files/) tutorial provides much more in depth information on header files.
