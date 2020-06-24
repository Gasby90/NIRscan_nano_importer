%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%% DLP NIRSCANO NANO Importer %%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%% Riccardo Gasbarrone 2016 %%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%This script allow the importation of NIR scan raw data .csv in 
%MatLab Environment and calculate the real spectra. REMEMBER:
%The last rows must be black and white 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Initialize importfile3 function
data=importfile3;
load ('filename.mat', 'Nomefile')
%Extract wavelenght
w=data(:,1);
%convering string to double
w=str2double(w);
w=w';
%Extract spectra
raw=data(:,2);
%converting cell to matrix
raw=cell2mat(raw);
raw=raw';
%creating dataset and assigning axis scale
raw=dataset(raw);
raw.axisscale{2}=w;
%Erase .csv in char filename
     Nomefile=strrep('Nomefile','.csv','')
%renaming REFL with the real data file name     
assignin('base','Nomefile',raw);
%clear old file
clear ('raw')
%to concatenate all the loaded file, try this:
%ALL=cat(1,k0001, k0002, k0003,... )
%A=(raw-BLACK);
%B=(WHITE-BLACK);
%REFL=A./B;


