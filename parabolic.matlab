%parabolic
clf 
clc
clear all 
close all 
t=0:0.001:1;
m=t.*t;
vm=input(' Vm:') 
m=vm*(t.*t);
plot(t,m,'b')
