# Namespaces

These are a powerful tool for project organization. These allow you to put your code in an organizational box.

```cpp
namespace math {
    int add(int x, int y) {
        return x + y;
      }
  }

  int sum = math::add(1,2);
```

This can prevent naming collisions, where two functions or variables have the same name. We can define an add function in the math name space, and in the normal namespace, and they will both be valid. Most libraries use at least one base namespace for this reason.

Namespaces can be nested as much as you want. You have likely already seen the namespace for the standard library, std.

```cpp
std::string hello = "hello world";
```

To save us some typing we can do:

```cpp
using namespace std;
string hello = "hello world";
```

This brings everything from the std namespace into current scope, meaning we don't have to type out the namespace every time we want to use a function or variable from it. Note that this can now cause naming collisions because it includes everything from the entire namespace, meaning that if you have functions with the same name as things in the namespace you are including, your program will not compile.

You can only include one namespace at a time.
