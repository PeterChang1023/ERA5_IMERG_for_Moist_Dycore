#!bin/sh 

for year in {1979..2023}
do
for level in 1000 925 850 700 500 250 200 100
do
cdo settaxis,${year}-01-01,00:00,24hour /work/DATA/Reanalysis/ERA5/u/u${level}_${year}.nc u${level}_${year}.nc 
done
done