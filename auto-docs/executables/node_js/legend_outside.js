// Learn about API authentication here: {{BASE_URL}}/nodejs/getting-started
// Find your api_key here: {{BASE_URL}}/settings/api

var plotly = require('plotly')('TestBot', 'r1neazxo9w');
var trace1 = {
  x: [0, 1, 2, 3, 4, 5, 6, 7, 8], 
  y: [0, 3, 6, 4, 5, 2, 3, 5, 4], 
  type: "scatter"
};
var trace2 = {
  x: [0, 1, 2, 3, 4, 5, 6, 7, 8], 
  y: [0, 4, 7, 8, 3, 6, 3, 3, 4], 
  type: "scatter"
};
var data = [trace1, trace2];
var layout = {
  showlegend: true, 
  legend: {
    x: 100, 
    y: 1
  }
};
var graphOptions = {layout: layout, filename: "legend-outside", fileopt: "overwrite"};
plotly.plot(data, graphOptions, function (err, msg) {
    console.log(msg);
});
