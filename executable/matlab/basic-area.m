signin('test-runner', '9h29fe3l0x')

trace1 = struct(...
  'x', [1, 2, 3, 4], ...
  'y', [0, 2, 3, 5], ...
  'fill', 'tozeroy');
trace2 = struct(...
  'x', [1, 2, 3, 4], ...
  'y', [3, 5, 1, 7], ...
  'fill', 'tonexty');
data = {trace0, trace1};

response = plotly(data, struct('filename', 'basic-area', 'fileopt', 'overwrite'));
plot_url = response.url