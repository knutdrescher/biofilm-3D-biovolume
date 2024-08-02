# Quantification of the 3D biofilm biovolume in images
This code quantifies the fraction of the biovolume in images with height 3 µm above the glass coverslip of a microfluidic chamber. This is achieved by computing the biofilm biovolume above 3 µm and dividing this by the total biofilm biovolume (including biovolume above and below 3 µm height).

**System requirements:**

This code is used as an add-on to the BiofilmQ software, as described below. Running the code requires the previous installation of BiofilmQ ( https://drescherlab.org/data/biofilmQ/docs/ ). It can run on Windows 10 or more recent, MaxOSX, and Linux. It requires Matlab R2017b or more recent, with the Image Processing Toolbox, Curve Fitting Toolbox and Statistics and Machien Learning Toolbox.

The code was written and tested in Matlab R2020a.

**Installation guide:**

For BiofilmQ installation follow the instructions given here: https://drescherlab.org/data/biofilmQ/docs/usage/installation.html
Following the BiofilmQ installation procedure on a normal desktop computer should not take more than a few minutes. 

Download the code for the 3D biofilm biovolume calculation from GitHub (https://github.com/knutdrescher/biofilm-3D-biovolume). You can (optionally) place it in the following folder on your computer:  BiofilmQ/includes/object processing/actions/user-defined parameters

Beyond downloading and placing it in a suitable location on the computer, the code itself requires no additional installation.

**Instructions for testing the code on the demo dataset:**

Download the demo dataset from the Zenodo repository (DOI: 10.5281/zenodo.13166027) with link: https://zenodo.org/records/13166027 

To run the code on the provided demo data:

- Start BiofilmQ and load the data. 
- Select "Parameter based on user-defined Matlab script" in the parameter tab of BiofilmQ. 
- Use the "Browse" button to navigate to the script location OR add its file path into the text field and press enter.
- Run the parameter calculation to complete the quantification.
- To verify the expected output, go to the visualization tab and load the data.
- In the "Files" area on the right, scroll to the right until the field "Biomass3DIndex (a.u.)" is visible. The rows below should read:
[0.088; 0.357; 0.055; 0.429; 0.187; 0.537]

Alternatively, choose "Global biofilm parameters" as the plotting options and select "Frame" for the x-axis and "Biomass3DIndex" for the y-axis. Then plot and verify the numbers above by via the scatter plot.
![alt text](https://github.com/knutdrescher/biofilm-3D-biovolume/blob/main/demo-data-verification-figure.png?raw=true)

The expected run time of this analysis on a "normal" desktop computer depends strongly on the computer hardware, but for a 4-core Intel i7 CPU with 64 GB of RAM memory this takes only a few minutes. 

**Instructions for using the code:**

To run the code on your own data:

- Start BiofilmQ and load the data.
- Segment the biofilm following instructions given in the BiofilmQ documentation (https://drescherlab.org/data/biofilmQ/docs/index.html).
- Select "Parameter based on user-defined Matlab script" in the parameter tab of BiofilmQ. 
- Use the "Browse" button to navigate to the script location OR add its file path into the text field and press enter.
- Run the parameter calculation to complete the quantification.
