# ERA5_IMERG_for_Moist_Dycore

## Overview
This repository checks the consistency of theoretical predictions in **Moist Dycore** with observational data from **ERA5** and **IMERG** precipitation datasets.

## Data Description
- **Year Range:** 2001–2022
- **U-Wind Data:** ERA5 daily data
- **IMERG Data:** Originally 30-minute HDF5 files, transformed into daily files
- **Transformation Script:** `Paper2/IMERG_from_kai/Save_HDF5_to_daily_nc.ipynb` converts IMERG files from 30-minute intervals to daily aggregates.

## Prerequisites
Before running the scripts, ensure **GrADS** is installed. GrADS is executed using C, making it significantly faster than Python for certain operations.

## Running the Analysis
Follow these steps to execute the scripts:

### **Step 0: Convert IMERG Files from 30-Minute Intervals to Daily Data**
```ipython 
ipython Paper2/IMERG_from_kai/Save_HDF5_to_daily_nc.ipynb
```

### **Step 0.5: Remove Seasonal Cycle**
- **For Precipitation:** `Paper2/IMERG_from_kai/anomaly.sh`
- **For U-Wind:** `Paper2/Reanalysis/u_kai/anomaly.sh`

Run the following command:
```sh
sh anomaly.sh
```

### **Step 1: Run the Shell Script**
Execute the following command in the terminal:
```sh
sh run.sh
```

### **Step 2: Execute GrADS Script**
After running the shell script, execute the GrADS script:
```sh
grads -bpc "run integrate.gs"
```

### **About `integrate.gs`**
- Written in **GrADS**
- Processes **8 layers per year**
- Calculates the **barotropic u-wind** using a weighted average equation:
  ```
  ubaro = ...
  ```

## Citation
If you use this repository, please cite relevant sources for ERA5, IMERG, and Moist Dycore theory.

## Contact
For any issues or questions, feel free to open an issue or reach out via email.

