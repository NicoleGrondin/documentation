// Learn about API authentication here: {{BASE_URL}}/nodejs/getting-started
// Find your api_key here: {{BASE_URL}}/settings/api

var x = [];
var y = [];

for (var i = 0; i < 500; i ++) {
	x[i] = Math.random();
	y[i] = Math.random() + 1;
}

var plotly = require('plotly')('TestBot', 'r1neazxo9w');
var data = [
  {
    x: x, 
    y: y, 
    histnorm: "probability", 
    autobinx: false, 
    xbins: {
      start: -3, 
      end: 3, 
      size: 0.1
    }, 
    autobiny: false, 
    ybins: {
      start: -2.5, 
      end: 4, 
      size: 0.1
    }, 
    colorscale: [["0", "rgb(12,51,131)"], ["0.25", "rgb(10,136,186)"], ["0.5", "rgb(242,211,56)"], ["0.75", "rgb(242,143,56)"], ["1", "rgb(217,30,30)"]], 
    type: "histogram2d"
  }
];
var graphOptions = {filename: "2d-histogram-options", fileopt: "overwrite"};
plotly.plot(data, graphOptions, function (err, msg) {
    console.log(msg);
});
