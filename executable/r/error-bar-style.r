library(plotly)
p <- plotly(username='test-runner', key='9h29fe3l0x')

x_theo <- seq(-4,4,length=100)
sincx <- sinc(x_theo)
x <- c(-3.8, -3.03, -1.91, -1.46, -0.89, -0.24, -0.0, 0.41, 0.89, 1.01, 1.91, 2.28, 2.79, 3.56)
y <- c(-0.02, 0.04, -0.01, -0.27, 0.36, 0.75, 1.03, 0.65, 0.28, 0.02, -0.11, 0.16, 0.04, -0.15)

trace1 <- list(
  name = "sinc(x)", 
  type = "scatter", 
  x = x_theo, 
  y = sincx
)
trace2 <- list(
  name = "measured", 
  mode = "markers", 
  x = x, 
  y = y, 
  error_x = list(
    color = "#85144B", 
    opacity = 1, 
    thickness = 1.5, 
    type = "constant", 
    value = 0.2, 
    width = 3
  ), 
  error_y = list(
    color = "#85144B", 
    opacity = 1, 
    thickness = 1.5, 
    type = "constant", 
    value = 0.1, 
    width = 3
  ), 
  marker = list(
    color = "#85144B", 
    size = 8
  )
)
response <- p$plotly(trace0, trace1, kwargs=list(filename="error-bar-style", fileopt="overwrite"))
url <- response$url
filename <- response$filename