'reinit'
rec  =read(year.txt)
year=sublin(rec,2)
say year
'sdfopen u1000_'year'.nc'
'sdfopen u925_'year'.nc'
'sdfopen u850_'year'.nc'
'sdfopen u700_'year'.nc'
'sdfopen u500_'year'.nc'
'sdfopen u250_'year'.nc'
'sdfopen u200_'year'.nc'
'sdfopen u100_'year'.nc'

'set x 1 576'
'set y 1 360'
'set t 1 last'
'define ubaro  = ((u.1+u.2)/2*75+(u.2+u.3)/2*75+(u.3+u.4)/2*150+(u.4+u.5)/2*200+(u.5+u.6)/2*250+(u.6+u.7)/2*50+(u.7+u.8)/2*100)/900'
'set sdfwrite -flt ubaro_'year'.nc'
'sdfwrite ubaro'
