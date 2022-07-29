
<!-- README.md is generated from README.Rmd. Please edit that file -->

# LAYING SEQUENCE AND OCEANOGRAPHIC FACTORS AFFECT EGG SIZE IN SCRIPPS’S MURRELETS *SYNTHLIBORAMPHUS SCRIPPSI* AT SANTA BARBARA ISLAND

## Abstract

Egg size is an important avian life history parameter, with larger eggs
indicating greater investment of resources in the chick. Prey
availability can affect such investment. We investigated the effects of
oceanographic conditions and laying sequence on Scripps’s Murrelet
*Synthliboramphus scrippsi* egg size at Santa Barbara Island, California
during 2009-2017. We evaluated oceanographic covariates characterizing
marine productivity for their effect on egg size, including large-scale
oceanographic indices such as the Pacific Decadal Oscillation (PDO)
index, Oceanic Niño Index (ONI), and North Pacific Gyre Oscillation
(NPGO) index. We also evaluated a larval anchovy catch-per-unit-effort
(ANCHL) index and the Biologically Effective Upwelling Transport Index
(BEUTI) as region-wide indices, and sea surface temperature (SST) as a
local index. We evaluated oceanographic conditions during the entire
year and during the breeding season only and considered lagged effects.
Our results generally ran counter to our hypothesis that increased ocean
productivity should increase egg size. Based on Akaike’s Information
Criterion, the four top-ranked models provided support for an
association between larger eggs and conditions indicative of lower
oceanographic productivity, including lower values of BEUTI and NPGO,
and higher values of ONI, PDO, and SST. The only result that supported
our hypothesis was a positive relationship between ANCHL and egg size,
although the 95% confidence interval for the effect included 0. The
strongest relationship detected was between laying sequence and egg
size, as second eggs were considerably larger than first eggs. Our
results indicate substantial complexity in the relationship between
ocean productivity and seabird demography. A better understanding of how
ocean productivity affects seabird breeding outcomes through multiple
mechanisms will help improve predictions of how seabirds will respond to
changing ocean conditions.

## Citation

TODD ZARAGOZA, M.I., DuVALL, A.J., HOWARD, J.A., MAZURKIEWICZ, D.M. &
CONVERSE, S.J. XXXX. Laying sequence and oceanographic factors affect
egg size in Scripps’s Murrelets Synthliboramphus scrippsi at Santa
Barbara Island. *Marine Ornithology* XX: XX-XX.

## Code

1.  SCMU\_covariates.Rmd: This RMarkdown file contains code to compile
    and clean covariate data and check for correlated predictors, as
    well as code to run single-model selection on the temporal forms of
    covariate data. The knitted PDF is also included.
2.  SCMU\_model.Rmd: This RMarkdown file contains contain code for
    likelihood ratio tests to test inclusion of random effects, model
    selection, and model diagnostics. The knitted PDF is also included.

## Data

Datasets used in this project are all found in the [data](data) folder:

1.  SCMU\_egg\_data.csv: Formatted data to run the linear-mixed model.
    See manuscript for detailed description of data.
2.  The [covariates](covariates) sub folder contains .csv files of
    oceanographic indices from [NOAA’S California Current Integrated
    Ecosystem Assessment
    Program](https://www.integratedecosystemassessment.noaa.gov/regions/california-current/cc-).
