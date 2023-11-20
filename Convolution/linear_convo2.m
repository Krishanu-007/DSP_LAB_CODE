%Linear Convolution Program on Predefind Data%
clc;
clear all;
n=-1:1;% this is done to denote the position of the sample at n=0(in this case the sample strength will be 2 at n=0)
x=[1,2,3]; %Input sequence
subplot(2,2,1);
grid on
stem(n,x);
xlabel('time');
ylabel('amp');
title('x[n]');

n=-2:1;% this is done to denote the position of the sample at n=0(in this case the sample strength will be 3 at n=0)
h=[2,4,3,5]; %Impulse response sequence
subplot(2,2,2);
grid on
stem(n,h);
xlabel('time');
ylabel('amp');
title('h[n]');

y=conv(x,h)
n=-3:2; %Determining the position of the zeroth sample in linear convoluted signal using-> req. pos=(L+M-1) where L and M are the starting position of the input and impulse response sequence(here -1-2=-3)
subplot(2,2,3);
stem(n,y);
xlabel('time');
ylabel('amp');
title('y[n]');
