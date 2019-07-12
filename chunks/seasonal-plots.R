# ---- seasonal-plots ----
data("a10", package = "fpp2")
a10 %>%
  forecast::ggseasonplot(year.labels = TRUE, year.labels.left = TRUE) +
  ggplot2::ggtitle("antidiabetic drug sales") + ggplot2::ylab("$ million")

a10 %>%
  forecast::ggseasonplot(polar = TRUE) +
  ggplot2::ggtitle("antidiabetic drug sales") + ggplot2::ylab("$ million")

# ---- seasonal-subseries-plot ----
a10 %>%
  forecast::ggsubseriesplot() +
  ggplot2::ggtitle("antidiabetic drug sales") + ggplot2::ylab("$ million")
