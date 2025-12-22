clear
clc
close all

%% Workspace Prep

% NOTE: default properties are set using the following convention:
% set(0, 'default<Object Type><Property Name>', <value>)

% Ex: changing the default line width is given by this command:
set(0,'defaultLineLineWidth',2)
% with 'Line' being the object and 'LineWidth' being the property that
% belongs to the Line object and '2' being the value of LineWidth being set

% setting the grid to be on for all plots
set(0,'defaultAxesXGrid','on')
set(0,'defaultAxesYGrid','on')

% note that in (Jack Rush's) personal experience, inputting the above
% properties as strings (encased in double quotes) as opposed to character
% vectors (encased in single quotes) has been met with mixed results for no
% explainable reason, so just to be safe, (Jack Rush) suggests that you
% utilize character vectors when setting default properties with the set()
% function

% example linear data to plot
x = linspace(1,20,30);
y = linspace(2,83,30);

%% Basics

% creates a new figure and gives it a name. Note that you can reference 
% this figure again by calling figure(fig1) at some later point.
fig1 = figure('Name','Example Figure One');

% when plot is called, a new axes object is instantiated and assigned to
% the last called figure object.
plot(x,y)

% by turning hold on, you allow for future calls to plot to put data on the
% same axes that you previously plotted on
hold on

%plots the inverse of the data above
plot(y, x)

% by calling legend without specifying an axes object, it creates a legend
% for the last called axes object and maps each string passed to it to the
% preceeding plot
legend("First Set", "Second Set")

% in order to give the axes labels, you need to use the xlabel and ylabel
% functions. These automatically work on the currently selected axes
% object.

xlabel("X-axis")
ylabel("Y-axis")

% to add a title to your figure, just use the title function

title("Example Data")

% if you want to add boundaries to your axes, use xlim([a b]) or 
% ylim([a b]), with a being the lower bound and b being the upper bound 

xlim([1 100])
ylim([-10 10])

% note that as the MATLAB interpreter doesn't care about the order that
% you call these functions, as it only draws the figure after it has
% processed all of the relevant commands relating to the figure (unless
% otherwise specified by the user)

%% LineSpec Options

% The general format goes as follows: 
% 'linestyle marker color'
% 
% Notable linestyles include:
% -     solid line
% --    dashed line
% :     dotted line
% -.    dash-dotted line
%
% Note that failing to specify a line style while specifying other
% properties results in no line being plotted, only the points at the
% datapoints (if discrete data is being plotted)
% 
% Notable markers include:
% *     asterisk
% x     x
% o     circle
%
% Color can be accessed with r g b c m y k for the red, blue, green, cyan,
% magenta, yellow, or black, respectively. For more precise control of
% color, you need to specify it via the 'color' property 
% 
% Ex. Plot the discrete points (1,4) and (2, 6) with red circles, connected
% by a dotted line

plot([1 4], [2 6], ':ro')

% To plot with the color property as mentioned previously, use 
% plot(_,'color', [a b c]), where [a b c] is a RGB triplet


%% Changing Properties Manually

% if you ever need to change the properties of an axis manually after
% creating it, first assign the axes object to a variable

% gca gets whatever axes object you operated on last

axes1 = gca;



% note that I've tried to sidestep this issue through
% eval('gca').foo = 'value', but MATLAB doesn't seem to appreciate such
% blatant disregard for its most core and treasured principles

% to change the properties of axes1, simply use the . operator and specify
% the property, followed by = 'value'.

% Example: change the scale of the X axis to logarithmic

axes1.XScale = 'log';

% a full list of the plethora of properties can be found here: 
% https://www.mathworks.com/help/matlab/ref/matlab.graphics.axis.axes-properties.html?searchHighlight=axes%20properties&s_tid=srchtitle_axes%20properties_1







% pauses execution to allow user to examine current configuration
input("Press enter to continue")

% clf is used to clear the current figure
clf


%% Multiple Plots, One Figure

% subplot(m, n, p) creates a grid of axes on the current figure object with
% m-rows and n-columns, with p being the index at which an axes object is
% being placed (counted left to right, top to bottom)

% Ex: create a 2 x 2 grid of subplots, with two plots on top and one on the
% bottom

p1 = subplot(2,2,1);
p2 = subplot(2,2,2);
p3 = subplot(2,2,[3 4]);

% p1, p2, and p3 are axes objects that can now be plotted onto by being
% added as the first parameter in most plotting functions

plot(p1, x, y)
title(p1,"First")
plot(p2, y, x)
xlabel(p2, "Second x-axis")
plot(p3, y, y)
ylabel(p3, "Third y-axis")

%% 3-D Plots


