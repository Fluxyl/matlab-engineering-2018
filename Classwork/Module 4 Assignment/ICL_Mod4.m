% File Name: ICL_Mod4.mat
% --------------------------------------------------------------------------
% Fluxyl
% Engineering Computations with MATLAB
% MATLAB for Engineering
% {Teacher name removed for privacy}
% 
% Start Date: 09/24/2018
% Last Revised On: 09/24/2018
% 
% Purpose: 
%             
% Variable List:
% 
%
%-----Input----------------------------------------------------------------
%Load the data file.
clear
clc
clf
load EconData.dat;

%Open new figure window and assign figure handle.
fh1 = figure(1);

%-----Processing-----------------------------------------------------------
%Create two sets of axes, arranged vertically, in the single figure window.
%Assign handles to each set of axes.
ah1 = subplot(2,2,1:2);
ah2 = subplot(2,2,3:4);

%On the first graph, plot Unemployment vs. Year and Inflation vs. Year
%   using a single plot statement.
%Assign a handle to the plot. 
subplot(2,2,1:2);
ph1 = plot(EconData(:,1),EconData(:,2),EconData(:,1),(EconData(:,3)));

%Label each axis, assigning a handle to each label.
al1 = xlabel('Year');
al2 = ylabel('Unemployment / Inflation');

%On the second graph, plot Presidential Approval vs. Year and Consumer
%   Confidence vs. Year using two seperate plot statements.
%Assign a handle to the plot.
subplot(2,2,3:4);
ph2 = plot(EconData(:,1),EconData(:,4),EconData(:,1),(EconData(:,5)));

%Label each axis, assigning a handle to each label.
al3 = xlabel('Year');
al4 = ylabel('Approval / Confidence');

%Add legends to each graph.
subplot(2,2,1:2);
legend('Unemployment', 'Inflation');
subplot(2,2,3:4);
legend('Approval', 'Confidence');

%Create seperate figure windows and use some of the data to create vertical
%   (bar)  and horizontal (barh) bar graphs.
figure(2)
fh2 = bar(EconData(:,1),EconData(:,4))
figure(3)
fh3 = bar(EconData(:,1),(EconData(:,5)))
%-----Psuedocode-----------------------------------------------------------
%Load Econdata.dat
%Open new figure window and assign figure handle.
%Create two sets of axes, arranged vertically, in the single figure window.
%Assign handles to each set of axes.
%On the first graph, plot Unemployment vs. Year and Inflation vs. Year
%       using a single plot statement.
%Assign a handle to the plot. 
%Label each axis, assigning a handle to each label.
%On the second graph, plot Presidential Approval vs. Year and Consumer
%   Confidence vs. Year using two seperate plot statements.
%Assign a handle to the plot.
%Label each axis, assigning a handle to each label.
%Use the various handles to change some of the properties.
%Add legends to each graph.
%Create seperate figure windows and use some of the data to create vertical
%   (bar)  and horizontal (barh) bar graphs.
