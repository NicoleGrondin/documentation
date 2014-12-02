// Learn about API authentication here: plot.ly/nodejs/getting-started
// Find your api_key here: plot.ly/settings/api

var plotly = require('plotly')('TestBot', 'r1neazxo9w')


var data = [
  {
    x: [1, 2], 
    y: [1, 2], 
    type: "scatter"
  }
];
var layout = {xaxis: {autorange: "reversed"}};
var graphOptions = {layout: layout, filename: "axes-reversed", fileopt: "overwrite"};
plotly.plot(data, graphOptions, function (err, msg) {
    console.log(msg);
});