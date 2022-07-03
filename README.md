# matlab-examples
Repository of MATLAB example code for referencing, since I always forget 
the syntax for the same things and find myself googling the same terms
over and over again.

# Keyboard Shortcuts
*Commenting:*
- `Ctrl + R`: Comment selected lines
- `Ctrl + T`: Un-comment selected lines

*Running code:*
- `F5`: Run the whole script
- `Ctrl + Enter`: Run the current section

# `basics.m`

## Preparing workspace
I place this at the top of every script I write. Close all windows opened, 
clear all variables from the workspace, and clear the command window.

```MATLAB
close all;
clear all;
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

# `plotting.m`

## [Creating a figure](https://www.mathworks.com/help/matlab/ref/figure.html?searchHighlight=figure&s_tid=srchtitle_figure_1)
*Create an empty figure object, which you can refer to by either a variable name or an integer* 

Creates a figure with the name 'name' and the title 'Example Figure One'.
```MATLAB
fig1 = figure('Name','Example Figure One');
```
You can now make this the active figure by calling figure(fig1).
<br><br>
The following line creates a figure that is referred to with an integer.
```MATLAB
figure(1, 'Name', 'Example Figure Two')
```
Call ```fig(1)``` to make the figure instantiated directly above the active figure.
## [Plot command](https://www.mathworks.com/help/matlab/ref/plot.html)
*When ```plot``` is called, a new ```axes``` object is instantiated and assigned to the last called ```figure``` object.*
*Assume x and y are integer vectors. The following code creates a 2-D line plot (specifically an ```axes``` object) that is assigned to the most recently accessed figure object, creating a new figure if no figure object has been created in the current runtime. The following snipet specifically plots the y vector on the horizontal axis and the x vector on the vertical axis.* 
```MATLAB
plot(y,x)
```

*The ```hold``` function allows for future calls to ```plot()``` to not replace the ```axes``` object currently assigned to the selected figure, but to plot additional lines on the current ```axes``` object*.
```MATLAB
hold on
```
*The [```legend```](https://www.mathworks.com/help/matlab/ref/legend.html?searchHighlight=legend&s_tid=srchtitle_legend_1) function creates a legend for the last called ```axes``` object, and maps each string passed to a vector pair in the order that the vector pairs were entered (sequentially).*
```MATLAB
legend("first set", "second set")
```
In order to label each axis on its respective ```axes``` object, use the [```xlabel()```](https://www.mathworks.com/help/matlab/ref/xlabel.html?searchHighlight=xlabe&s_tid=srchtitle_xlabe_1) and [```ylabel()```](https://www.mathworks.com/help/matlab/ref/ylabel.html) functions.
<br><br>
*The following functions assign the label "x-axis" to the x-axis of the most recently accessed ```axes``` object and "y-axis" to the y-axis of the most recently accessed ```axes``` object (note that a ```figure``` access constitutes an ```axes``` access).*
```MATLAB
xlabel("x-axis")
ylabel("y-axis")
```
In order to add a title to your figure, use the [```title```](https://www.mathworks.com/help/matlab/ref/title.html?searchHighlight=title&s_tid=srchtitle_title_1) function.  <br><br>
*The following function assigns the title "Graph" to the most recently accessed axes object.*
```MATLAB
title("Graph")
```
In order to change the range of data shown on each axis, use the [```xlim```](https://www.mathworks.com/help/matlab/ref/xlim.html?searchHighlight=xlim&s_tid=srchtitle_xlim_1) and [```ylim```](https://www.mathworks.com/help/matlab/ref/ylim.html) functions. <br><br>
*The following functions assign a range of [1 100] on the x-axis and [-10 10] on the y-axis of the most recently accessed axes object.*
```MATLAB
xlim([1 100])
ylim([-10 10])
```


