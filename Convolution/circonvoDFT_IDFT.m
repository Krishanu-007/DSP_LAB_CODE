%Circular Convolution Using DFT And IDFT Method%
clc;
clear all;
x1=input("x1: "); %Taking input from user
x2=input("x2: "); %Taking input from user
subplot(2,2,1)
n=0:1:length(x1)-1;
stem(n,x1); %plotting the first sequence
xlabel("time");
ylabel("Amplitude");
title("x1[n]");

subplot(2,2,2)
n=0:1:length(x2)-1;
stem(n,x2); %plotting the second sequence
xlabel("time");
ylabel("Amplitude");
title("x2[n]");

%CALCULATE INDIVIDUAL DFTs --> PRODUCT OF THEM --> IDFT OF THE PRODUCT --> RESULT OF CIRCULAR CONVOLUTION%

N=max(length(x1),length(x2)); %calculating the maximum length between the two sequences
x1=[x1,zeros(1,N-length(x1))];  %zero padding for equaling length
x2=[x2,zeros(1,N-length(x2))];  %zero padding for equaling length
X1=zeros(1,N);  %declaring arrays to store dft of each sequence
X2=zeros(1,N);
Z=zeros(1,N);   %delclaring the array to store the product of the above two dft arrays
for k=0:N-1 %analytical method for DFT calculation
  for n=0:N-1
    X1(k+1)=X1(k+1)+(x1(n+1).*exp((-j*2*pi*k*n)/N));  %calculating the DFT for 1st sequence
    X2(k+1)=X2(k+1)+(x2(n+1).*exp((-j*2*pi*k*n)/N));  %calculating the DFT for 2nd sequence
    Z(k+1)=X1(k+1)*X2(k+1); %storing the product of both the arrays(DFT)
  endfor
end
y=zeros(1,N); %array for storing the result of circular convolution
for n=0:N-1 %analytical method for IDFT calculation
  for k=0:N-1
    y(n+1)=y(n+1)+(1/N)*(Z(k+1).*exp((j*2*pi*k*n)/N));  %calculating the IDFT
  endfor
end
disp(abs(y));
n=0:1:N-1;
subplot(2,2,3);
stem(n,abs(y)); %plotting the result of the circular convolution
xlabel("time");
ylabel("amplitude");
title("Circular Convoluted Sequence y[n]");
