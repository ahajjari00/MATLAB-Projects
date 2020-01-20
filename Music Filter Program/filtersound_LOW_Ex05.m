function [] = filtersound_LOW_Ex05(filename)
FS = 44100;

[x1,FS1] = audioread('Smoke.wav');
xfilt = x1;
FSfilt = FS1;

Hd = Filter_design_LOW_Ex05;

y = filter(Hd, xfilt);

audiowrite('filt_out.wav',y,FSfilt);

figure(3);
subplot(2,1,1);
delf = FSfilt/length(xfilt);
f = 0:delf:delf*(length(xfilt)-1);
plot(f,abs(fft(xfilt)));
zz = axis;
maxfreq = 4000;
axis([0 maxfreq zz(3) zz(4)]);
zzmax = zz(4);
subplot(2,1,2);
plot(f,abs(fft(y)));
zz = axis;
maxfreq = 4000;
axis([0 maxfreq zz(3) zz(4)]);
zzmax = zz(4);