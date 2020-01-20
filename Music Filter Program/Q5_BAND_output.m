% Amir Hajjari, Lab 8 Q5 , 10/29/19
% filtered Smoke sound BAND pass

filtersound_BAND_Ex05('Smoke.wav');

[Xbefore, FSbefore] = audioread('Smoke.wav');
sound(Xbefore, FSbefore);

pause(20); % had to increase since the sample 'Smoke.wav' was much longer than prior samples in earlier questions

[Xafter, FSafter] = audioread('filt_out.wav');
sound(Xafter, FSafter);

% I designed this filter to function as a high pass filter, but only a
% range of high frequencies.

%Fstop1 = 1000;        % First Stopband Frequency
%Fpass1 = 2300;        % First Passband Frequency
%Fpass2 = 2500;        % Second Passband Frequency
%Fstop2 = 5000;


% 2nd order butterworth
