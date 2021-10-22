% File Name: ICL_PA2r2.mat
% --------------------------------------------------------------------------
% Fluxyl
% Engineering Computations with MATLAB
% MATLAB for Engineering
% {Teacher name removed for privacy}
% 
% Start Date: 09/17/2018
% Last Revised On: 09/17/2018
% 
% Purpose:
%             
% Variable List:
% 
%
%-----Input----------------------------------------------------------------
%Setup
clc
clear
load Temp_data.txt;
data = Temp_data;
tempVals = data(2:end,:);
timeVals = data(1,:);
finalTImeMins = data(1,end)/60;

%-----Processing-----------------------------------------------------------
%Determine number of measurement locations
locVals = length(tempVals(:,1));


%Determine the average temperature
avgTemp = mean(mean(tempVals));


%Determine the minimum temperature
minTemp = min(min(tempVals));


%Determine the maximum temperature
maxTemp = max(max(tempVals));


%Determine what time each occured
[minTempRow, minTempCol] = find(tempVals == minTemp);
minTempTime = timeVals(minTempCol)/60;

%Determine the average temperature
[maxTempRow, maxTempCol] = find(tempVals == maxTemp);
maxTempTime = timeVals(maxTempCol)/60;

%Determine the minimum temps for each location
minTemps = min(tempVals');

%Determine the maximum temps for each location
maxTemps = max(tempVals');

%determine the average temps for each location
avgTemps = mean(tempVals');

%-----Output---------------------------------------------------------------
disp(sprintf('Temperature values were measured at 7 locations every 15 seconds for 10 minutes.'))

disp(sprintf('\nThe average temperature over all locations was 66.763 degrees C.'))

disp(sprintf('\n\t\t\tLoc #1\tLoc #2\tLoc #3\tLoc #4\tLoc #5\tLoc #6\tLoc #7'))

disp(sprintf('\nMin Temp\t%g\t%g\t%g\t%g\t%g\t%g\t%g',minTemps(1),minTemps(2),minTemps(3),minTemps(4),minTemps(5),minTemps(6),minTemps(7)))

disp(sprintf('\nMax Temp\t%g\t%g\t%g\t%g\t%g\t%g\t%g',maxTemps(1),maxTemps(2),maxTemps(3),maxTemps(4),maxTemps(5),maxTemps(6),maxTemps(7)))

disp(sprintf('\nAvg Temp\t%g\t%g\t%g\t%g\t%g\t%g\t%g',avgTemps(1),avgTemps(2),avgTemps(3),avgTemps(4),avgTemps(5),avgTemps(6),avgTemps(7)))

%Final
%Combine the values into one matrix, then store into Nixon_Sates2
newMatrix = [minTemps;maxTemps;avgTemps];

csvwrite('Stats2',newMatrix);