library(plotly)
p <- plotly(username='test-runner', key='9h29fe3l0x')

trace1 <- list(
  x = c(1, 2, 3), 
  y = c(2, 3, 4)
)
trace2 <- list(
  x = c(20, 30, 40), 
  y = c(5, 5, 5), 
  xaxis = "x2", 
  yaxis = "y"
)
trace3 <- list(
  x = c(2, 3, 4), 
  y = c(600, 700, 800), 
  xaxis = "x", 
  yaxis = "y3"
)
trace4 <- list(
  x = c(4000, 5000, 6000), 
  y = c(7000, 8000, 9000), 
  xaxis = "x4", 
  yaxis = "y4"
)

layout <- list(
  xaxis = list(domain = c(0, 0.45)), 
  yaxis = list(domain = c(0, 0.45)), 
  xaxis2 = list(domain = c(0.55, 1)), 
  yaxis3 = list(domain = c(0.55, 1)), 
  xaxis4 = list(
    domain = c(0.55, 1), 
    anchor = "y4"
  ), 
  yaxis4 = list(
    domain = c(0.55, 1), 
    anchor = "x4"
  )
)

response <- p$plotly(trace0, trace1, trace2, trace3, kwargs=list(layout=layout, filename="shared-axes-subplots", fileopt="overwrite"))
url <- response$url
filename <- response$filename