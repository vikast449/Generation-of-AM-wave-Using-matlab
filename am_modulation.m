clc;

clear all;

close all;

fm=input('Enter message signal frequency= ');

fc=input('Enter carrier signal frequency= ');

a=input('Enter message signal amplitude= ');

m=input('Enter modulation index= ');

b=a/m;

t=0:0.000001:0.001;

Fs=12000;

mt=vm*square(2*pi*fm*t);

subplot(3,2,1);

plot(t,mt);

xlabel('Time');

ylabel('Amplitude');

title('MESSAGE SIGNAL');

grid on;

ct=b*cos(2*pi*fc*t);

subplot(3,2,2);

plot(t,ct);

xlabel('Time');

ylabel('Amplitude');

title('CARRIER SIGNAL');

grid on;

st=(1+m*square(2*pi*fm*t)).*ct;

subplot(3,2,3);

plot(t,st);

xlabel('Time');

ylabel('Amplitude');

title('AM SIGNAL');

grid on;

x=awgn(st,0.1,'measured'); // to add AWGN Noise to the AM signal

subplot(4,1,4);

plot(t,x);

xlabel('Time');

ylabel('Amplitude');

title('NOISY AM SIGNAL');

grid on;