library(plotly)
library(ggplot2)
library("ggthemes")

py <- plotly("R-demos", "p9g4f35ytd")

dsamp <- diamonds[sample(nrow(diamonds), 1000), ]
gray <- (qplot(carat, price, data = dsamp, colour = cut) +
           theme_igray())

out <- py$ggplotly(gray)
plotly_url <- out$response$url