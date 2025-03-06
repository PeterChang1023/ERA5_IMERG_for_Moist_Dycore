#!/bin/bash

# Ensure two input files are provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 file1.nc file2.nc"
    exit 1
fi

# Input files
FILE1=$1
FILE2=$2

# Output file (corrected time)
OUTPUT_FILE="file2_aligned.nc"

echo "Extracting initial timestamps..."

# Extract first time value from both files
TIME1=$(cdo showtime "$FILE1" | head -n 1 | awk '{print $1}')
TIME2=$(cdo showtime "$FILE2" | head -n 1 | awk '{print $1}')

# Convert times to seconds since 1970 (UNIX time)
TIME1_EPOCH=$(date -d "$TIME1" +%s 2>/dev/null)
TIME2_EPOCH=$(date -d "$TIME2" +%s 2>/dev/null)

# Check if conversion was successful
if [ -z "$TIME1_EPOCH" ] || [ -z "$TIME2_EPOCH" ]; then
    echo "Error: Failed to convert timestamps. Check the time format in your NetCDF files."
    exit 1
fi

# Compute the time difference
TIME_DIFF=$((TIME1_EPOCH - TIME2_EPOCH))

# Apply the calculated shift
echo "Shifting time in $FILE2 by ${TIME_DIFF} seconds..."
cdo shifttime,${TIME_DIFF}seconds "$FILE2" "$OUTPUT_FILE"

echo "Checking time labels after alignment..."
cdo showtime "$OUTPUT_FILE"

echo "Time alignment completed. The corrected file is saved as $OUTPUT_FILE"

