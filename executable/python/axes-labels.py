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
        title='AXIS TITLE',
        showticklabels=True,
        tickangle=45,
        exponentformat='e',
        showexponent='All',
        titlefont=Font(
            family='Arial, sans-serif',
            size=18,
            color='lightgrey'
        ),
        tickfont=Font(
            family='Old Standard TT, serif',
            size=14,
            color='black'
        )
    ),
    yaxis=YAxis(
        title='AXIS TITLE',
        showticklabels=True,
        tickangle=45,
        exponentformat='e',
        showexponent='All',
        titlefont=Font(
            family='Arial, sans-serif',
            size=18,
            color='lightgrey'
        ),
        tickfont=Font(
            family='Old Standard TT, serif',
            size=14,
            color='black'
        )
    )
)

fig = Figure(data=data, layout=layout)
plot_url = py.plot(fig, filename='axes-labels')