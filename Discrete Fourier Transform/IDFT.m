%IDFT Calculation Using Analytical Method And User Defined DataSet%
clc;
clear all;
X=input('Enter the sequence X[K]: '); %taking input sequence from the user
N=input('Enter the N-point for IDFT: ');  %taking the N-point value from the user
Xk=[X,zeros(1,N-length(X))]; %padding the input sequence with sufficient zeros
xn=zeros(1,N); %defining the result vector
for n=0:N-1 %analytical method loop
  for k=0:N-1
    xn(n+1)=xn(n+1)+(1/N)*(Xk(k+1).*exp((2*j*pi*k*n)/N)); %analytical formula for IDFT
  endfor
end
Xkabs=abs(Xk);  %calculating the absolute values of X(K)
Xkangle=angle(Xk);  %calculating the angle values of X(K)
t=0:N-1; %defining the time variable

subplot(2,1,1);
stem(t,Xk); %plotting the DFT sequence
xlabel('Frequency');
ylabel('Amp');
title('N point DFT X[K]');

subplot(2,1,2);
stem(t,xn); %plotting the IDFT sequence
xlabel('Time');
ylabel('Amp');
title('Original Input Sequence x[n]');

%plotting of the absolute and angle values can also be done just like the DFT code%
%just change the subplot range to (2,2,*) that means 4 sections of the entire window%
