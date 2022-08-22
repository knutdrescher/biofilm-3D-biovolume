%%% This function calculates and saves the biofilm biovolume fraction of
%%% cells  above (1+maxZ) um compared to all cells. The brightest slice
%%% is assumed to be present at 1 um above the substrate

maxZ = 2; %value to add to brightest slice (in um)

% the following can be manually set to be equivalent to 1 um if necessary.
% If it is set to 0, the brightest slice will be detected automatically
% (see code below)
imagesliceID = 0; 
% take scaling into account
sliceID = round(imagesliceID * objects.params.scaling_dz/objects.params.scaling_dxy); 


% obtain segmentation as a matrix
w = labelmatrix(objects);

%finds the brightest slice
if imagesliceID == 0
    sumZ = squeeze(sum(sum(w>0,1),2));
    [~,sliceID] = max(sumZ);  
    objects.globalMeasurements.BrightestZ = round(sliceID*objects.params.scaling_dxy/objects.params.scaling_dz); 
    display (objects.globalMeasurements.BrightestZ) %displays the brightest slice (Z slice number)
end

% set slice ID for (1+maxZ)um
sliceID_max = sliceID + round(1000*maxZ / objects.params.scaling_dxy);

% calculate biomass
total_biomass = sum(w(:) > 0);
biomass_above_3um = sum(w(:, :, sliceID_max:end) > 0, 'all');

%save properties
objects.globalMeasurements.Biomass = total_biomass;
objects.globalMeasurements.Biomass3D = biomass_above_3um;
objects.globalMeasurements.Biomass3DIndex = biomass_above_3um/total_biomass;


