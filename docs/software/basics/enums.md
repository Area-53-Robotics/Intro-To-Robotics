# Enumerations

Enumerations are a very useful feature in strongly typed languages like C++. Enumerations are a custom type that can only have a limited number of values. 

Look at this example:

```cpp
std::String rockPaperScissors(std::String player1, std::String player2) {
  // Logic that compares the two inputs
}
```

This function takes two strings, and compares them using the rules for rock paper scissors. It returns "player1" if player 1 won, and it returns "player2" if player 2 won. However, there are multiple problems with this. What happens if the function recieves input other than "rock", "paper", or "scissors"? Unless the function checks for edge cases, there will be some kind of runtime error. There is a better solution: Enums.


## Unscoped Enums

This is how you define an unscoped enum:
```cpp
enum RpsInput {
  Rock,
  Paper,
  Scissors
}

enum RpsResult {
  Player1Victory,
  Player2Victory,
  Tie
}
```

This enum can be referred to like you would any other datatype. Using this definition we can rewrite our function to look like this:
```cpp
RpsResult rockPaperScissors(RpsInput player1, RpsInput player2) {
  // Logic that compares the two inputs
}
```

A function call would look like this:
```cpp
RpsResult result = rockPaperScissors(Rock, Paper); // Result is Player2Victory
```

This has a couple advantages over using strings. The function no longer needs to handle edge cases, because the input cannot be anything except members of the enum. In addition, this check is now performed at compile time, which means that you will discover incorrect code faster.

```cpp
// Using the enum definition
rockPaperScissors(Meteor, Paper); // This will not compile

// Using the string definition
rockPaperScissors("Meteor", "Paper"); // This will compile
```

Even if the string version checks for edge cases, the check can only happen at runtime. Remember, its best to always get potential errors during compile time, not at runtime.


## Scoped Enums

Scoped enums are vary similar to enums, except they don't bring their members into local scope. This means we cannot refer to them directly.

```cpp
enum class Color {
  Red,
  Green,
  Blue
}

Color color = Color::Red;

Color color = Red; // This would not compile
```

Notice how we can't refer to Red directly, we have to refer to it in terms of Color, similar to how we would use a namespace.
