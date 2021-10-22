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
% Purpose: The purpose of this assignment is to get values from different
%             sensors and calculates different stuff.
%             
% Variable List:
%   avgTemp     The average temperature of all temperatures.
%   colMaxTemp  Which column the max temp is in.
%   data        entire data set from input file
%   iMaxTemp    The max temp index number.
%   locMaxTemp  Which sensor recorded the max temp.
%   maxAvgTemp  The maximum average temperature.
%   maxTemp     The max temperature out of all temps.
%   nLoc        Determine the amount of sensors.
%   rowMaxAvgTemp   The max temp per row.
%   tempVals    array containing temperature measurements at all locations
%               and times.
%   timeTotal   The total amount of time.
%   timeVals    vector containing sampling times
%   
%
%-----Input----------------------------------------------------------------
% Load/read information from the data file.
% Extract time values from data
% Extract tempterature values from data.
clc
clear all
data = load('Temp_data.txt');
timeVals = data(1,:);
tempVals = data(2:end,:);

%-----Processing-----------------------------------------------------------
% Determine number of measurement locations
% [nLoc, nTimes] = size(tempVals);
nLoc = length(tempVals(:,1));

% Determine elapsed time in minutes.
timeTotal = timeVals(end)/60;

% Determine overall average temperature.
avgTemp = mean(mean(tempVals));

% Determine location with highest average temperature AND the value of that
%   average termperature.???
[maxAvgTemp, rowMaxAvgTemp] = max(mean(tempVals,2));


% Determine overall maximum temperature along with its sensor location and
%   time.
[maxTemp,iMaxTemp] = max(tempVals(:));
[locMaxTemp,colMaxTemp] = ind2sub(size(tempVals),iMaxTemp);


%[maxTemp, colMaxTemp] = max(max(tempVals));
%[maxTemp, rowMaxTemp] = max(max(tempVals,[],2));

%[row, col] = find(tempVals == maxTemp)


%-----Output---------------------------------------------------------------
% Output number of measurement locations
disp(sprintf('There are %d measurement locations.',nLoc))

% Output elapsed time in seconds.
disp(sprintf('\nThe elapsed time is %0.2f minutes.',timeTotal))

% Output overall average temperature.
disp(sprintf('\nThe overall average temperature is %0.2f degrees C.',avgTemp))

% Output location with highest average temperature AND the value of that
%   average termperature.
disp(sprintf('The maximum average temperature is %0.2f degrees C at Location %d.',maxAvgTemp,rowMaxAvgTemp))

% Output overall maximum temperature along with its sensor location and
%   time.
disp(sprintf('\nMax. Temp. = %0.2f deg. C at Location %d and t = %0.2f sec.',maxTemp,locMaxTemp,timeVals(colMaxTemp)))
