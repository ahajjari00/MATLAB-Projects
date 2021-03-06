function Hd = Filter_design_BANDEx05
%FILTER_DESIGN_HIGH_EX05 Returns a discrete-time filter object.

% MATLAB Code
% Generated by MATLAB(R) 9.6 and Signal Processing Toolbox 8.2.
% Generated on: 29-Oct-2019 19:10:18

% Butterworth Bandpass filter designed using FDESIGN.BANDPASS.

% All frequency values are in Hz.
Fs = 44100;  % Sampling Frequency

Fstop1 = 1000;        % First Stopband Frequency
Fpass1 = 2300;        % First Passband Frequency
Fpass2 = 2500;        % Second Passband Frequency
Fstop2 = 5000;        % Second Stopband Frequency
Astop1 = 60;          % First Stopband Attenuation (dB)
Apass  = 1;           % Passband Ripple (dB)
Astop2 = 80;          % Second Stopband Attenuation (dB)
match  = 'stopband';  % Band to match exactly

% Construct an FDESIGN object and call its BUTTER method.
h  = fdesign.bandpass(Fstop1, Fpass1, Fpass2, Fstop2, Astop1, Apass, ...
                      Astop2, Fs);
Hd = design(h, 'butter', 'MatchExactly', match);

% [EOF]
