%amplitude modulation
clc;
clf;
close all;
clear all;
am=input('Am: ');
fm=input('fm: ');
ac=input('Ac: ');
fc=input('fc: ');
t=0:0.001:1;
 
m= am* cos(2*pi*fm*t);

subplot(3,1,1)
plot(t,m,'r')
title('MESSAGE SIGNAL')
grid on
xlabel('Time t -->')
ylabel('Amplitude Vm -->')
 
c= ac* cos(2*pi*fc*t);
subplot(3,1,2)
plot(t,c,'r')
title('CARRIER SIGNAL')
grid on
xlabel('Time t -->')
ylabel('Amplitude Vm -->')
 
s=(ac*cos(2*pi*fc*t)+(am*cos(2*pi*fm*t).*cos(2*pi*fc*t)));
subplot(3,1,3)
plot(t,s,'r')
title('MODULATED SIGNAL')
grid on
xlabel('Time t -->')
ylabel('Amplitude Vm -->')
grid on
