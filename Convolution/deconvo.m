clc;
clear all;
y=[6,17,34,43,38,24];
n=0:5;
subplot(2,2,1);
stem(n,y);
xlabel('time');
ylabel('amp');
title('y[n]');

x=[2,3,4];
n=0:2;
subplot(2,2,2);
stem(n,x);
xlabel('time');
ylabel('amp');
title('x[n]');

h=deconv(y,x)
n=0:3;
subplot(2,2,3);
stem(n,h);
xlabel('time');
ylabel('amp');
title('impulse response h[n]');
