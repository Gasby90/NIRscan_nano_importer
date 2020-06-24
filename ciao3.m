function data = ciao2(filename, startRow, endRow)
load ('WHITE', '-mat')
load ('BLACK', '-mat')
WHITE=double(WHITE);
BLACK=double(BLACK);
% Initialize variables.
delimiter = ',';
if nargin<=2
    startRow = 21;
    endRow = inf;
end

%% Format for each line of text:
%   column1: double (%f)
%	column2: double (%f)
% For more information, see the TEXTSCAN documentation.
formatSpec = '%f%f%*s%*s%*s%[^\n\r]';

%% Open the text file.
fileID = fopen(filename,'r');

%% Read columns of data according to the format.
% This call is based on the structure of the file used to generate this
% code. If an error occurs for a different file, try regenerating the code
% from the Import Tool.
dataArray = textscan(fileID, formatSpec, endRow(1)-startRow(1)+1, 'Delimiter', delimiter, 'TextType', 'string', 'HeaderLines', startRow(1)-1, 'ReturnOnError', false, 'EndOfLine', '\r\n');
for block=2:length(startRow)
    frewind(fileID);
    dataArrayBlock = textscan(fileID, formatSpec, endRow(block)-startRow(block)+1, 'Delimiter', delimiter, 'TextType', 'string', 'HeaderLines', startRow(block)-1, 'ReturnOnError', false, 'EndOfLine', '\r\n');
    for col=1:length(dataArray)
        dataArray{col} = [dataArray{col};dataArrayBlock{col}];
    end
end

%% Close the text file.
fclose(fileID);

%% Create output variable
data = [dataArray{1:end-1}];
w=data(:,1);
%convering string to double
w=w';
%Extract spectra
raw=data(:,2);
%converting cell to matrix
% raw=cell2mat(raw);
raw=raw';
%creating dataset and assigning axis scale

%assign file name
Name=strrep(filename,'.csv','');

A=(raw-BLACK);
B=(WHITE-BLACK);
REFL=A./B;
REFL=dataset(REFL);
REFL.axisscale{2}=w;
assignin('base',Name,REFL);
