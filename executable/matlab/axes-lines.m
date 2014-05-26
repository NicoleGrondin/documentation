signin('test-runner', '9h29fe3l0x')

trace1 = struct(...
  'x', [0, 1, 2, 3, 4, 5, 6, 7, 8], ...
  'y', [8, 7, 6, 5, 4, 3, 2, 1, 0]);
trace2 = struct(...
  'x', [0, 1, 2, 3, 4, 5, 6, 7, 8], ...
  'y', [0, 1, 2, 3, 4, 5, 6, 7, 8]);
data = {trace0, trace1};

layout = struct(...
    'xaxis', struct(...
      'showline', true, ...
      'mirror', 'ticks', ...
      'linecolor', '#636363', ...
      'linewidth', 6, ...
      'showgrid', true, ...
      'gridcolor', '#bdbdbd', ...
      'gridwidth', 2, ...
      'zeroline', true, ...
      'zerolinecolor', '#969696', ...
      'zerolinewidth', 4), ...
    'yaxis', struct(...
      'showline', true, ...
      'mirror', 'ticks', ...
      'linecolor', '#636363', ...
      'linewidth', 6, ...
      'showgrid', true, ...
      'gridcolor', '#bdbdbd', ...
      'gridwidth', 2, ...
      'zeroline', true, ...
      'zerolinecolor', '#969696', ...
      'zerolinewidth', 4));

response = plotly(data, struct('layout', layout, 'filename', 'axes-lines', 'fileopt', 'overwrite'));
plot_url = response.url