using Plotly
Plotly.signin("test-runner", "9h29fe3l0x")

data = [
  [
    "x" => [0, 1, 2, 3, 4, 5], 
    "y" => [1.5, 1, 1.3, 0.7, 0.8, 0.9], 
    "type" => "scatter"
  ], 
  [
    "x" => [0, 1, 2, 3, 4, 5], 
    "y" => [1, 0.5, 0.7, -1.2, 0.3, 0.4], 
    "type" => "bar"
  ]
]

response = Plotly.plot([data], ["filename" => "bar-line", "fileopt" => "overwrite"])
plot_url = response["url"]