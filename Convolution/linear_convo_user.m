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

M = length(x);
N = length(h);
L = M + N - 1;
% Pad the sequences with zeros to make them of length L
x_padded = [x, zeros(1, L - M)];
h_padded = [h, zeros(1, L - N)];
% Perform linear convolution using the convolution sum
y = zeros(1, L);
for n = 1:L
  for k = 1:n
    if k <= M && n - k + 1 <= N %condition that omits the negative indices
      y(n) = y(n) + x_padded(k) * h_padded(n - k + 1);
    end
  end
end
y
