%BFSK randomized
close all;
clear all;
clc;
fc1=input('Enter fc1: ');
fc2=input('Enter fc2: ');
num=input('Enter no. of bits: ');
n=rand(num,1);
l=length(n);
n(l+1)=n(l);
l1=length(n);
for i=1:l1
    if n(i)>0.5
        n(i)=1;
    else
        n(i)=0;
    end
end

tn=0:l1-1;
subplot(5,1,1);
stairs(tn,n,'r','Linewidth',2);
xlabel('Time (s) ->');
ylabel('Amplitude (V) ->');
title('Message Signal');

t=0:0.01:l;
c=sin(2*pi*fc1*t);
subplot(5,1,2);
plot(t,c);
xlabel('Time (s) ->');
ylabel('Amplitude (V) ->');
title('Carrier Signal');
grid on;

t=0:0.01:l;
c2=sin(2*pi*fc2*t);
subplot(5,1,3);
plot(t,c2);
xlabel('Time (s) ->');
ylabel('Amplitude (V) ->');
title('Carrier Signal 2');
grid on;

%FSK Modulated signal generation
for i=1:l
    for j=(i-1)*100:i*100
        if(n(i)==1)
            s(j+1)=c(j+1);
        else
            s(j+1)=c2(j+1);
        end
    end
end

subplot(5,1,4);
plot(t,s,'k');
xlabel('Time (s) ->');
ylabel('Amplitude (V) ->');
title('FSK Signal');
grid on;

%FSK Demodulated signal
for i=1:l
    for j=(i-1)*100:i*100
        if(s(j+1)==c(j+1))
            x(j+1)=1;
        else
            x(j+1)=0;
        end
    end
end

subplot(5,1,5);
plot(t,x,'m','Linewidth',2);
xlabel('Time (s) ->');
ylabel('Amplitude (V) ->');
title('FSK Demodulated Signal');
