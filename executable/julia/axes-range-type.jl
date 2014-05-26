using Plotly
Plotly.signin("test-runner", "9h29fe3l0x")

data = [
  [
    "x" => [0, 1, 2, 3, 4, 5, 6, 7, 8], 
    "y" => [8, 7, 6, 5, 4, 3, 2, 1, 0]
  ], 
  [
    "x" => [0, 1, 2, 3, 4, 5, 6, 7, 8], 
    "y" => [0, 1, 2, 3, 4, 5, 6, 7, 8]
  ]
]

layout = [
  "xaxis" => [
    "autorange" => true, 
    "type" => "log"
  ], 
  "yaxis" => [
    "autorange" => true, 
    "type" => "log"
  ]
]

response = Plotly.plot([data], ["layout" => layout, "filename" => "axes-range-type", "fileopt" => "overwrite"])
plot_url = response["url"]