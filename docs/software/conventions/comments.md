# Comments

This section is based off of [this](https://stackoverflow.blog/2021/12/23/best-practices-for-writing-code-comments/) stack overflow blog post.

Comments are a very useful and overused tool. Remember that no comment is better than a bad comment. You are guaranteed that the computer is doing exactly what you are telling it to, but there is no such guarantee for the comments. The comments can lie, but your code cannot.

## Don't Write Redundant Comments

If what your code does is obvious, it doesn't need a comment.

It is really easy to understand what this does, so it doesn't need a comment:

```cpp
i = i + x; // Adds i to x
```

This is even worse:

```cpp
// create a for loop // <-- comment
for // start for loop
(   // round bracket
    // newline
int // type for declaration
i    // name for declaration
=   // assignment operator for declaration
0   // start value for i
```

## Comments do not Excuse Unclear Code

The most common culprit of unclear code are [bad variable names](./descriptive-variables.md)

```java
private static Node getBestChildNode(Node node) {
    Node n; // best child node candidate
    for (Node node: node.getChildren()) {
        // update n if the current state is better
        if (n == null || utility(node) > utility(n)) {
            n = node;
        }
    }
    return n;
}

// This doesn't need comments, because it explains itself
private static Node getBestChildNode(Node node) {
    Node bestNode;
    for (Node currentNode: node.getChildren()) {
        if (bestNode == null || utility(currentNode) > utility(bestNode)) {
            bestNode = currentNode;
        }
    }
    return bestNode;
}
```

Before resorting to writing comments, see if you can reword your code to make it more readable.

## If You Can't Write a Clear Comment, There May be a Problem with the Code

> **Kerninghan's Law:**
> Debugging is twice as hard as writing the code in the first place. Therefore, if you write the code as cleverly as possible, you are, by definition, not smart enough to debug it.

If your code cannot be described by a comment, you probably need to rewrite your code. If you are using obscure language features, or unclear, unintuitive syntax to make your program as short as possuble, consider rewriting your program.

## Why, not How

While it might be obvious to you the reason you do things, other people might not. A good time to write comments is when it explains why you wrote something the way you did.

```java
final Object value = (new JSONTokener(jsonString)).nextValue();
// Note that JSONTokener.nextValue() may return
// a value equals() to null.
if (value == null || value.equals(null)) {
    return null;
}
```

In this case it may not be obvious why the code handles a null case.

## Links

If you used an outside source to figure out a peice of code, make sure to cite that source.

```cpp
// Algorithm taken from:
// http://thepilons.ca/wp-content/uploads/2018/10/Tracking.pdf
delta_x_global = (delta_y_local * cos(avg_theta_for_arc)) -
                 (delta_x_local * sin(avg_theta_for_arc));

delta_y_global = (delta_y_local * sin(avg_theta_for_arc)) -
                 (delta_x_local * cos(avg_theta_for_arc));
```

## Notes to Self

If something is unimplemented, or not working, mark that with a comment. Annotations like FIXME and TODO are the standard way to do this. Most syntax highlighters will highlight these to make them pop out to people reading.

```cpp
Coordinates getPosition() {
    // TODO: return the position of the robot in cartesian coordinates
}

```
