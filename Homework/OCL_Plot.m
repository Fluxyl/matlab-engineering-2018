% File Name: OCL_Plot.mat
% --------------------------------------------------------------------------
% Fluxyl
% Engineering Computations with MATLAB
% MATLAB for Engineering
% {Teacher name removed for privacy}
% 
% Start Date: 09/26/2018
% Last Revised On: 09/26/2018
% 
% Purpose:
%             
% Variable List:
%
%
clc
clear
clf
fprintf('Starting code...\n');
%-----Input----------------------------------------------------------------

t1 = linspace(0,2,500);
t2 = linspace(0,2,250);
e1 = exp(-t1);
e2 = exp(-2*t1);
e3 = exp(-3*t1);
s1 = sin(2*pi*4*t1);
c1 = cos(2*pi*3*t2);
c2 = cos(2*pi*4*t2);
c3 = cos(2*pi*5*t2);
fig1 = figure(1);
subplot(1,1,1);
axfig1 = fig1.CurrentAxes;

%-----Processing-----------------------------------------------------------

plot1 = plot(e1,t1,'b','LineWidth',2);
%Label the axis labels
xlabel('t (sec)','FontSize',16,'FontName','Arial');
ylabel('e^-t (m)','FontSize',16,'FontName','Arial');
title('Exponential Decay','FontSize',20,'FontName','Arial');
savefig('Figure3a');

%Create a line plot of s1 vs. t1 with a red line (no data markers) that has
%a thickness of 2 points. Label the horizontal axis as "t (sec)" and the
%vertical axis as "sin (8pt) (m)
fig2 = figure(2);
plot2 = plot(t1, s1,'r');
xlabel('t (sec)');
ylabel('sin(8pt) (m)');
title('A Simple Sine Function','FontSize',20);
savefig('Figure3b');

%Create a line plot that shows e1, s1, and (e1 * s1) compared to t1, where
%all lines have different colors and a thickness of 2 points.
fig3 = figure(3)'
plot3L1 = plot(t1,e1,'r','LineWidth',2);
hold on
plot3L2 = plot(t1,s1,'g','LineWidth',2);
plot3L3 = plot(t1,(e1.*s1),'b','LineWidth',2);
hold off
xlabel('t (sec)','FontSize',16,'FontName','Arial');
ylabel('Amplitude (m)','FontSize',16,'FontName','Arial');
title('Decaying Oscillations','FontSize',20);
savefig('Figure3c');

%Create a plot that shows c1 vs. t2 with no line but with upright
%triangles as data markers. The triangles should be red and have a size of
%8 points. Label the horizontal axis as "t (sec)" and the vertical axis as
%"cos(6pt) (m)". The font for the axis labels should be 16 pt Times New
%Roman. The title of the plot should be "A Simple Cosine Function" and
%should be in 20 pt Times New Roman font. Save the figure as Figure4a.fig.

fig4 = figure(4);
plot4 = plot(t2,c1,'^','MarkerEdgeColor','red','MarkerSize',8);
xlabel('t (sec)','FontSize',16,'FontName','Times New Roman');
ylabel('cos(6pt) (m)','FontSize',16,'FontName','Times New Roman');
title('A Simple Cosine Function','FontSize',20);
savefig('Figure4a');

%Create a plot that shows c2 vs. t2 with a black line and squares as data
%markers. The squares should have a size of 8 points and an interior color
%of orange. Label the horizontal axis as "t (sec)" and the vertical axis as
%"cos(8pt) (m)". The font for the axis labels should be 16 pt Times New
%Roman. The title of the plot should be "Another Simple Cosine Function"
%and should be in 20 pt Times New Roman font. Save the figure as
%Figure4b.fig
fig5 = figure(5);
plot(t2,c2,'-s','MarkerSize',8,'MarkerEdgeColor',[1 0.5 0]);
xlabel('t (sec)','FontSize',16,'FontName','Times New Roman');
ylabel('cos(8pt) (m)','FontSize',16,'FontName','Times New Roman');
title('Another Ssimple Cosine Function','FontSize',20,'FontName','Times New Roman');
savefig('Figure4b');

%Create a plot that shows c1 + c2 vs. t2 with a dashed line that has a
%thickness of 3 and is "electric indigo" in color. Label the horizontal
%acxcis as "t (sec)" and the vertical axis as "cos(6pt) + cos(8pt) (m)".
%The font for the axis labels should be 16 pt Arial. The title of the plot
%should be "The Combination of Two Simple Cosine Functions" and should be
%in 20 pt Times New Roman font. Save the figure as Figure4c.fig.
fig6 = figure(6);
plot(t2,(c1 + c2),'--','LineWidth',3,'Color',[0.6,0.1,1]);
xlabel('t (sec)','FontSize',16,'FontName','Arial');
ylabel('cos(6pt) + cos(8pt) (m)','FontSize',16,'FontName','Arial');
title('The Combinatioon of Two Simple Cosine Functions');
savefig('Figure4c');

% Using a single call to the plot function, create a line plot that shows
% the function y = 1.6x^3 - 4.3x^2 - 6x + 7 beetween x = -2 and x = 4.
% Create new variables for x and y to use as input arguments to the plot
% function. Include filled data markers (solid in color) with your line. The
% color of the line should be different from that of the data markers, but
% together the colors should be consistent with those of the {college name removed for privacy by Fluxyl} Blazers.
% x = (-2:1:4);
% xfinal = arrayfun(xprob5,x)
% function xpro1 = xprob5(x)

% 1.6*x^3 - 4.3*x^2 -6*x + 7
% end

x = linspace(-2,4);
y = 1.6.*x.^3 - 4.3.*x.^2 -6.*x + 7;
plot(x,y);
