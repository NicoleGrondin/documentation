import plotly.plotly as py
from plotly.graph_objs import *

py.sign_in('test-runner', '9h29fe3l0x')

trace1 = Scatter(
    x=[1, 2, 3],
    y=[4, 5, 6],
    name='Experiment',
    marker=Marker(
        symbol='square',
        line=Line(
            color='darkblue',
            width=3
        ),
        size=12,
        color='rgb(54,144,192)',
        opacity=1.0
    ),
    line=Line(
        dash='dot',
        color='rgb(3,78,123)',
        width=6
    )
)
trace2 = Scatter(
    x=[1, 2, 3],
    y=[2, 10, 12],
    name='Control',
    marker=Marker(
        symbol='cross',
        line=Line(
            color='',
            width=0
        ),
        size=16,
        color='fuchsia',
        opacity=0.9
    ),
    line=Line(
        dash='dashdot',
        color='purple',
        width=4
    )
)
data = Data([trace1, trace2])
plot_url = py.plot(data, filename='line-style')