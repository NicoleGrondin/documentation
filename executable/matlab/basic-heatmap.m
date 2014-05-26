signin('test-runner', '9h29fe3l0x')

data = {...
  struct(...
    'z', { { {1, 20, 30},{20, 1, 60},{30, 60, 1} } }, ...
    'type', 'heatmap')...
};

response = plotly(data, struct('filename', 'basic-heatmap', 'fileopt', 'overwrite'));
plot_url = response.url