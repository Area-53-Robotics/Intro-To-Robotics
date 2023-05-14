# Functions

Functions are a powerful tool to help your reduce code duplication. They can take input and send output, and run whatever code is inside them whenever they are called. 

In order to use a function, you must define it first. Function definetions follow this structure:
```
datatype name(inputs) {
  statements
}
```
By itself, functions definitions don't do anything. They need to be called. Function calls follow this structure:
```
name(inputs);
```
This will execute all of the code between the curly braces in the function definition. Primarily, functions input and output data. Function inputs are variables that get copied into the scope of the function. We'll go over what scope means in the next chapter. Functions can also return values. The datatype of that value is indicated by the first part of a function definition. If a function doesn't return a value, it's datatype is void. Here is an example of a function that takes input and sends output:

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

In this case, the function add takes two integers as input, and returns another integer. When 3 and 4 are passed into add in the main function their values get assigned to x and y inside of the function call. These variables then get added together, and returned. This makes this function an expression. An expression is anything that returns a value. This means the function can be used anywhere where we would use a normal value. In the example, the returned value is assigned to a variable.

Functions can also help your reduce code duplication:

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
void fancyPrint(std::string input) { // fancyPrint never returns a value, so it's return type is void.
    printf("-------\n");
    printf("%s",input);
    printf("-------\n");
    printf("\n");
}
fancy_print("hello");
fancy_print("world!");
```
