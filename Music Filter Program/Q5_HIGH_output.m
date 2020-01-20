% Amir Hajjari, Lab 8 Q5 , 10/29/19
% filtered Smoke sound HIGH pass

filtersound_HIGH_Ex05('Smoke.wav');

[Xbefore, FSbefore] = audioread('Smoke.wav');
sound(Xbefore, FSbefore);

pause(20); % had to increase since the sample 'Smoke.wav' was much longer than prior samples in earlier questions

[Xafter, FSafter] = audioread('filt_out.wav');
sound(Xafter, FSafter);

% I designed this filter to function as a high pass filter to get the high-pitched sound to be 
% heard. I chose the same attenuation for the stop and
% passbands as in ealier examples to yield similar, comparable outputs.

% 2nd order butterworth
