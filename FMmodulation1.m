clc;clear;

%setting the sampling frequency to 1kHz and carrier frequency to 200Hz
fs = 1000;
fc = 200;

t = (0:1/fs:0.2)';

%create two tone sinuisoidal signal with frequencies 30 and 60 Hz
x = sin(2*pi*30*t) + 2*sin(2*pi*60*t);
%setting the frequency deviation to 50 Hz
fDev  = 50;

%Frequency modulate x
y = fmmod(x,fc,fs,fDev);
%plot the graphs to showv the original signal and modulated signal 
subplot(2,1,1);
plot(t,x);
xlabel('Time(s)');
ylabel('Amplitude');
legend('Original signal');
grid on;
subplot(2,1,2);
plot(t,y);
xlabel('Time(s)');
ylabel('Amplitude');
legend('Modulated signal');
grid on;