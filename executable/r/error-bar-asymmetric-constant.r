library(plotly)
p <- plotly(username='test-runner', key='9h29fe3l0x')

trace1 <- list(
  x = c(1, 2, 3, 4), 
  y = c(2, 1, 3, 4), 
  error_y = list(
    symmetric = FALSE, 
    value = 15, 
    valueminus = 25, 
    type = "percent"
  )
)
response <- p$plotly(trace0, kwargs=list(filename="error-bar-asymmetric-constant", fileopt="overwrite"))
url <- response$url
filename <- response$filename