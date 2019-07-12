# ---- comparing-ts-plots ----
data("elecdemand", package = "fpp2")
elecdemand[, c("Demand", "Temperature")] %>%
  ggplot2::autoplot(facets = TRUE) +
  ggplot2::ggtitle("Electrical demand (half-hourly)") +
  ggplot2::xlab("Year 2014") + ggplot2::ylab("")

data("visnights", package = "fpp2")
visnights[, 1:5] %>%
  ggplot2::autoplot(facets = TRUE) +
  ggplot2::ggtitle("Quarterly visitor nights in five regions of NSW, Australia") +
  ggplot2::xlab("Time") + ggplot2::ylab("(million) visits")

visnights[, 1:5] %>%
  as.data.frame() %>%
  GGally::ggpairs()

# ---- scatter-plot ----
data("elecdemand", package = "fpp2")
elecdemand %>%
  as.data.frame() %>%
  ggplot2::qplot(Temperature, Demand, data = .) +
  ggplot2::ggtitle("2014 Temp vs Electrical Demand") +
  ggplot2::xlab("Celsius") + ggplot2::ylab("GW")
