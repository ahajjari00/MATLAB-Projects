% Q2 

% notes to numbers
f0= 440;
function[x] = Note2Num(NoteChar)
NoteNum = zeroes(length(NoteChar),1);

k = 1;

    while ( k <= length(Notechar))
        switch NoteChar(k)
            case 'a'
                NoteNum(k) = 0;
                
            case 'ab'
                NoteNum(k) = 1;
                
            case 'c'
                NoteNum(k) = 2;

            case 'cd'
                NoteNum(k) = 3;

            case 'd'
                NoteNum(k) = 4;

            case 'de'
                NoteNum(k) = 5;
                
            case 'f'
                NoteNum(k) = 6;
                
            case 'fe'
                NoteNum(k) = 7;
            case 'c'
                NoteNum(k) = 2;

            case 'cd'
                NoteNum(k) = 3;

            case 'd'
                NoteNum(k) = 4;

            case 'e'
                NoteNum(k) = 5;
        end
        
        k += 1;
             
        x = NoteNum(k);
    end
end
    

% numbers to frequency
    function[freq] = Num2freq(x,f0)
    if k < 2
        fk = f0;
    else
             fk = 2 * (f0).^(k/12);  
             
    end
    
    freq = fk;
    
    end

    
    
% frequency to signal
    function[x] = freq2signal(envtype, freq, t, y) 
    
    x = cos( (2 * pi) .* (freq) .* t);
    
    end
    
    
    
% output

function[x] = experiment1(noteSeq, durSeq, envtype, f0,fs)
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
    durSeq = one(length(notseq));
end


k = Note2Num(noteseq);

ts = 1 / Fs;

for i  = 1 : length(k)
    fk = Num2freq(k(i), f0);
    t = 0;
    ts = durSeq;
    y = woodwind(length(t));
    x = freq2sig(envtype,fk,t,y);
    sound(x);
    disp(x);
end
end

    
    
    
function[y] = keybrd(n)
% KEYBRD   Amplitude envelope for string and keyboard instruments
%    Y = KEYBRD(N) is an N-element column vector, which approximates the
%    envelope shape of the said types of musical instruments. The peak
%    sample value in Y is normalized to unity.

% -- Nihat C. Oguz --------------------------------------------------------

if nargin == 0
	help keybrd;
	rundemo;
	return;
end

n1 = round(2*n/30);
y1 = 0:1/(n1-1):1;
n2 = round(4*n/30)-n1;
y2 = 1:-.45/(n2-1):.55;
n3 = n-n2-n1;
y3 = .55:-.55/(n3-1):0;
y = [ y1 y2 y3 ]';

end



function rundemo
fprintf('Hit any key to see a 256-sample envelope.'); pause;
fh=figure;
plot(0:1/255:1, keybrd(256));
axis([-.05 1.05 0 1.05]); grid;
xlabel('Time');
ylabel('Amplitude');
title('Typical string or keyboard envelope');
fprintf('\nHit any key to finish demo.'); pause;
close(fh);
end

    

    
    
    