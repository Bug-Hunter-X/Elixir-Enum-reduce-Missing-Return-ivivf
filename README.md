# Elixir Enum.reduce Bug

This repository demonstrates a common, yet subtle bug in Elixir when using `Enum.reduce`. The bug is related to implicitly returning values from anonymous functions.  The example shows how a missing `return` can lead to unexpected results, and how to fix it.

## The Bug

The `bug.exs` file contains the buggy code. It attempts to sum only the even numbers in a list. The issue lies in the anonymous function passed to `Enum.reduce`. Because there is no explicit `return` statement the last expression evaluated is implicitly returned. Because the `if` statement is missing an `else` section, the function implicitly returns `nil` when the number is odd which results in the function accumulating `nil` values. This leads to a unexpected result which is a `nil` value in the final output.

## The Solution

The `bugSolution.exs` file provides the corrected code.  By adding an explicit `return` statement (or making it more concise by using a conditional expression), the correct result is produced, avoiding the implicit return of nil.