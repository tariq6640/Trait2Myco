# Trait2Myco

Trait2Myco is an R package for predicting mycorrhizal growth response (MGR) using plant functional traits and environmental variables.

## Installation

```r
install.packages("remotes")

remotes::install_github(
  "tariq6640/Trait2Myco"
)
```

## Example

```r
library(Trait2Myco)

predict_mgr(
  LDMC = 150,
  SLA = 25,
  LCC = 4.2,
  LNC = 0.45,
  RD = 0.25,
  SRL = 650,
  RTD = 0.03,
  SRA = 3200,
  RCC = 4.5,
  RNC = 0.18,
  precipitation = 800
)
```

## Authors

Tariq Shah, Mohamed Akram Errahmouni, Mohamed Hijri 
## Citation

Shah et al. (in preparation)
