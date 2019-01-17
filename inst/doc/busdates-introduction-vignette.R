## ----setup, include = FALSE----------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)
library(busdater)

## ------------------------------------------------------------------------
Sys.Date()
getOption("busdaterFYstart", default = "07-01")

## ------------------------------------------------------------------------
FY()

## ------------------------------------------------------------------------
dt <- as.Date(c("01-01-2018", "15-12-2017"), "%d-%m-%Y")
FY(date = dt[1])
FY(date = dt)

## ------------------------------------------------------------------------
FY(offset_period = 1) # current financial year + 1
FY(date = dt[1], offset_period = 1)
FY(date = dt, offset_period = 1)

## ------------------------------------------------------------------------
FY(offset_period=-1) ## return the previous financial year as integer
FY(date = dt[1], offset_period = -1)
FY(date = dt, offset_period = -1)

## ------------------------------------------------------------------------
Sys.Date()
getOption("busdaterFYstart", default = "07-01")

## ------------------------------------------------------------------------
period_boundaries()
period_boundaries(optFYstart = "07-01")
period_boundaries(optFYstart = "01-03")

## ------------------------------------------------------------------------
period_boundaries(boundary = "last day")



## ------------------------------------------------------------------------
period_boundaries(offset_period = -1, bus_period = "CY", boundary = "last day")

## ------------------------------------------------------------------------
period_boundaries(offset_period = 14, offset_type = "month",
                  bus_period = "M", boundary = "last day")

## ------------------------------------------------------------------------
period_boundaries(as.Date(c("02/27/1992", "09/28/2022"), "%m/%d/%Y"),
                  offset_period = -3, offset_type = "month",
                  bus_period = "FY", boundary = "1st day")

