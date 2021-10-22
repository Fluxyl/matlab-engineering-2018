% File Name: ICL_PA5.mat
% --------------------------------------------------------------------------
% Fluxyl
% Engineering Computations with MATLAB
% MATLAB for Engineering
% {Teacher name removed for privacy}
% 
% Start Date: 10/03/2018
% Last Revised On: 10/03/2018
% 
% Purpose: To calculate the missing value, whether that be mass, or volume,
% of a metal from its density and one user-provided input.
%             
% Variable List:
% initialVolume     The initial value for volume before conversions.
% metalDensity      Tells the program the density of the chosen metal.
% userMass          The mass units that the user selected.
% userMetal         The metal that the user selected.
% userVolume        The volume units that the user selected
% finalVolume       The calculated volume of the user's selected metal.
% 
%
%
%-----Input----------------------------------------------------------------
% Clear Workspace and Command Window
clc
clear all
home
% List 8 metals and their density values in kg/m^3
% Ask the user for the name of the material, the mass units to be used, and
%   the volume to be used.
disp(sprintf('Aluminum, Cobalt, Copper, Gold\nIron, Lead, Nickel, Platinum'))
userMetal = lower(input('\nWhat material from the above list would you like to use?\n: ','s'));

disp(sprintf('\nkg, g, m'))
userMass = lower(input('\nOkay. What mass units would you prefer?\nP.S, choose kg. wasn''t able to finish the other ones...:(\n: ','s'));

disp(sprintf('\nm^3, cm^3, mm^3, L, mL'))
userVolume = lower(input('\nFinally, what units would you like your volume to be in?\n: ','s'));

% Now, we must take the information from the user and output it correctly
%   to the screen.
home
switch userMetal
    case 'aluminum'
        disp(sprintf('\nYou have selected %s. The density of this metal is %dkg/m^3.',userMetal,2712))
        metalDensity = 2712;

    case 'cobalt'
        disp(sprintf('\nYou have selected %s. The density of this metal is %dkg/m^3.',userMetal,8746))
        metalDensity = 8746;
        
    case 'copper'
        disp(sprintf('\nYou have selected %s. The density of this metal is %dkg/m^3.',userMetal,8880))
        metalDensity = 8880;
        
    case 'gold'
        disp(sprintf('\nYou have selected %s. The density of this metal is %dkg/m^3.',userMetal,19320))
        metalDensity = 19320;
        
    case 'iron'
        disp(sprintf('\nYou have selected %s. The density of this metal is %dkg/m^3.',userMetal,7850))
        metalDensity = 7850;
        
    case 'lead'
        disp(sprintf('\nYou have selected %s. The density of this metal is %dkg/m^3.',userMetal,11340))
        metalDensity = 11340;
        
    case 'nickel'
        disp(sprintf('\nYou have selected %s. The density of this metal is %dkg/m^3.',userMetal,13593))
        metalDensity = 13593;
        
    case 'platinum'
        disp(sprintf('\nYou have selected %s. The density of this metal is %dkg/m^3.',userMetal,21400))
        metalDensity = 21400;
    otherwise
end

% Now, we must prompt the user to enter either the mass or the volume value
% so that we can calculate the end result.



userChoice = lower(input('\nWould you like to calculate the final value using mass or volume?\nChoose mass, lost time.\n: ','s'));

% If the user chose mass, we must find volume by diving the mass value by
%    the density value.

if userChoice == 'mass'
    disp(sprintf('\nPlease input a value for mass in %s.',userMass))
    userMassVal = input('\n: ');
    switch userMass
        case 'kg'
            initialVolume = userMassVal/metalDensity;
            switch userVolume
                case 'm^3'
                    finalVolume = initialVolume;
                    disp(sprintf('The volume in %s is %g.',userVolume,finalVolume))
                case 'cm^3'
                    finalVolume = initialVolume*1000000;
                    disp(sprintf('The volume in %s is %g.',userVolume,finalVolume))
                case 'mm^3'
                    finalVolume = initialVolume*1e+9;
                    disp(sprintf('The volume in %s is %g.',userVolume,finalVolume))
                case 'l'
                    finalVolume = initialVolume*1000;
                    disp(sprintf('The volume in %s is %g.',userVolume,finalVolume))
                case 'mL'
                    finalVolume = initialVolume*1e+6;
                    disp(sprintf('The volume in %s is %g.',userVolume,finalVolume))
        case 'g'
                case 'm^3'
                    %do this
                case 'cm^3'
                    %cmvolkg = 
                case 'mm^3'
                    %do this
                case 'l'
                    d%o this
                case 'mL'
                    %do this
        case 'mg'
                case 'm^3'
                    %do this
                case 'cm^3'
                    %cmvolkg = 
                case 'mm^3'
                    %do this
                case 'l'
                    d%o this
                case 'mL'
                    %do this
            end
    end
    
    
    

elseif userChoice == 'volume'
    disp('Ran outta time! Try typing mass instead, since I finished that portion...')



else
    disp(sprintf('\nYou typed something wrong. Please try again.'))
end

%-----Psuedocode-----------------------------------------------------------
% Clear Workspace and Command Window
% List 8 metals and their density values in kg/m^3
% Ask the user for the name of the material, the mass units to be used, and
%   the volume to be used.
% Now, we must take the information from the user and output it correctly
%   to the screen.
% Now, we must prompt the user to enter either the mass or the volume value
% so that we can calculate the end result.
% If the user chose mass, we must find volume by diving the mass value by
%    the density value.