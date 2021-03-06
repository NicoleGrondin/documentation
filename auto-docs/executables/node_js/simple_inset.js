// Learn about API authentication here: {{BASE_URL}}/nodejs/getting-started
// Find your api_key here: {{BASE_URL}}/settings/api

var plotly = require('plotly')('TestBot', 'r1neazxo9w');
var trace1 = {
  x: [1, 2, 3], 
  y: [4, 3, 2], 
  type: "scatter"
};
var trace2 = {
  x: [20, 30, 40], 
  y: [30, 40, 50], 
  xaxis: "x2", 
  yaxis: "y2", 
  type: "scatter"
};
var data = [trace1, trace2];
var layout = {
  yaxis2: {
    domain: [0.6, 0.95], 
    anchor: "x2"
  }, 
  xaxis2: {
    domain: [0.6, 0.95], 
    anchor: "y2"
  }
};
var graphOptions = {layout: layout, filename: "simple-inset", fileopt: "overwrite"};
plotly.plot(data, graphOptions, function (err, msg) {
    console.log(msg);
});
