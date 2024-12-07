# Unhandled Throw in Elixir Enum.each

This example demonstrates a subtle issue in Elixir when combining `Enum.each` with `throw`.  While `throw` is generally used for exceptional control flow, its behavior within `Enum.each` might be unexpected.  The exception is not caught within the function, leading to abrupt program termination instead of graceful handling.

## Reproduction

The `bug.ex` file contains the problematic code. Run it to observe the unhandled exception.

## Solution

The `bugSolution.ex` file offers a solution using `try-catch` or a different approach that avoids `throw` within `Enum.each` altogether.