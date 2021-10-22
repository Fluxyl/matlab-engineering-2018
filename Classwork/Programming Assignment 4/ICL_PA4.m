% File Name: ICL_PA4.mat
% --------------------------------------------------------------------------
% Fluxyl
% Engineering Computations with MATLAB
% MATLAB for Engineering
% {Teacher name removed for privacy}
% 
% Start Date: 09/26/2018
% Last Revised On: 09/26/2018
% 
% Purpose: To analyze a spreadsheet of temperature and time values, and
%          output them in a few neatly formatted graphs.
%             
% Variable List:
%   avgTemps    The average temps for each time interval.
%   avgTempsPerLoc The average temps per location.
%   ax1         The variable holding the first axis.
%   ax2         The variable holding the second axis.
%   data        The variable holding the data from Temp_data.txt.
%   fig1        Figure 1's variable.
%   fig2        Figure 2's variable.
%   histplot1   The variable which holds the histogram used in graph 2.
%   maxTemps    Max temps at each time interval.
%   maxTempsPerLoc  The maximum temps per location.
%   minTemps    Min temps at each time interval.
%   minTempsPerLoc  The minimum temps per location.
%   nLoc        Number of locations.
%   tempVals    Temperature values taken from Temp_data.txt
%   timeTotal   Total time in minutes.
%   timeVals    All time intervals spaced by 15 seconds each.
%
%-----Input----------------------------------------------------------------

%% Clear previous data and clean command window.
clc
clear all
fprintf('Starting Code...\n')

%Import data and sort according to time and temp.
data = load('Temp_data.txt');
timeVals = data(1,:);
tempVals = data(2:end,:);

%Create a figure window with two sets of axes (arranged vertically).
fig1 = figure(1);
clf
subplot(2,2,1:2);
subplot(2,2,3:4);
%-----Processing-----------------------------------------------------------
% Determine number of measurement locations
% [nLoc, nTimes] = size(tempVals);
nLoc = length(tempVals(:,1));

% Determine elapsed time in minutes.
timeTotal = timeVals(end)/60;

% Determine the minimum temperature across all locations for each sampling
% time.

minTemps = min(tempVals);

%Determine the maximum temperature across all locations for each sampling
%time.

maxTemps = max(tempVals);

%Determine the average temperature across all locations for each sampling
%time.

avgTemps = mean(tempVals);

%Determine min temp for each location.
minTempsPerLoc = min(tempVals');
%Determine max temp for each location.
maxTempsPerLoc = max(tempVals');
%Determine avg temp for each location.
avgTempsPerLoc = mean(tempVals');
% vec1 = (1:1:nLoc);
% for location = vec1
%     disp(location)
% end

%-----Output---------------------------------------------------------------


%On the upper graph, plot the minimum, maximum, and average temperatures
%   across all locations for each sampling time versus the sampling time
%   itself.
%Set the lines on the line graph to 3 points wide.

ax1 = subplot(2,2,1:2);
plot(timeVals,minTemps,timeVals,maxTemps,timeVals,avgTemps,'LineWidth',3);
legend('Min. Temp','Max. Temp','Avg. Temp');
xlabel('Time (s)');
ylabel('Temps');
ax1.FontWeight = 'bold';
ax1.FontSize = 16;
grid(ax1);

%On the lower graph, plot a histogram of all the temperatures using bins
%   that range from 45 to 90 degrees Fahrenheit and are 5 degrees in width.

ax2 = subplot(2,2,3:4);
histplot1 = histogram(tempVals,45:90);
histplot1.BinWidth = 5;
xlabel('Temp Values');
ylabel('# of Temps')

% Set font weight to bold, and font size to 14.
ax2.FontWeight = 'bold';
ax2.FontSize = 14;

%Create a figure window with two sets of axes (arranged vertically).
fig2 = figure(2);
subplot(2,2,1:2);
subplot(2,2,3:4);
ax3 = subplot(2,2,1:2);
%plot(nLoc,minTempsPerLoc,nLoc,maxTempsPerLoc,nLoc,avgTempsPerLoc);