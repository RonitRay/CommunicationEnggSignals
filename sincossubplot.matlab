%sin cos step subplot
clc;
clear all;
close all;
t=0:0.01:1;
vm=input('Enter Vm value: ');
fm=input('Enter Fm value: ');
m=vm*sin(2*pi*fm*t);

subplot(2,2,1)
stem(t,m,'r')
title('SINE WAVE (Discrete)')
grid on
xlabel('Time t -->')
ylabel('Amplitude Vm -->')
 
subplot(2,2,2)
plot(t,m,'r')
title('SINE WAVE (Continuous)')
grid on
xlabel('Time t -->')
ylabel('Amplitude Vm -->')
 
n=vm*cos(2*pi*fm*t);
subplot(2,2,3)
stem(t,n,'k')
title('COSINE WAVE (Discrete)')
grid on
xlabel('Time t -->')
ylabel('Amplitude Vm -->')
 
subplot(2,2,4)
plot(t,n,'k')
title('COSINE WAVE (Continuous)')
grid on
xlabel('Time t -->')
ylabel('Amplitude Vm -->')
