function output = proj2Doutput(timeAirFinal2,vertPosVSTime)
%PROJ2DOUTPUT Takes the information given by proj2Dprocess and displays it.
%
%   output = proj2Doutput(timeAirFinal2,vertPosVSTime) displays the
%   variable timeAirFinal2 to the command window, and then displays a graph
%   showing vertPosVSTime.
%
%   Input:
%   timeAirFinal2   Tells us how long the object was in the air.
%   vertPosVSTime   The variable that holds the vertical position vs time 
%                       information that we will use to graph the plot.
%

%   Author: Fluxyl
%   Date: October 29, 2018
%   School: University of Fluxyl at Riften
%   Class: EGR Flux

narginchk(2,2)

% Output the total amount of time that the object was in the air.
disp(sprintf('\n The object was in the air for %0.2f seconds.',timeAirFinal2))

% Display a plot of timeAirFinal2 vs vertPosVSTime to illustrate vertical
%       position vs. time.
plot(timeAirFinal2,vertPosVSTime)

% blank variable to prevent errors
output = 1;