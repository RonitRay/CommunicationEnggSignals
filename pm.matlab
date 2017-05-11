%PM
clc;
clf;
close all;
clear all;
am=input('Am: ');
fm=input('fm: ');
ac=input('Ac: ');
fc=input('fc: ');
mp=input('mp: ');
t=0:0.001:1;
 
x= am* cos(2*pi*fm*t);
whitebg('w')
subplot(5,1,1)
plot(t,x,'r')
title('MESSAGE SIGNAL')
grid on
xlabel('Time t -->')
ylabel('Amplitude Vm -->')
 
c= ac* cos(2*pi*fc*t);
subplot(5,1,2)
plot(t,c,'b')
title('CARRIER SIGNAL')
grid on
xlabel('Time t -->')
ylabel('Amplitude Vm -->')
 
sp=ac*cos(2*pi*fc*t + mp*cos(2*pi*fm*t));
subplot(5,1,3)
plot(t,sp,'k')
title('PM SIGNAL')
grid on
xlabel('Time t -->')
ylabel('Amplitude Vm -->')

sf=ac*cos(2*pi*fc*t + (mp+5)*cos(2*pi*fm*t));
subplot(5,1,4)
plot(t,sf,'r')
title('PM SIGNAL (mp+5)')
grid on
xlabel('Time t -->')
ylabel('Amplitude Vm -->')
 
sf=ac*cos(2*pi*fc*t + (mp+10)*cos(2*pi*fm*t));
subplot(5,1,5)
plot(t,sf,'r')
title('PM SIGNAL (mp+10)')
grid on
xlabel('Time t -->')
ylabel('Amplitude Vm -->')
