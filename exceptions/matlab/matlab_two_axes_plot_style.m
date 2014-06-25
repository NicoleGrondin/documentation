signin('TestBot', 'r1neazxo9w')

%domain 
x0 = -2; 
xf = 2; 
%sampling rate
fs = 1000; 
%independent variable x 
x = linspace(x0,xf,fs); 
sig1 = abs(sin(x).*exp(x)); 
sig1log = log(sig1); 

%create a figure object
fig = figure('Color','w'); 
%plotyy
[ax, s1h1 s1h2] = plotyy(x,sig1,x,sig1,'plot','semilogy'); 
%sig1 color
sig1col = [0 200 90]/255; 
%sig1log color
sig1logcol = [210 30 50]/255; 
%style the plot
set(s1h1,'Color',sig1col,'LineWidth',5); 
set(s1h2,'Color',sig1logcol,'LineWidth',5); 
set(ax(1),'YColor',sig1col); 
set(ax(2),'YColor',sig1logcol); 

%x-axis and y-axis labels
xlabel('$x$','Interpreter','latex'); 
set(get(ax(1),'Ylabel'),'String','$\mbox{y (linear)}$','Interpreter','latex') 
set(get(ax(2),'Ylabel'),'String','$\mbox{y (log)}$','Interpreter','latex')

%add annaotation 
text(-1,5,'$y = |sin(x)e^{x}|$','Interpreter','latex');

%add legend
leg = legend('$\mbox{y(linear)}$ ','$\mbox{y(log)}$ ', 'Location', 'NorthWest'); 
set(leg,'Interpreter','latex'); 

%grid
grid on 

% PLOTLY 
response = fig2plotly(fig);
plotly_url = response.url;

