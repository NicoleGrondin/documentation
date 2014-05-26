import plotly.plotly as py
from plotly.graph_objs import *

py.sign_in('test-runner', '9h29fe3l0x')

trace1 = Scatter(
    x=[0, 1, 2, 3, 4, 5, 6, 7, 8],
    y=[8, 7, 6, 5, 4, 3, 2, 1, 0]
)
trace2 = Scatter(
    x=[0, 1, 2, 3, 4, 5, 6, 7, 8],
    y=[0, 1, 2, 3, 4, 5, 6, 7, 8]
)
data = Data([trace1, trace2])

layout = Layout(
    xaxis=XAxis(
        tick0=0,
        dtick=0.25,
        ticks='outside',
        ticklen=8,
        tickcolor='#000',
        tickwidth=4,
        autotick=False
    ),
    yaxis=YAxis(
        tick0=0,
        dtick=0.25,
        ticks='outside',
        ticklen=8,
        tickcolor='#000',
        tickwidth=4,
        autotick=False
    )
)

fig = Figure(data=data, layout=layout)
plot_url = py.plot(fig, filename='axes-ticks')