%FM
clc;
clf;
close all;
clear all;
am=input('Am: ');
fm=input('fm: ');
ac=input('Ac: ');
fc=input('fc: ');
mf=input('mf: ');
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
 
sf=ac*cos(2*pi*fc*t + mf*sin(2*pi*fm*t));
subplot(5,1,3)
plot(t,sf,'k')
title('FM SIGNAL')
grid on
xlabel('Time t -->')
ylabel('Amplitude Vm -->')
 
sf=ac*cos(2*pi*fc*t + (mf+5)*sin(2*pi*fm*t));
subplot(5,1,4)
plot(t,sf,'m')
title('FM SIGNAL (mf+5)')
grid on
xlabel('Time t -->')
ylabel('Amplitude Vm -->')
 
sf=ac*cos(2*pi*fc*t + (mf+10)*sin(2*pi*fm*t));
subplot(5,1,5)
plot(t,sf,'g')
title('FM SIGNAL (mf+10)')
grid on
xlabel('Time t -->')
ylabel('Amplitude Vm -->')
