library(plotly)
p <- plotly(username='test-runner', key='9h29fe3l0x')

trace1 <- list(
  x = c("2013-10-04 22:23:00", "2013-11-04 22:23:00", "2013-12-04 22:23:00"), 
  y = c(1, 3, 6)
)
response <- p$plotly(trace0, kwargs=list(filename="date-axes", fileopt="overwrite"))
url <- response$url
filename <- response$filename