using Plotly
Plotly.signin("test-runner", "9h29fe3l0x")

data = [
  [
    "x" => [1, 2, 3], 
    "y" => [4, 3, 2]
  ], 
  [
    "x" => [20, 30, 40], 
    "y" => [30, 40, 50], 
    "xaxis" => "x2", 
    "yaxis" => "y2"
  ]
]

layout = [
  "xaxis2" => [
    "domain" => [0.6, 0.95], 
    "anchor" => "y2"
  ], 
  "yaxis2" => [
    "domain" => [0.6, 0.95], 
    "anchor" => "x2"
  ]
]

response = Plotly.plot([data], ["layout" => layout, "filename" => "simple-inset", "fileopt" => "overwrite"])
plot_url = response["url"]