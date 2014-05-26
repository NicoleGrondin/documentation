library(plotly)
p <- plotly(username='test-runner', key='9h29fe3l0x')

trace1 <- list(
  x = c(0, 1, 2, 3, 4, 5, 6, 7, 8), 
  y = c(0, 1, 3, 2, 4, 3, 4, 6, 5)
)
trace2 <- list(
  x = c(0, 1, 2, 3, 4, 5, 6, 7, 8), 
  y = c(0, 4, 5, 1, 2, 2, 3, 4, 2)
)

layout <- list(
  showlegend = FALSE, 
  annotations = list(
    list(
      text = "Annotation Text", 
      xref = "x", 
      yref = "y", 
      x = 2, 
      y = 5, 
      ax = 0, 
      ay = -40, 
      showarrow = TRUE, 
      arrowhead = 7
    )
  )
)

response <- p$plotly(trace0, trace1, kwargs=list(layout=layout, filename="simple-annotation", fileopt="overwrite"))
url <- response$url
filename <- response$filename