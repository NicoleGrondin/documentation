var x0 = Math.random() * 500
var x1 = Math.random() * 500 + 1

var trace1 = {
  x: x0, 
  type: "histogram"
};
var trace2 = {
  x: x1, 
  type: "histogram"
};
var data = [trace1, trace2];
var layout = {barmode: "stacked"};
Plotly.plot(divid, data, layout);