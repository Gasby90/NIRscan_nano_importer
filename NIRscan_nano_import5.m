%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%% DLP NIRSCANO NANO Importer V 4.0 %%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%% Riccardo Gasbarrone 2016 %%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%This script allows the importation of multiple NIR scan raw data .csv in 
%MatLab Environment and calculates the real spectra. the correction is applied 
%to spectra and corrected with black and white.
%Files in the directory must not have spaces between digits.
%Use NOSPACE.BAT for eliminating spaces in files name ".csv"
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

files=dir('*.csv');
numfiles=length(files)

for i=1:numfiles
data{i} = ciao3(files(i).name)
end


