# Header Files

Header files are a key part of C++ program organization. Any file with a .h or .hpp file extension is a header file. You can think of them like a menu for what exists in your program. It tells you what's in the dish, but doesn't actually contain the dish itself. In order to understand header files fully, we'll need to cover some other C++ concepts.

## Declarations and Definitions

C++ differentiates between declarations and definitions. Declarations simply contain the signature of a function or variable, and not the functionality or value, while definitions do.

Here are some examples of declarations:

```cpp
int number;

int add(int x, int y);
```

Here are some examples of definitions:

```cpp
number = 42;

int add(int x, int y) {
    return x + y;
};
```

## Compilation Phases

The C++ compilation process is split up into multiple phases:

### Preprocessor Phase

During this phase, preprocessor directives (also called macros) are evaluated. This is any keyword that starts with a #. For example:

```cpp
#include <iostream>
#define MACRO_CONSTANT 1
```

Macros are not valid C++, but they get replaced with C++ during this phase. The compiler will never see them. In this example, the first line will be replaced with the contents of the iostream header, while the second line will replace all instances of MACRO_CONSTANT with 1.

<!--if I catch any of you using define macros for anything other than header guards there will be bloodshed-->

### Compilation Phase

During this phase, body files (files with a .cpp file extension) get turned into object files by the compiler. This converts them from code that the programmer can read into code that a CPU can read. The compiler is completely fine with references definitions that don't exist, so long as there is a valid definition. The compiler will also check for valid C++ grammar.

### Linking Phase

During this phase, all of the object files (files ending in .o) are combined into a single binary. Any blank references to declarations are now filled in. The linker also checks for violations of ODR (the One Definition Rule). There can only be one definition for each variable and function.

## Usage

Header files contain declarations (not definitions) and can be used to easily import those declarations to any body file that needs them. Here is an example:

Imagine there is a file called math.hpp

```cpp
// math.hpp

int add(int x, int y);
int doMath();
```

There are also two body files, math.cpp and main.cpp.

```cpp
// math.cpp
#include "math.hpp"

int add(int x, int y) {
    return x + y;
}
 int doMath() {
    int sum;
    sum += add(1, 2);
    sum += add(3, 4);
    return sum;
  }
```

```cpp
// main.cpp

#include <iostream>

#include "math.hpp"

int main() {
    std::cout << doMath();
    return 0;
}
```

In this example, math.hpp provided the declarations, while math.cpp provided the definitions. Note that math.cpp needed to include the math.hpp header to gain access to the declarations. Then, main.cpp can easily get access to doMath() by including the math.hpp header as well.

<!--prettier-ignore-->
!!! note
    The include for the iostream header and the math.hpp header look very different. This is because iostream is part of the standard library. Headers that are part of the standard library do not have a .h or .hpp extension, and are included using <header-name> instead of "header-name".

## Header Guards

However, there is a problem. If a header is included more than once, this can result with multiple copies of the same header. During the linking phase this can cause and ODR violation. The solution is header guards.

```cpp
// math.hpp
#ifndef MATH_HPP // This name  must be unique, otherwise you will cause other headers to be ignored
#define MATH_HPP

int add(int x, int y);
int doMath();

#endif
```

\#ifndef and #endif allow for conditional inclusion. If MATH_HPP is already defined because the header has already been included once the preprocessor will behave as if this file is empty.

Alternatively you can use #pragma once, which will have the same effect.

```cpp
// math.hpp
#pragma once

int add(int x, int y);
int doMath();
```

## Best Practice

There are some DOs and DON'Ts when it comes to header files:

-   always use header guards
-   never put definitions in headers (with the exception of constants)
-   use one body file per header file (i.e. math.hpp and math.cpp)
-   never #include .cpp files

## Further Reading

If you want more information [this](https://www.learncpp.com/cpp-tutorial/header-files/) tutorial provides much more in depth information on header files.
