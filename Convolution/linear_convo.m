%Linear Convolution Program on Predefind Data%
clc;
clear all;
n=0:4; %mentioning the length of the time index according to the length of the input sequence
x=[1,9,5,2,1]; %Given input sequence, to be taken in the form of a row vector
subplot(2,2,1);
stem(n,x); %plotting the input sequence
grid on
xlabel('time');
ylabel('amp');
title('x[n] input sequence');

n=0:2; %changing the length of the time variable according to the length of the impulse response sequence
h=[1,3,2]; %Given impulse response sequence
subplot(2,2,2);
stem(n,h); %plotting the impulse response sequence;
grid on
xlabel('time');
ylabel('amp');
title('h[n] impulse response sequence');

y=conv(x,h) %calculatin the linear convolution using in-built function
n=0:6; %mentioning the length according to the length of the linear convoluted sequence
subplot(2,2,3);
grid on
stem(n,y); %plotting the linear convoluted sequence
xlabel('time');
ylabel('amp');
title('y[n] linear convoluted sequence');
