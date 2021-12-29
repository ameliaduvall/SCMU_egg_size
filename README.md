
<!-- README.md is generated from README.Rmd. Please edit that file -->

# EGG ORDER AND OCEANOGRAPHIC FACTORS DRIVE EGG SIZE DIFFERENCES IN SCRIPPS’S MURRELETS *SYNTHLIBORAMPHUS SCRIPPSI* AT SANTA BARBARA ISLAND, CALIFORNIA, USA

## Abstract

Egg size is an important avian life history parameter, with larger eggs indicating greater investment of resources in the chick. Oceanographic conditions are known to affect multiple life history parameters in seabirds, but the degree to which egg size responds to environmental conditions has rarely been studied. We investigated the effects of oceanographic conditions and egg order on Scripps’s Murrelet *Synthliboramphus scrippsi* egg size at Santa Barbara Island, California, USA from 2009-2017. We evaluated environmental covariates characterizing marine productivity for their effect on egg size. We evaluated large-scale oceanographic indices, including the Pacific Decadal Oscillation (PDO) index, Oceanic Niño Index (ONI), and North Pacific Gyre Oscillation (NPGO) index. We also evaluated a larval anchovy catch-per-unit-effort (ANCHL) index and the Biologically Effective Upwelling Transport Index (BEUTI) as region-wide indices, and sea surface temperature (SST) as a local index. We considered the effects of oceanographic conditions during the entire year and during the breeding season only and considered lagged effects. Our results generally ran counter to our hypothesis that increased ocean productivity should increase egg size. Based on Akaike’s Information Criterion, the four top-ranked models provided support for an association between larger eggs and conditions indicative of lower oceanographic productivity, including lower values of BEUTI and NPGO, and higher values of ONI, PDO, and SST. The only result that supported our hypothesis was a positive relationship between ANCHL and egg size, although the 95% confidence interval for the effect included 0. The strongest relationship detected was between egg order and egg size, as second eggs were considerably larger than first eggs. Our results indicate substantial complexity in the relationship between ocean productivity and seabird demography. A better understanding of how ocean productivity influences seabird breeding outcomes through multiple mechanisms will help improve predictions of how seabirds will respond to changing ocean conditions. 

## Citation

TBD

## Code
All R scripts required to run this analysis can be found in the [code](code) folder:

1.  SCMU\_covariates.Rmd: This RMarkdown file contains code to compile
    and clean covariate data and check for correlated predictors, as
    well as code to run single-model selection on the temporal forms of
    covariate data. The knitted PDF is also included.
2.  SCMU\_model.Rmd: This RMarkdown file contains contain code for
    likelihood ratio tests to test inclusion of random effects, model
    selection, and model diagnostics. The knitted PDF is also included.
    
### Session Information
R version 4.1.1 (2021-08-10)  
Platform: x86_64-w64-mingw32/x64 (64-bit)  
Running under: Windows 10 x64 (build 18363)  

## Data

Datasets used in this project are all found in the [data](data) folder:

1.  SCMU\_egg\_data.csv: Formatted data to run the linear-mixed model.
    See manuscript for detailed description of data.
2.  The [covariates](covariates) sub folder contains .csv files of
    oceanographic indices from [NOAA’S California Current Integrated
    Ecosystem Assessment
    Program](https://www.integratedecosystemassessment.noaa.gov/regions/california-current/cc-).

## Results
The [results](results) folder contains the knitted RMarkdown PDFs from the [code](code) folder:
1.  SCMU\_covariates.pdf
2.  SCMU\_model.pdf
