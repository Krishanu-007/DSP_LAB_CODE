%Circular Convolution Using User Defined DataSet and Analytical Method%
clc;
clear all;
x=input('Enter x[n]: ');
h=input('Enter h[n]: ');
l1=length(x); %measuring the length of the input sequence
l2=length(h); %measuring the length of the impulse response sequence
N=max(l1,l2); %finding the maximum length between the two lengths
x1=[x,zeros(1,N-l1)]; %equating the lengths%
h1=[h,zeros(1,N-l2)]; %with the maximum length%

y=zeros(1,N); %defining the result vector
for i=0:N-1 %analytical method loop
  y(i+1)=0;
  for k=0:N-1
    modulo=mod(i-k,N);  %converting the neagtive indices into positive following the circular convolution rule
    y(i+1)=y(i+1)+x1(k+1).*h1(modulo+1);  %formula for calculating the circular convolution
  end
end

y
n=0:N-1;  %defining the time variable range
subplot(2,2,1);
stem(n,x1); %plotting the input sequence
xlabel('time');
ylabel('amplitude');
title('x[n]');

subplot(2,2,2);
stem(n,h1); %plotting the input sequence 2
xlabel('time');
ylabel('amplitude');
title('h[n]');

subplot(2,2,3);
stem(n,y);  %plotting the circularly convoluted sequence
xlabel('time');
ylabel('amplitude');
title('y[n]');
