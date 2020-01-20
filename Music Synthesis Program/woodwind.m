function[y] = woodwind(n)
% WOODWIND   Amplitude envelope for woodwind instruments
%    Y = WOODWIND(N) is an N-element column vector, which approximates the
%    envelope shape of the said types of musical instruments. The peak
%    sample value in Y is normalized to unity.

% -- Nihat C. Oguz --------------------------------------------------------

if nargin == 0
	help woodwind;
	rundemo;
	return;
end

n1 = round(n/8);
y1 = 0:1/(n1-1):1;
n2 = round(6*n/8)-n1;
y2 = ones(1,n2);
n3 = n-n2-n1;
y3 = 1:-1/(n3-1):0;
y = [ y1 y2 y3 ]';

function rundemo
fprintf('Hit any key to see a 256-sample envelope.'); pause;
fh=figure;
plot(0:1/255:1, woodwind(256));
axis([-.05 1.05 0 1.05]); grid;
xlabel('Time');
ylabel('Amplitude');
title('Typical woodwind envelope');
fprintf('\nHit any key to finish demo.'); pause;
close(fh);
