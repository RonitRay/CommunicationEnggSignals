%sin wave
clf 
clc
clear all 
close all 
t=0:0.001:1;
vm=input('Vm: ') 
fm=input('Fm: ') 
m=vm*sin(2*pi*fm*t);
plot(t,m,'r')