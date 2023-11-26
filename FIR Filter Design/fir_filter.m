%FIR Low Pass Filter Design Using Window Method%
clc;
clear all;
N=input("Enter the number of taps: "); %Defining number of taps(samples in the window function) from user input
n=0:(N-1); %right shifting the samples
Wr=blackman(N); %command for blackman window function(can be different for other window functions)
w=0:0.0001:pi; %defining the angular frequency along with number of points
wc=0.5*pi; %defining the cutoff frequency
a=(N-1)/2; %first variable used to ignore 0/0 result%
b=0.0001; %second variable used to ignore 0/0 result%
hd=sin((n-a+b)*wc)./((n-a+b)*pi); %low pass filter equation along with the adjusting variables
hd1=hd.*Wr'; %getting the actual equation of the filter according to the window function procedure
y=freqz(hd1,1,w); %getting the frequency response
subplot(2,1,1);
plot((w/2*pi),abs(y));% plotting the frequency response
grid on;
subplot(2,1,2);
plot(w/pi,20.*log10(abs(y))); %plotting the frequency response in log scale
grid on;
