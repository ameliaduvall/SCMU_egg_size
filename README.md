# EGG ORDER AND OCEANOGRAPHIC FACTORS DRIVE EGG SIZE DIFFERENCES IN SCRIPPS’S MURRELETS *SYNTHLIBORAMPHUS SCRIPPSI* AT SANTA BARBARA ISLAND, CALIFORNIA, USA

## Abstract
Egg size is an important avian life history parameter, with larger eggs indicating greater investment of resources in the chick. Oceanic conditions are known to affect multiple life history parameters in seabirds, but the degree to which egg size responds to environmental conditions has been studied only rarely. We investigated the effects of oceanographic conditions and egg order on Scripps’s Murrelet *Synthliboramphus scrippsi* (SCMU) egg size at Santa Barbara Island, California, USA, using data from 2009-2017. Environmental covariates characterizing marine productivity were evaluated for their effect on egg size. We evaluated large-scale oceanographic indices, including the Pacific Decadal Oscillation (PDO) index, the Oceanic Niño Index (ONI), and the North Pacific Gyre Oscillation (NPGO) index. Larval anchovy catch-per-unit-effort (ANCHL) indices and the Biologically Effective Upwelling Transport Index (BEUTI) were used as region-wide indices, and sea surface temperature (SST) was used as a local covariate. We evaluated the effects of oceanographic conditions during the entire year and breeding season only and considered lagged effects. We also accounted for egg order as a fixed effect and plot as a random effect. Our results ran counter to our hypothesis that increased ocean productivity should increase egg size. Based on Akaike’s Information Criterion, the four top-ranked models provided support for negative relationships between egg size and both BEUTI and NPGO and positive relationships between egg size and ONI, PDO, and SST. The only result that supported our a priori prediction was a positive relationship between ANCHL and egg size, although the 95% confidence interval for the effect included 0. The strongest relationship detected was between egg order and egg size, with the second eggs being considerably larger than the first eggs laid. Our results are indicative of substantial complexity in the relationship between ocean productivity and seabird demography. A better understanding of how ocean productivity influences seabird breeding outcomes through multiple mechanisms would help to improve predictions of how seabirds will respond to changing ocean conditions. 

## Citation
TBD

## Code
1. SCMU_covariates.Rmd: This RMarkdown file contains code to compile and clean covariate data and check for correlated predictors, as well as code to run single-model selection on the temporal forms of covariate data. The knitted PDF is also included. 
3. SCMU_model.Rmd: This RMarkdown file contains contain code for likelihood ratio tests to test inclusion of random effects, model selection, and model diagnostics. The knitted PDF is also included. 

## Data
Datasets used in this project are all found in the [data](data) folder:

1. SCMU_egg_data.csv: Formatted data to run the linear-mixed model. See manuscript for detailed description of data.
2. The [covariates](covariates) sub folder contains .csv files of oceanographic indices from [NOAA'S California Current Integrated Ecosystem Assessment Program](https://www.integratedecosystemassessment.noaa.gov/regions/california-current/cc-). 

