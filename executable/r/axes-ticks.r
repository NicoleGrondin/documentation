library(plotly)
p <- plotly(username='test-runner', key='9h29fe3l0x')

trace1 <- list(
  x = c(0, 1, 2, 3, 4, 5, 6, 7, 8), 
  y = c(8, 7, 6, 5, 4, 3, 2, 1, 0)
)
trace2 <- list(
  x = c(0, 1, 2, 3, 4, 5, 6, 7, 8), 
  y = c(0, 1, 2, 3, 4, 5, 6, 7, 8)
)

layout <- list(
  xaxis = list(
    autotick = FALSE, 
    tick0 = 0, 
    dtick = 0.25, 
    ticks = "outside", 
    tickcolor = "#000", 
    ticklen = 8, 
    tickwidth = 4
  ), 
  yaxis = list(
    autotick = FALSE, 
    tick0 = 0, 
    dtick = 0.25, 
    ticks = "outside", 
    tickcolor = "#000", 
    ticklen = 8, 
    tickwidth = 4
  )
)

response <- p$plotly(trace0, trace1, kwargs=list(layout=layout, filename="axes-ticks", fileopt="overwrite"))
url <- response$url
filename <- response$filename