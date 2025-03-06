#!bin/sh
source ~/.bashrc
path="/work/DATA/Satellite/IMERG_daily"
#for year in $(seq 2001 2022)

rm outfile
rm climatology.nc
rm climatology_3harmonics.nc

cdo mergetime /work/DATA/Satellite/IMERG_daily/IMERG_{2001..2021}.nc  outfile
cdo ydaymean outfile climatology.nc
cdo lowpass,3 climatology.nc climatology_3harmonics.nc
cdo ydaysub outfile climatology_3harmonics.nc precipitation_2001_2021_anomaly.nc




