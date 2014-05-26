signin('test-runner', '9h29fe3l0x')

trace1 = struct(...
  'name', 'SF Zoo', ...
  'x', { {'giraffes', 'orangutans', 'monkeys'} }, ...
  'y', [20, 14, 23], ...
  'type', 'bar', ...
  'marker', struct(...
    'color', 'orange', ...
    'line', struct('color', 'grey')));
trace2 = struct(...
  'name', 'LA Zoo', ...
  'x', { {'giraffes', 'orangutans', 'monkeys'} }, ...
  'y', [12, 18, 29], ...
  'type', 'bar', ...
  'marker', struct(...
    'color', 'blue', ...
    'line', struct(...
      'color', 'grey', ...
      'width', 3)));
data = {trace0, trace1};

layout = struct(...
    'title', 'Animal Population', ...
    'barmode', 'group', ...
    'yaxis', struct('title', '# of animals (thousands)'), ...
    'xaxis', struct('type', 'category'), ...
    'categories', { {'giraffes', 'orangutans', 'monkeys'} }, ...
    'bargap', 0.25, ...
    'bargroupgap', 0.3, ...
    'orientation', 'v');

response = plotly(data, struct('layout', layout, 'filename', 'style-bar', 'fileopt', 'overwrite'));
plot_url = response.url