%Filename: ICL_Programming_Assignment_2.m
%--------------------------------------------------------------------------
% Fluxyl
% EGR-Flux-3B Fall 2018
% {Teacher name removed for privacy}
%
% Start Date: 09/12/18
% Last Revised on: 09/12/18
%
% Purpose: To take values given by a digital sensor, and produce results
% that we want.
%
% Variables: 
%   arraySize:      The size of the Temp_data array.
%   highestAvg:     The highest average of all locations.
%   meanOfRows:     A storage variable that holds the means of each
%                   location.
%   numLocations:   The number of locations.
%   Temp_data:      The data file we pull data from.
%   time:           The total elipsed time.
%   totalTemp:      The total average of all temps.
%   totalTimeMins:  The total time in minutes.
% Functions called:     (beyond built-in functions)
%   N/A
%
%--------------------------------------------------------------------------
% Begin script

%First, we must load the data recorded from the sensors.
load Temp_data.txt

%Now, let's start on the first problem.

%% Problem 1 - Determining number of measurement locations
%We will take the dimensions of the variable Temp-data, which will tell us
%how many rows there are. Each row, excluding the first row, corresponds to
%a different location.
arraySize = size(Temp_data);
numLocations = arraySize(1) - 1;

%Now, we will seperate the locations and create a variable that holds the
%temperatures for each location.
fprintf('There are %d locations detected.\n',numLocations)

%Now, we must create the variables that store the temps for each location.
% IGNORE
    %for N = numLocations-numLocations:numLocations
    %    NTime = Temp_data(N+1,:)
    %    end    
    % location1 = Temp_data(2,:);
    % location2 = Temp_data(3,:);
    % location3 = Temp_data(4,:);
    % location4 = Temp_data(5,:);
    % location5 = Temp_data(6,:);
    % location6 = Temp_data(7,:);
    % location7 = Temp_data(8,:);

%% Problem 2 - Determine the total amount of time, in minutes.
%First, we must extract the time intervals.
time = Temp_data(1,:);

%Next, we take the last value in the time variable, and divide it by 60, to
%get the total time in minutes.
totalTimeMins = time(1,end) / 60;

%% Problem 3a - Determining the average temp of all locations for the entire time
%Let's calculate the total average amount of all temperatures.
 totalTemp = mean(mean(Temp_data(2:numLocations+1,:)));
fprintf('The average temp of all locations is %f.\n',totalTemp)

%% Problem 3b - Determining the location with the highest average temperature.
    %Also, print that value to the screen.
   meanOfRows = mean(Temp_data(2:numLocations+1,:),2);
   highestAvg = maxk(meanOfRows,1);
   fprintf('The highest average is %f at\n',highestAvg)
%% Problem 3c - Finding the overall max temperature along with the location and time of said temp.

%% Problem 4 - Output

