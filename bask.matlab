%BASK
close all;
clear all;
clf;
fc=20;
n=[1 0 1 0 1];
l=length(n);
n(l+1)=n(l);
l1=length(n);
 
tn=0:l1-1;
subplot(4,1,1);
stairs(tn,n,'r','Linewidth',2);
xlabel('Time (s) ->');
ylabel('Amplitude (V) ->');
title('Message Signal');
 
t=0:0.01:l;
c=sin(2*pi*fc*t);
subplot(4,1,2);
plot(t,c);
xlabel('Time (s) ->');
ylabel('Amplitude (V) ->');
title('Carrier Signal');
grid on;
 
%ASK Modulated signal generation
for i=1:l
    for j=(i-1)*100:i*100
        if(n(i)==1)
            s(j+1)=c(j+1);
        else
            s(j+1)=0;;
        end
    end
end
 
subplot(4,1,3);
plot(t,s,'g');
xlabel('Time (s) ->');
ylabel('Amplitude (V) ->');
title('ASK Signal');
grid on;
 
%ASK Demodulated signal
for i=1:l
    for j=(i-1)*100:i*100
        if(s(j+1)==c(j+1))
            x(j+1)=1;
        else
            x(j+1)=0;
        end
    end
end
 
subplot(4,1,4);
plot(t,x,'m','Linewidth',2);
xlabel('Time (s) ->');
ylabel('Amplitude (V) ->');
title('ASK Demodulated Signal');
