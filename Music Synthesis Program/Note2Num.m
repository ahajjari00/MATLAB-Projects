% Amir Hajjari - Lab 2 code for converting notes to numbers ( first
% function) 9-30-2019
function[NoteNum] = Note2Num(NoteChar)
NoteNum = zeros(length(NoteChar),1);
k = 1; % index
    while ( k <= length(NoteChar))
        switch NoteChar{k}
            case 'a'
                NoteNum(k) = 0;               
            case 'a*'
                NoteNum(k) = 1;               
            case 'b'
                NoteNum(k) = 2;
            case 'c'
                NoteNum(k) = 3;
            case 'c*'
                NoteNum(k) = 4;
            case 'd'
                NoteNum(k) = 5;                
            case 'd*'
                NoteNum(k) = 6;           
            case 'e'
                NoteNum(k) = 7;    
            case 'f'
                NoteNum(k) = 8;
            case 'f*'
                NoteNum(k) = 9;
            case 'g'
                NoteNum(k) = 10;
            case 'g*'
                NoteNum(k) = 11;
        end 
        k = k + 1;       
    end
end