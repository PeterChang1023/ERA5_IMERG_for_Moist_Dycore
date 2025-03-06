#!bin/sh
source ~/.bashrc

rm outfile climatology.nc

cdo19 mergetime ubaro_{2001..2021}.nc outfile
cdo19 ydaymean outfile climatology.nc
cdo19 lowpass,3 climatology.nc climatology_3harmonics.nc
cdo19 ydaysub outfile climatology_3harmonics.nc ubaro_2001_2022_anomaly.nc


# rm outfile climatology.nc
# rm outfile
# rm climatology.nc
#rm climatology_3harmonics.nc

