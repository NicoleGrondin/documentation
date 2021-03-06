// Learn about API authentication here: {{BASE_URL}}/nodejs/getting-started
// Find your api_key here: {{BASE_URL}}/settings/api

var plotly = require('plotly')('TestBot', 'r1neazxo9w');
var data = [
  {
    z: [[1, 20, 30, 50, 1], [20, 1, 60, 80, 30], [30, 60, 1, -10, 20]], 
    x: ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday"], 
    y: ["Morning", "Afternoon", "Evening"], 
    type: "heatmap"
  }
];
var graphOptions = {filename: "labelled-heatmap", fileopt: "overwrite"};
plotly.plot(data, graphOptions, function (err, msg) {
    console.log(msg);
});
