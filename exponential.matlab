%exponential
clf 
clc
clear all 
close all 
t=0:0.001:1;
vm=input('Vm: ') 
m=vm*exp(t);
plot(t,m,'m')
