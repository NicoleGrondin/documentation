// Learn about API authentication here: {{BASE_URL}}/nodejs/getting-started
// Find your api_key here: {{BASE_URL}}/settings/api

var plotly = require('plotly')('TestBot', 'r1neazxo9w');
var trace1 = {
  x: [1, 2, 3], 
  y: [4, 5, 6], 
  type: "scatter"
};
var trace2 = {
  x: [20, 30, 40], 
  y: [50, 60, 70], 
  xaxis: "x2", 
  yaxis: "y2", 
  type: "scatter"
};
var data = [trace1, trace2];
var layout = {
  xaxis: {domain: [0, 0.7]}, 
  yaxis2: {anchor: "x2"}, 
  xaxis2: {domain: [0.8, 1]}
};
var graphOptions = {layout: layout, filename: "custom-size-subplot", fileopt: "overwrite"};
plotly.plot(data, graphOptions, function (err, msg) {
    console.log(msg);
});
