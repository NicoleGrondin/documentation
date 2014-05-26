using Plotly
Plotly.signin("test-runner", "9h29fe3l0x")

data = [
  [
    "x" => [0, 1, 2], 
    "y" => [1, 1, 1], 
    "name" => "Lines, Markers and Text", 
    "text" => ["Text A", "Text B", "Text C"], 
    "type" => "scatter", 
    "mode" => "lines+markers+text", 
    "textposition" => "top right", 
    "textfont" => [
      "color" => "#1f77b4", 
      "family" => "sans serif", 
      "size" => 18
    ]
  ], 
  [
    "x" => [0, 1, 2], 
    "y" => [2, 2, 2], 
    "name" => "Lines and Text", 
    "text" => ["Text G", "Text H", "Text I"], 
    "type" => "scatter", 
    "mode" => "lines+markers+text", 
    "textposition" => "bottom", 
    "textfont" => [
      "color" => "#ff7f0e", 
      "family" => "sans serif", 
      "size" => 18
    ]
  ]
]

layout = ["showlegend" => false]

response = Plotly.plot([data], ["layout" => layout, "filename" => "text-chart-styling", "fileopt" => "overwrite"])
plot_url = response["url"]