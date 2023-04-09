# Functions

Functions are a powerful tool to help your reduce code duplication. They can take input and send output, and run whatever code is inside them whenever they are called. Functions in C++ always have a return type. If a function doesn't return anything it has the type void. If a function returns a value, that value can be assigned to a variable.

```cpp
// This function returns an int
int add( int x, int y) { // Requires two variables as input, of type integer
    return x + y; // Returs the two inputs added together.
}

int main() { // The main function is where the program's execution starts.
    int sum = add(3,4); // Sum is equal to 7
    return 0; // The main function must return 0
}
```

Functions can also help your reduce code duplication.

```cpp
printf("-------\n");
printf("hello");
printf("-------\n");
printf("\n");

printf("-------\n");
printf("world!");
printf("-------\n");
printf("\n");
// This could be abreviated to
void fancy_print(std::string input) {
    printf("-------\n");
    printf("%s",input);
    printf("-------\n");
    printf("\n");
}
fancy_print("hello");
fancy_print("world!");
```
