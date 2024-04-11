clear;clc;
%dataTY = 'int16';
%x = [intmin(dataTY),intmax(dataTY)]

dataTypes = ["int8", "int16", "int32", "int64", "uint8", "uint16", "uint32", "uint64"];
min = zeros(size(dataTypes));
max = min;
count = 1;
for type = dataTypes
    min(1,count) = intmin(type);
    max(1,count) = intmax(type);
    count = count + 1;
end

rows = mat2cell(dataTypes')





