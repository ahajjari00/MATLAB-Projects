% Amir Hajjari - Lab 2 code for converting numbers to frequnecy ( second
% function) 9-30-2019
function[freq] = Num2freq(x,f0)

    if nargin < 2
    f0 = 440;
    end

    freq = f0 .* (2) .^(x/24);  % refer to lab report
    
end
    

