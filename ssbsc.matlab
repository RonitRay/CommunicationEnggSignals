%ssbsc
clc; clf;
close all;
clear all;
am=input('Am: ');
fm=input('fm: ');
ac=input('Ac: ');
fc=input('fc: ');
t=0:0.001:1;
 
x= am* cos(2*pi*fm*t);
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
 
xh= am* sin(2*pi*fm*t);
subplot(5,1,3)
plot(t,xh,'g')
title('Hilbert Transform of MESSAGE SIGNAL')
grid on
xlabel('Time t -->')
ylabel('Amplitude Vm -->')
 
usb=(x.*cos(2*pi*fc*t))-(xh.*sin(2*pi*fc*t));
subplot(5,1,4)
plot(t,usb,'m')
title('SSB USB')
grid on
xlabel('Time t -->')
ylabel('Amplitude Vm -->')
lsb=(x.*cos(2*pi*fc*t))+(xh.*sin(2*pi*fc*t));
subplot(5,1,5)
plot(t,lsb,'r')
title('SSB LSB')
grid on
xlabel('Time t -->')
ylabel('Amplitude Vm -->')
