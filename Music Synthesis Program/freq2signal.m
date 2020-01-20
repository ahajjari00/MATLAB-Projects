% Amir Hajjari - Lab 2 code for converting frequencies to signals ( third
% function) 9-30-2019
function[x] = freq2signal(envtype, fk, t, y)
    
if envtype == 0
    x = cos( 2 .* pi .* fk .* t)
    
elseif envtype == 1
    x = y' .* cos(2 .* pi .* fk .*t)
end
    
end
   