clc;
clear all;
x=linspace(0,2*pi,30);
y1=sin(x);
y2=cos(x);
plot (y1, "*", "markersize", 5)
hold on
plot (y2, "+", "markersize", 5)
