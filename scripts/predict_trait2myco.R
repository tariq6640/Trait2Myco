predict_mgr <- function(
  SLA,
  SRA,
  RCC,
  precipitation,
  LDMC = 0,
  LCC = 0,
  LNC = 0,
  RD = 0,
  SRL = 0,
  RTD = 0,
  RNC = 0
){

  model <- readRDS(
    "data/Trait2Myco_RF_Model.rds"
  )

  newdata <- data.frame(
    LDMC = LDMC,
    SLA = SLA,
    LCC = LCC,
    LNC = LNC,
    RD = RD,
    SRL = SRL,
    RTD = RTD,
    SRA = SRA,
    RCC = RCC,
    RNC = RNC,
    precipitation = precipitation
  )

  predict(model, newdata)
}
