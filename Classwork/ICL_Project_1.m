%Filename:  ICL_Project_1
%--------------------------------------------------------------------------
% Fluxyl
% EGR-Flux-3B Fall 2018
% {Teacher name removed for privacy}
%
% Start Date: 09/05/18
% Last Revised on: 09/05/18
%
% Purpose: This script must figure out a person's age after the user in
% puts a birth date. From here, the script must convert the age from years
% to weeks, days, hours, minutes, and seconds and output that information
% as directed by the ICL program on Canvas. Finally, the program must
% output the user's name, birth date, and current date.
%
% Variables: 
%   combinedDate        The combination of the dates provided by user
%   currentDate         The current date as of the program's creation
%   daysOld             Calculates how old the user is in days
%   hoursOld            Calculates how old the user is in hours
%   minutesOld          Calculates how old the user is in minutes
%   name                User's name
%   secondsOld          Calculates how old the user is in seconds
%   userDay             User's input for day of month of birth
%   userMonth           User's input for month of year of birth
%   userYear            User's input for year of birth
%   weeksOld            Calculates how old the user is in weeks
%   yearsOld            Calculates how old the user is in years
%
% Functions called:     (beyond built-in functions)
%   placeholder
%
%--------------------------------------------------------------------------
% Begin script


currentDate = now;

disp(sprintf('Hello! And welcome to the ICL Assignment #1 script! Let"s get started!'))
name = input('\nWhat is your name? ','s');
disp(sprintf("\nNice to meet you!"))

    disp(sprintf("\nWhat year were you born in?"))
        userYear = input(':');
    disp(sprintf("\nWhat month? (Please enter a number between 01 and 12)"))
        userMonth = input(':');
    disp(sprintf("\nFinally, what day? (Enter a number between 01 and your month's last day)"))
        userDay = input(':');

combinedDate = userDay + "." + userMonth + "." + userYear;

daysOld = datenum('05.09.2018','dd.mm.yyyy') - datenum(combinedDate,'dd.mm.yyyy');
yearsOld = daysOld/365;
weeksOld = daysOld/7;
hoursOld = daysOld*24;
minutesOld = daysOld*1440;
secondsOld = daysOld*86400;

disp(sprintf("\nAs of today, " + datestr(now) + ","))
disp(sprintf("\n" + name + ", who was born on " + combinedDate + ", is officially: "))
disp(sprintf(yearsOld + " years old"))
disp(sprintf(weeksOld + " weeks old"))
disp(sprintf(daysOld + " days old"))
disp(sprintf(hoursOld + " hours old"))
disp(sprintf(minutesOld + " minutes old"))
disp(sprintf(secondsOld + " seconds old"))
