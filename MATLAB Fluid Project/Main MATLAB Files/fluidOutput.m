function [] = fluidOutput(c, fluid, pipe)
%FLUIDOUTPUT Takes in a fluid structure and a pipe structure to output the calculated result of fluidCalculation
    % INPUT:
    % c is a case int correspoding to 1: Solving for Flow Rate, 2: Solving for Pressure Differential and Head Loss, and 3: Solving for Pipe Diameter
    % fluid is the fluid struct that contains all the fluid properties
    % pipe is the pipe struct that contains all the pipe properties
    % OUTPUT:
    % the output of this function is output into the Command Window, in a
    % neat and formatted way
    
% Dmitriy Antselevich
% EGR 150 - 3B Fall 2018
% UAB
% Conner/McGarity
% 
% Start Date: 1 November 2018
% Last Revised on: 14 November 2018


%this section facilitates the output to a text file
diary('FLUIDS_GROUP_FILE_OUTPUT.txt');
%diary('on');

    switch (c)
        %output for case 1: Solving for Flow Rate
        case 1
            disp(sprintf("Solving for Flow Rate\n"))
            disp(sprintf("\n\nInput Parameters:\n"))
            disp(sprintf("    Fluid Information"))
            disp(sprintf("        %s", fluid.name))
            disp(sprintf("        Density = %g kg/m^3", fluid.density))
            disp(sprintf("        Dynamic Viscosity = %g Pa-s", fluid.dynamicviscosity))
            disp(sprintf("        Kinematic Viscosity = %g m^2/s\n", (fluid.dynamicviscosity / fluid.density)))
            disp(sprintf("    Flow Information"))
            disp(sprintf("        Inlet Pressure = %g Pa", pipe.inlet))
            disp(sprintf("        Outlet Pressure = %g Pa\n", pipe.outlet))
            disp(sprintf("    Pipe Information"))
            disp(sprintf("        Material = %s", pipe.material))
            disp(sprintf("        Length = %f m", pipe.length))
            disp(sprintf("        Angle = %f degrees", pipe.angle))
            disp(sprintf("        Shape = %s", pipe.shape))
            switch(pipe.shape)
                case 'Circle'
                    disp(sprintf("            Diameter = %f", pipe.diameter))  
                case 'Rectangle'
                    disp(sprintf("            Length 1 = %f", pipe.b)) 
                    disp(sprintf("            Length 2 = %f", pipe.c))
                case 'Ellipse'
                    disp(sprintf("            Major Diameter = %f", pipe.b)) 
                    disp(sprintf("            Minor Diameter = %f", pipe.c))
                case 'Isosceles Triangle'
                    disp(sprintf("            Angle = %f", pipe.iangle)) 
                    disp(sprintf("            Leg Length = %f", pipe.b))
            end
            disp(sprintf("            Hydraulic Diameter = %f\n", pipe.hydraulicdiameter))
            disp(sprintf("Output Values: \n"))
            disp(sprintf("    Head Loss = %f m", pipe.hL))
            disp(sprintf("    Flow Rate = %f m^3/s", fluid.flowrate))
            disp(sprintf("    Avg. Flow Speed = %f m/s", fluid.flowspeed))
            disp(sprintf("    Reynolds Number = %f", fluid.Re))
            disp(sprintf("    %s", fluid.flow))
        %output for case 1: Solving for Pressure Differential and Head Loss
        case 2
            disp(sprintf("Solving for Pressure Differential and Head Loss\n"))
            disp(sprintf("\n\nInput Parameters:\n"))
            disp(sprintf("    Fluid Information"))
            disp(sprintf("        %s", fluid.name))
            disp(sprintf("        Density = %g kg/m^3", fluid.density))
            disp(sprintf("        Dynamic Viscosity = %g Pa-s", fluid.dynamicviscosity))
            disp(sprintf("        Kinematic Viscosity = %g m^2/s\n", (fluid.dynamicviscosity / fluid.density)))
            disp(sprintf("    Flow Information"))
            disp(sprintf("        Avg. Flow Speed = %f m/s", fluid.flowspeed))
            disp(sprintf("        Flow Rate = %g m^3/s", fluid.flowrate))
            disp(sprintf("        Reynolds Number = %f Pa\n", fluid.Re))
            disp(sprintf("    %s\n", fluid.flow))
            disp(sprintf("    Pipe Information"))
            disp(sprintf("        Material = %s", pipe.material))
            disp(sprintf("        Length = %f m", pipe.length))
            disp(sprintf("        Angle = %f degrees", pipe.angle))
            disp(sprintf("        Shape = %s", pipe.shape))
            switch(pipe.shape)
                case 'Circle'
                    disp(sprintf("            Diameter = %f", pipe.diameter))  
                case 'Rectangle'
                    disp(sprintf("            Length 1 = %f", pipe.b)) 
                    disp(sprintf("            Length 2 = %f", pipe.c))
                case 'Ellipse'
                    disp(sprintf("            Major Diameter = %f", pipe.b)) 
                    disp(sprintf("            Minor Diameter = %f", pipe.c))
                case 'Isosceles Triangle'
                    disp(sprintf("            Angle = %f", pipe.iangle)) 
                    disp(sprintf("            Leg Length = %f", pipe.b))
            end
            disp(sprintf("            Hydraulic Diameter = %f\n", pipe.hydraulicdiameter))
            disp(sprintf("Output Values: \n"))
            disp(sprintf("    Pressure Differential = %f Pa", fluid.flowspeed))
            disp(sprintf("    Head Loss = %f m", fluid.Re))
        %output for case 1: Solving for Pipe Diameter
        case 3
            disp(sprintf("Solving for Pipe Diameter\n"))
            disp(sprintf("\n\nInput Parameters:\n"))
            disp(sprintf("    Fluid Information"))
            disp(sprintf("        %s", fluid.name))
            disp(sprintf("        Density = %g kg/m^3", fluid.density))
            disp(sprintf("        Dynamic Viscosity = %g Pa-s", fluid.dynamicviscosity))
            disp(sprintf("        Kinematic Viscosity = %g m^2/s\n", (fluid.dynamicviscosity / fluid.density)))
            disp(sprintf("    Flow Information"))
            disp(sprintf("        Inlet Pressure = %g Pa", pipe.inlet))
            disp(sprintf("        Outlet Pressure = %g Pa", pipe.outlet))
            disp(sprintf("        Head Loss = %f m", pipe.inlet))
            disp(sprintf("        Flow Rate = %f m^3/s\n", pipe.outlet))
            disp(sprintf("    Pipe Information"))
            disp(sprintf("        Material = %s", pipe.material))
            disp(sprintf("        Length = %f m", pipe.length))
            disp(sprintf("        Angle = %f degrees", pipe.angle))
            disp(sprintf("Output Values: \n"))
            disp(sprintf("    Pipe Diameter = %f m", pipe.hydraulicdiameter))
            disp(sprintf("    Avg. Flow Speed = %f m/s", fluid.flowspeed))
            disp(sprintf("    Reynolds Number = %f\n", fluid.Re))
            disp(sprintf("    %s", fluid.flow))
    end
    diary('off');
end
