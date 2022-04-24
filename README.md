# matlab-examples
Repository of MATLAB example code for referencing, since I always forget 
the syntax for the same things and find myself googling the same terms
over and over again.

# Keyboard Shortcuts
**Commenting:**
- `Ctrl + R`: Comment selected lines
- `Ctrl + T`: Un-comment selected lines
- `Ctrl + I`: Smart indent

**Running code:**
- `F5`: Run the whole script
- `Ctrl + Enter`: Run the current section

# `basics.m`

## Preparing workspace
I place this at the top of every script I write. Close all windows opened, 
clear all variables from the workspace, and clear the command window.

```MATLAB
clear variables;
close all;
clc;
```

## [For loop](https://www.mathworks.com/help/matlab/ref/for.html)
Create an empty sum variable, count that variable up to 100 in a loop.

```MATLAB
sum = 0;
for i = 1:100
    sum = sum+1;
end
```

## Printing to Command Window
Print a string + a variable using three different methods.

```MATLAB
disp("Sum: ");disp(sum);
disp("Sum: " + sum);
fprintf("Sum: %d\n", sum);
```
