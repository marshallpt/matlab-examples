%% Preparing workspace
% Close all windows opened, clear all variables from the workspace, and
% clear the command window.

close all;
clear all;
clc;

%% For loop
% Create an empty sum variable, count that variable up to 100 in a loop.

sum = 0;
for i = 1:100
    sum = sum+1;
end

%% Printing to Command Window
% Print a string + a variable using three different methods.
disp("Sum: ");disp(sum);
disp("Sum: " + sum);
fprintf("Sum: %d\n", sum);