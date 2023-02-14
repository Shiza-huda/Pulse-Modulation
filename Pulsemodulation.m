
%Lab Session 12
% Pulse Amplitude Modulation
% Group 3

fs= 5000e5;  %Sampling Frequency
fm= 10000;  %Message Frequency
fc= 50000;  %Pulse Frequency
nCyl=3;      %Number of waves to be generated
t=0:1/fs:nCyl*1/fm;  %Defining time 
x=sin(2*pi*fm*t);    %Message Signal
c=0.5*square(2*pi*fc*t)+0.5;    %Carrier/Pulse Signal
pm=x.*c;
y=uencode(pm,2,1);
figure(1);
subplot(2,1,1);
plot(t,x)
ylim([-1.2 1.2]);
title('Message Signal');
xlabel('Time');
ylabel('Amplitude');
subplot(2,1,2);
plot(t,c);
ylim([-0.2 1.2]);
title('Pulse Signal');
xlabel('Time');
ylabel('Amplitude');
figure(2);
subplot(2,1,1);
plot(t,pm);
title('Natural Pulse Modulation');
xlabel('Time');
ylabel('Amplitude');
ylim([-1.2 1.2]);
subplot(2,1,2);
plot(t,y);
title('Flat Pulse Modulation');
xlabel('Time');
ylabel('Amplitude');
ylim([-1 4]);

