clc;
clear all;
d=-4:4; %this range is used to create the impulse signal
xd=zeros(1,length(d)); %creating a row vector with all zeros
xd(5)=1; %here the position can be determind by using the formula-> req. pos=(0-L+1), where L is the lower limit in the range
n=0:10;
xu=ones(1,length(n));%creating a row vector with all ones
xr=n;
xp=xr.^3;%creating a row vector where all the values will be the cube of the index value(basically parabolic in nature)
subplot(2,2,1);
stem(d,xd); %plotting the unit impulse signal
grid on;
xlabel('Time');
ylabel("Signal Strength");
title("Impulse Signal");
subplot(2,2,2);
stem(n,xu); %plotting the unit step signal
grid on;
xlabel('Time');
ylabel("Signal Strength");
title("Unit Signal");
subplot(2,2,3);
stem(n,xr); %plotting the unit ramp signal
grid on;
xlabel('Time');
ylabel("Signal Strength");
title("Ramp Signal");
subplot(2,2,4);
stem(n,xp); %plotting the parabolic signal
grid on;
xlabel('Time');
ylabel("Signal Strength");
title("parabolic Signal");
