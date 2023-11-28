%Linear Convolution Using User Defined DataSet and Analytical Method%
clc;
clear all;
x=input("Enter the Input Sequence: "); % taking input from user
h=input("Enter the Impulse Response Sequence: "); % taking input from user
n=0:length(x)-1; %limiting the time variable
subplot(2,2,1);
stem(n,x); %plotting the input sequence
grid on
xlabel('time');
ylabel('amp');
title('x[n] input sequence');

n=0:length(h)-1; %limiting the time variable
subplot(2,2,2);
stem(n,h); %plotting the input sequence
grid on
xlabel('time');
ylabel('amp');
title('h[n] impulse response sequence');

M = length(x);  %length of input sequence
N = length(h);  %length of impulse response
L = M + N - 1;
y=zeros(1,L);
for n=1:L  %loop for analytical method
  k_min=max(1,n-N+1); %inner loop condition to avoid negative indices
  k_max=min(n,M);
  for k=k_min:k_max
    y(n)=y(n)+x(k)*h(n-k+1); 
  endfor
end
n=0:length(y)-1;  %limiting the time variable
subplot(2,2,3);
stem(n,y); %plotting the convoluted sequence
grid on
xlabel('time');
ylabel('amp');
title('y[n] linear convoluted sequence');
