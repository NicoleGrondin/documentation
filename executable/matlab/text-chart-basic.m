signin('test-runner', '9h29fe3l0x')

trace1 = struct(...
  'x', [0, 1, 2], ...
  'y', [1, 1, 1], ...
  'name', 'Lines, Markers and Text', ...
  'text', { {'Text A', 'Text B', 'Text C'} }, ...
  'type', 'scatter', ...
  'mode', 'lines+markers+text', ...
  'textposition', 'top');
trace2 = struct(...
  'x', [0, 1, 2], ...
  'y', [2, 2, 2], ...
  'name', 'Markers and Text', ...
  'text', { {'Text D', 'Text E', 'Text F'} }, ...
  'type', 'scatter', ...
  'mode', 'markers+text', ...
  'textposition', 'bottom');
trace3 = struct(...
  'x', [0, 1, 2], ...
  'y', [3, 3, 3], ...
  'name', 'Lines and Text', ...
  'text', { {'Text G', 'Text H', 'Text I'} }, ...
  'type', 'scatter', ...
  'mode', 'lines+text', ...
  'textposition', 'bottom');
data = {trace0, trace1, trace2};

layout = struct('showlegend', false);

response = plotly(data, struct('layout', layout, 'filename', 'text-chart-basic', 'fileopt', 'overwrite'));
plot_url = response.url