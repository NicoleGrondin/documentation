import plotly.plotly as py
from plotly.graph_objs import *

py.sign_in('test-runner', '9h29fe3l0x')

data = Data([
    Heatmap(
        z=[[0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [0.0, 0.004, 0.006, 0.008, 0.009, 0.01, 0.011, 0.012, 0.013, 0.013, 0.014, 0.015, 0.015, 0.016, 0.017], [0.0, 0.006, 0.009, 0.011, 0.013, 0.014, 0.015, 0.017, 0.018, 0.019, 0.02, 0.021, 0.022, 0.023, 0.024], [0.0, 0.008, 0.011, 0.013, 0.015, 0.017, 0.019, 0.02, 0.022, 0.023, 0.024, 0.026, 0.027, 0.028, 0.029], [0.0, 0.009, 0.013, 0.015, 0.018, 0.02, 0.022, 0.024, 0.025, 0.027, 0.028, 0.029, 0.031, 0.032, 0.033], [0.0, 0.01, 0.014, 0.017, 0.02, 0.022, 0.024, 0.026, 0.028, 0.03, 0.031, 0.033, 0.034, 0.036, 0.037], [0.0, 0.011, 0.015, 0.019, 0.022, 0.024, 0.027, 0.029, 0.031, 0.033, 0.034, 0.036, 0.038, 0.039, 0.041], [0.0, 0.012, 0.017, 0.02, 0.024, 0.026, 0.029, 0.031, 0.033, 0.035, 0.037, 0.039, 0.041, 0.042, 0.044], [0.0, 0.013, 0.018, 0.022, 0.025, 0.028, 0.031, 0.033, 0.036, 0.038, 0.04, 0.042, 0.044, 0.045, 0.047], [0.0, 0.013, 0.019, 0.023, 0.027, 0.03, 0.033, 0.035, 0.038, 0.04, 0.042, 0.044, 0.046, 0.048, 0.05], [0.0, 0.014, 0.02, 0.024, 0.028, 0.031, 0.034, 0.037, 0.04, 0.042, 0.044, 0.047, 0.049, 0.051, 0.053], [0.0, 0.015, 0.021, 0.026, 0.029, 0.033, 0.036, 0.039, 0.042, 0.044, 0.047, 0.049, 0.051, 0.053, 0.055], [0.0, 0.015, 0.022, 0.027, 0.031, 0.034, 0.038, 0.041, 0.044, 0.046, 0.049, 0.051, 0.053, 0.056, 0.058], [0.0, 0.016, 0.023, 0.028, 0.032, 0.036, 0.039, 0.042, 0.045, 0.048, 0.051, 0.053, 0.056, 0.058, 0.06], [0.0, 0.017, 0.024, 0.029, 0.033, 0.037, 0.041, 0.044, 0.047, 0.05, 0.053, 0.055, 0.058, 0.06, 0.062]],
        scl='Blackbody'
    )
])

layout = Layout(
    title='Blackbody'
)

fig = Figure(data=data, layout=layout)
plot_url = py.plot(fig, filename='Blackbody-heatmap')