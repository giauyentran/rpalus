# R. Palustris Growth on Compost Wastewater

This repository houses data and other documentation for our[^1] microbiology research on *Rhodopseudomonas Palustris* growth in compost wastewater.

The internal lab notebook can be found [here](https://docs.google.com/document/d/1SOqzYwR8vw1G63B1FhWva9cjiQ9yb5N3NUnESmykB04/edit?usp=sharing). All data analysis and visualization is done in MATLAB.

## File Structure
The main folder includes the MATLAB function `fit_data.m`. This function fits the log phase of the experimental data to an exponential function. It then graphs the experimental data and its fit function. It also calculates yield and growth. For more information, see the function documentation in the header of the file.

The remaining folders contain documentation for each experiment, including raw data and analysis in a MATLAB Live script.

## Data Analysis
For each experiment, the same general methods were conducted:
1. Extract experimental data from the .csv file
2. Graph growth on a linear horizontal and logarithmic vertical axis (Optical Density vs Time in hours)
3. From these graphs, extract the log phase of the growth. In this phase, the graph will appear linear on the logarithmic vertical axis.
4. Use the `fit_data.m` function to find the fit function, growth rate, and yield for each sample.
5. If necessary, average growth rates and yields of matching samples.

[^1]: Aaron Codrington, Maya McKone-Sweet, Gia-Uyen Tran under the supervision of Jean Huang @ Olin College of Engineering
