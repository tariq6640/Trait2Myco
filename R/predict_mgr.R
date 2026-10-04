#' Predict Mycorrhizal Growth Response
#'
#' Predict MGR from plant functional traits.
#'
#' @param LDMC Leaf Dry Matter Content
#' @param SLA Specific Leaf Area
#' @param LCC Leaf Carbon Concentration
#' @param LNC Leaf Nitrogen Concentration
#' @param RD Root Diameter
#' @param SRL Specific Root Length
#' @param RTD Root Tissue Density
#' @param SRA Specific Root Area
#' @param RCC Root Carbon Concentration
#' @param RNC Root Nitrogen Concentration
#' @param precipitation Precipitation
#'
#' @return Predicted Mycorrhizal Growth Response
#' @export

predict_mgr <- function(
  LDMC,
  SLA,
  LCC,
  LNC,
  RD,
  SRL,
  RTD,
  SRA,
  RCC,
  RNC,
  precipitation
){

  model <- readRDS(
    system.file(
      'extdata',
      'Trait2Myco_RF_Model.rds',
      package = 'Trait2Myco'
    )
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
