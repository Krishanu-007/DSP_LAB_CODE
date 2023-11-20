%Calculating The DFT Using Analytical Method%
clc;
clear all;
x=input('Enter the sequence: ');  %taking input sequence from the user
N=input('Enter N-point for DFT: '); %taking the N-point value from the user
xn=[x,zeros(1,N-length(x))];  %padding the input sequence with sufficient zeros
Xk=zeros(1,N); %defining the result vector
for k=0:N-1 %analytical method loop
  for n=0:N-1
    Xk(k+1)=Xk(k+1)+xn(n+1).*exp((-j*2*pi*k*n)/N);  %formula for calculating the DFT
  endfor
end
t=0:N-1;  %defining the time variable
Xkabs=abs(Xk);  %vector storing the absolute values of X(K)
Xkangle=angle(Xk);  %vector storing the angle values of X(K)
subplot(2,2,1);
stem(t,xn); %plotting the input sequence
xlabel('Time');
ylabel('Amp');
title('Input Sequence x[n]');

subplot(2,2,2);
stem(t,Xk); %plotting the DFT sequence
xlabel('Frequency');
ylabel('Amp');
title('N point DFT X[K]');

subplot(2,2,3);
stem(t,Xkabs);  %plotting the absolute value of X(K)
xlabel('Frequency');
ylabel('Amp');
title('Absolute Value of X[K]');

subplot(2,2,4);
stem(t,Xkangle);  %plotting the angle value of X(K)
xlabel('Frequency');
ylabel('Angle');
title('Phase spectrum of X[K]');
