%DSBSC
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
whitebg('w')
subplot(5,1,1)
plot(t,m,'b')
title('MESSAGE SIGNAL')
grid on
xlabel('Time t -->')
ylabel('Amplitude Vm -->')
 
c= ac* cos(2*pi*fc*t);
subplot(5,1,2)
plot(t,c,'r')
title('CARRIER SIGNAL')
grid on
xlabel('Time t -->')
ylabel('Amplitude Vm -->')
 
s=am* cos(2*pi*fm*t) .* cos(2*pi*fc*t);
subplot(5,1,3)
plot(t,s,'g')
title('DSB-SC MODULATED SIGNAL')
grid on
xlabel('Time t -->')
ylabel('Amplitude Vm -->')
grid on
 
s=(0.5*am*cos(2*pi*fm*t))+(0.5*am* cos(2*pi*fm*t).*cos(2*2*pi*fc*t));
subplot(5,1,4)
plot(t,s,'k')
title('DSB-SC DEMODULATED SIGNAL before Filtering')
grid on
xlabel('Time t -->')
ylabel('Amplitude Vm -->')
grid on
 
s= (0.5*am* cos(2*pi*fm*t));
subplot(5,1,5)
plot(t,s,'m')
title('DSB-SC DEMODULATED SIGNAL after Filtering')
grid on
xlabel('Time t -->')
ylabel('Amplitude Vm -->')
grid on
