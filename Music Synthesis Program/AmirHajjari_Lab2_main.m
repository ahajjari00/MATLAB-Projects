% Amir Hajjari - Lab 2 code for main function ( 4th
% function) 9-30-2019
function[x] = AmirHajjari_Lab2_main(noteSeq, durSeq, envtype, f0,fs)
if nargin < 5
    fs = 8192;
end

if nargin < 4
    f0 = 440;
end

if nargin < 3
    envtype = 0;
end

if nargin < 2
    durSeq = ones(length(noteSeq));
end

k = Note2Num(noteSeq);

ts = 1 / fs;

for i  = 1 : length(k)
    fk = Num2freq(k(i), f0);
    t = 0: ts: durSeq;
    y = woodwind(length(t));
    x = freq2signal(envtype,fk,t,y);
    sound(x);
    pause(1);
end
end
