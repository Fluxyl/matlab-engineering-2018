function fluid = fluidproperties(fluidChoice,cellFluid)
%FLUIDPROPERTIES Takes the fluid choice and assigns the appropriate vals.
%
%   fluid = fluidproperties(fluidschoice) Takes the variable fluidchoice,
%   and returns the appropriate density and viscosity values for the
%   appropriate fluid.
%
%   Input:
%   fluidChoice    The user's choice of fluid that's used to find the
%                   appropriate values for the fluid structure.
%
%   cellFluid       The cell containing all the information about the
%                    user's custom fluid.
%
%   Output:
%   fluid      A structure array containing information about the fluid,
%              such as its name, size, density, and its dynamic viscosity.

%   Author: Joshua Nixon
%   Date: November 14, 2018
%   School: Univeristy of Alabama at Birmingham
%   Class: EGR 150-3B

narginchk(1,2)
nargoutchk(1,1)

fluidVals = {'Acetone','Benzone','Ethanol','Gasoline','Glycerin','Kerosene',...
    'Methanol','SAE 10 Oil','SAE 30 Oil','Water','Custom Fluid'};


% Check to see if the user chose to use a custom fluid
if fluidChoice ~= 11
    % Assign a name, density and dynamic viscosity value based off of what
    %   selection the user made!
    densityVals = [792 881 789 680 1260 804 791 917 917 998];
    dynViscVals = [0.000316,0.000651,0.00120,0.000292,1.49,0.00192,0.000598...
        ,0.104,0.290,0.001];
    
    fluid.name = char(fluidVals(fluidChoice));
    fluid.density = densityVals(fluidChoice);
    fluid.dynamicviscosity = dynViscVals(fluidChoice);
else
    % Allow the user to input their own density and dynamic viscosity
    %   values.
    fluid.name = char(cellFluid{1});
    while isempty(fluid.name) == 1
        disp(sprintf('Please input a valid name.'));
        fluid.name = char(inputdlg('Please input a valid name','Name',1))
    end
    
    fluid.density = str2num(cellFluid{2});
    while isempty(fluid.density) == 1
        disp(sprintf('Please input a valid value for density.'))
        fluid.density = str2num(cell2mat(inputdlg('Custom Density',...
            'Density',1)))
    end
    fluid.dynamicviscosity = str2num(cellFluid{3});
    while isempty(fluid.dynamicviscosity) == 1
        disp(sprintf('Please input a valid dynamic viscosity.'))
        fluid.dynamicviscosity = str2num(cell2mat(inputdlg('Custom Dynamic Viscosity',...
            'Dynamic Viscosity',1)))
    end
end