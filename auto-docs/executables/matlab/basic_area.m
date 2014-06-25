signin('TestBot', 'r1neazxo9w')

trace1 = struct(...
  'x', [1, 2, 3, 4], ...
  'y', [0, 2, 3, 5], ...
  'fill', 'tozeroy', ...
  'type', 'scatter');
trace2 = struct(...
  'x', [1, 2, 3, 4], ...
  'y', [3, 5, 1, 7], ...
  'fill', 'tonexty', ...
  'type', 'scatter');
data = {trace1, trace2};

response = plotly(data, struct('filename', 'basic-area', 'fileopt', 'overwrite', 'auto_open', 'false'));
plot_url = response.url