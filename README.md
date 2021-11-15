# London_heatwaves
The Jupyter notebook named London_heatwaves.ipynb contains the following steps: 
1. Load up and inspect the raster dataset given. 
2. Calculate the annual longest heatwave length for each year and each grid-cell in the given raster dataset, where the annual longest heatwave length is defined to be: The maximum number of consecutive days in a year where the daily maximum temperature exceeds the location-specific threshold temperature T. The location-specific threshold temperature T is defined to be the 95th percentile of the distribution of all historic daily maximum temperatures for the location of interest.

3. Describe, and if possible implement, a procedure to test whether there is a statistically significant upward trend in the length of heatwaves in **any** of the grid-cells.

The matlab script named Heatwaves_calculations.m contains the data processing: 
4. Mean, standard deviation, and maximum of the distribution of annual longest heatwave lengths across all years and all grid-cells. 
