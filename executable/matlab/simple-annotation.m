signin('test-runner', '9h29fe3l0x')

trace1 = struct(...
  'x', [0, 1, 2, 3, 4, 5, 6, 7, 8], ...
  'y', [0, 1, 3, 2, 4, 3, 4, 6, 5]);
trace2 = struct(...
  'x', [0, 1, 2, 3, 4, 5, 6, 7, 8], ...
  'y', [0, 4, 5, 1, 2, 2, 3, 4, 2]);
data = {trace0, trace1};

layout = struct(...
    'showlegend', false, ...
    'annotations', { {...
      struct(...
        'text', 'Annotation Text', ...
        'xref', 'x', ...
        'yref', 'y', ...
        'x', 2, ...
        'y', 5, ...
        'ax', 0, ...
        'ay', -40, ...
        'showarrow', true, ...
        'arrowhead', 7)...
    } });

response = plotly(data, struct('layout', layout, 'filename', 'simple-annotation', 'fileopt', 'overwrite'));
plot_url = response.url