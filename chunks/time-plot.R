# ---- time-plots ----
data("melsyd", package = "fpp2")
melsyd[, "Economy.Class"] %>%
  autoplot() +
  ggtitle("Economy class passengers: Melbourne-Sydney") +
  xlab("Year") + ylab("Thousands")

data("a10", package = "fpp2")
a10 %>%
  ggplot2::autoplot() +
  ggplot2::ggtitle("antidiabetic drug sales") + ggplot2::xlab("Year") + ggplot2::ylab("$ Million")
