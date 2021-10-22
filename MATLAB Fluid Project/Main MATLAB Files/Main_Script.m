% File Name: Main_Script.m
% -------------------------------------------------------------------------
% Joshua Nixon, Dmitriy Antselevich, Lauren Francis
% Engineering Computations with MATLAB
% EGR 150-3B Fall 2018
% Conner/McGarity
%
% Start Date: 11/01/2018
% Last Revised On: 11/14/2018
%
% Purpose: To perform calculations about pipes and liuqids based on
%           user-given input. Takes properties of both the pipes and the
%           liquid using prompt boxes, and then calls multiple functions
%           which perform calculations alongwith assigning values to the
%           fluid and pipe structures. This information is then all
%           outputted using an output function.
%
% Variable List:
%   diameterVals: Holds the values for Inlet Pressure, Outlet Pressure, 
%                   Pipe Length, Pipe Angle (Above Horizontal), and 
%                   Volume Flow Rate.
%
%   difPressureVals: variable that holds the values for pipe.length,
%                       pipe.angle, and fluid.flowspeed.
%
%   flowRateVals:   Holds the values for Inlet Pressure, Outlet Pressure,
%                       Pipe Length, and the Pipe Angle (Above Horizontal).
%
%   fluid:      A structure that holds all of the relevant information
%                   related to the selected fluid and its properties.
%
%   fluidChoice The user's selected choice of fluid.
%
%   fluidVals:  Holds the different types of fluids for use in the program.
%
%   matChoice:  The user's selected choice of material.
%
%   matVals:    Holds the different material values for use in the program.
%
%   pipe:       A structure that holds all of the relevant information
%                   related to the properties of the pipe.
%
%   programMode: Tells us which calculation we are trying to find.
%
%   prompt:     Holds the prompts for the different listdlgs. Changes based
%                   on what mode the program is in.
%-----Input----------------------------------------------------------------
home

% Create the list of fluids, and have the user choose from the list using
%   listdlg.
fluidVals = {'Acetone','Benzone','Ethanol','Gasoline','Glycerin',...
    'Kerosene','Methanol','SAE 10 Oil','SAE 30 Oil','Water','Custom Fluid'};

fluidChoice = listdlg('PromptString','Select a Fluid!','SelectionMode',...
    'single','ListString',fluidVals,'Name','Fluid Selection','ListSize'...
    ,[150 160]);


% Create a list of materials, and have the user choose from the list using
%   listdlg.
matVals = {'Glass','Plastic','Concrete','Rubber (smoothed)','Copper tubing',...
    'Brass tubing','Cast Iron','Galvanized Iron','Wrought Iron',...
    'Stainless Steel','Commcercial Steel'};

matchoice = listdlg('PromptString','Select Pipe Material!','SelectionMode',...
    'single','ListString',matVals,'Name',...
    'Material Selection','ListSize',[160 160]);

% programVals = {'Flow Rate','Difference in Pressure','Pipe Diameter'};

% Select program mode! For programVals, 1 = flowrate, 2 = dif in pressure,
%   3 = pipe diameter
programMode = listdlg('PromptString','Select Calculation Mode.',...
    'SelectionMode','single','ListString',{'Flow Rate','Pressure Difference',...
    'Pipe Diameter'},'Name','Mode Selection','ListSize',[150 50]);

%-----Processing-----------------------------------------------------------
% Fluid calculations
% Check to see if the user chose a custom fluid.
if fluidChoice ~= 11
    % Run the fluidProperties.m function
    fluid = fluidProperties(fluidChoice);
else
    % Allow the user to input their own density and viscosity values.
    prompt = {'Custom Fluid Name.','Custom Fluid Density',...
        'Custom Fluid Dynamic Visoosity.'};
    cellFluid = inputdlg(prompt,'Custom Input',1);
    fluid = fluidProperties(fluidChoice,cellFluid);
end


% Pipe calculations
% Initiate the Pipe Roughness function. This function will take the user's
%   selected material and assign an appropriate roughness value to the pipe
%   structure.
pipe.material = char(matVals(matchoice));
pipe.roughness = pipeRoughness(matchoice);


% Based off the mode chosen, initiate the proper calculation module of this
%   script.
switch programMode
    
    case 1
        
        % Assign a variable that holds the questions for the flow rate
        %   prompt.
        prompt = {'Inlet Pressure (Pa)','Outlet Pressure (Pa)',...
            'Pipe Length (m)','Pipe Angle (Above Horizontal)'};
        flowRateVals = inputdlg(prompt,'Custom Input',1);
        
        % Assign the values from the prompt to the pipe structure.
        pipe.inlet = str2num(flowRateVals{1});
        pipe.outlet = str2num(flowRateVals{2});
        pipe.length = abs(str2num(flowRateVals{3}));
        pipe.angle = str2num(flowRateVals{4});
        
        if isempty(pipe.inlet) == 1 || isempty(pipe.outlet) == 1 ||...
                isempty(pipe.length) == 1 || isempty(pipe.angle) == 1
            error('You entered an invalid input.')
        end
        
        % Launch Laruen's Code
        pipe = pipeProperties(pipe);
        pipe.hydraulicdiameter = pipeCalculate(pipe);
        % Launch Dmitriy's Code
        [fluid, pipe] = fluidCalculation(1, fluid, pipe);
        fluidOutput(programMode, fluid, pipe);
        
    case 2
        % Assign a variable that holds the questions for the difference in
        % inlet and outlet pressures as well as head loss.
        prompt = {'Pipe Length (m)','Pipe Angle (Above Horizontal)',...
            'Flow Speed (m^3 /s)'};
        difPressureVals = inputdlg(prompt,'Custom Input',1);
        
        % Assign the values from the prompt to the pipe structure.
        pipe.length = abs(str2num(difPressureVals{1}));
        pipe.angle = str2num(difPressureVals{2});
        fluid.flowspeed = str2num(difPressureVals{3});
        if isempty(pipe.length) == 1 || isempty(pipe.angle) == 1 ||...
                isempty(fluid.flowspeed) == 1
            error('You entered an invalid input.')
        end
        
        % Launch Lauren's Code
        pipe = pipeProperties(pipe);
        pipe.hydraulicdiameter = pipeCalculate(pipe);
        
        % Launch Dmitriy's Code
        [fluid, pipe] = fluidCalculation(programMode, fluid, pipe);
        fluidOutput(2, fluid, pipe);
        
    case 3
        % Assign a variable that holds the questions for the diameter of
        %   the pipe.
        prompt = {'Inlet Pressure','Outlet Pressure','Pipe Length (m)',...
            'Pipe Angle (Above Horizontal)','Volume Flow Rate'};
        diameterVals = inputdlg(prompt,'Custom Input',1);
        
        % Assign the values from the prompt to the pipe structure.
        pipe.inlet = str2num(diameterVals{1});
        pipe.outlet = str2num(diameterVals{2});
        pipe.length = abs(str2num(diameterVals{3}));
        pipe.angle = str2num(diameterVals{4});
        fluid.flowrate = str2num(diameterVals{5});
        if isempty(pipe.inlet) == 1 || isempty(pipe.outlet) == 1 ||...
                isempty(pipe.length) == 1 || isempty(pipe.angle) == 1 ||...
                isempty(fluid.flowrate) == 1
            error('You entered an invalid input.')
        end
        % Launch Dmitriy's Code
        [fluid, pipe] = fluidCalculation(3, fluid, pipe);
        fluidOutput(programMode, fluid, pipe);
end
