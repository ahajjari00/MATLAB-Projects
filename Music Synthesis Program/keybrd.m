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

