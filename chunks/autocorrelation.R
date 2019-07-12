# ---- correlogram ----
library(forecast)
data("ausbeer", package = "fpp2")
ausbeer %>%
  stats::window(start = 1992) %>%
  forecast::ggAcf()
