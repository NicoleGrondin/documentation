import plotly.plotly as py
from plotly.graph_objs import *

py.sign_in('test-runner', '9h29fe3l0x')

data = Data([
    Scatter(
        x=[0, 1, 2, 3, 4, 5, 6, 7, 8],
        y=[0, 1, 2, 3, 4, 5, 6, 7, 8]
    )
])

layout = Layout(
    title='Global Font',
    font=Font(
        family='Courier New, monospace',
        size=18,
        color='#7f7f7f'
    )
)

fig = Figure(data=data, layout=layout)
plot_url = py.plot(fig, filename='global-font')