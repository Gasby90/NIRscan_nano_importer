# NIRscan_nano_importer
This tool allows the importation of multiple scan raw data .csv, acquired with DLP® NIRscan™ Nano Evaluation Module (Texas Instruments Incorporated), in MatLab Environment
and calculates the real spectra. 

For multiple scans included in a unique .csv file use NIRscan_nano_import.m aided by importfile3.m. When acquiring the spectra using the DLP NIRSCANO NANO spectrometer for calculating the effective reflectance spectra, the following procedure must be followed:
1.	Acquire sample spectrum (i.e raw);
2.	Acquire dark reference (i.e dark);
3.	Acquire white reference using a diffuse reflectance disk (i.e. white).


For multiple .csv files, with similar calibration files (black and white) use NIRscan_nano_import5.m  aided by ciao3.m.  Correction is applied to spectra and corrected with black BLACK.mat and white WHITE.mat. Files in the directory must not have spaces between digits. Use NOSPACE.BAT for eliminating spaces in files name ".csv".
