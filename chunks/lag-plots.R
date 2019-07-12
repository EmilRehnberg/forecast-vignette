# ---- lag-plot ----
fpp2::ausbeer %>%
  stats::window(start = 1992) %>%
  forecast::gglagplot()
