%Window Function Generation Based On User Defined Sample Numbers%
clc;
clear all;
N=input('Number of Samples: '); %Taking sample number from User Input%
n=-(N-1)/2:(N-1)/2; %Defining time variable range
Wr=boxcar(N); %function to generate the rectangular window function(can be changed for different window functions)
subplot(3,1,1);
stem(n,Wr); %%plotting the window function
xlabel("Discrete Time Seq.");
ylabel("Signal Strength");
w=-pi:0.001:pi; %defining the angular frequency range
y=freqz(Wr,1,w); %computing the frequency response of the window function
subplot(3,1,2);
plot((w/2*pi),y); %plotting the frequency response
xlabel("Frequency");
ylabel("Strength");
subplot(3,1,3);
plot(w/(2*pi),20.*log10(abs(y))); %plotting the frequency response in log scale
xlabel("Frequency");
ylabel("Strength");
grid on;
