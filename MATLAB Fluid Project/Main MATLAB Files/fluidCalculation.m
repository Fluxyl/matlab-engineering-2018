function [fluid, pipe] = fluidCalculation(c, fluid, pipe)
%FLUIDCALCULATION Takes in a fluid structure and a pipe structure, with a proper calculation selected, to calculate the required result
    % INPUT:
    % c is a case int correspoding to 1: Solving for Flow Rate, 2: Solving for Pressure Differential and Head Loss, and 3: Solving for Pipe Diameter
    % fluid is the fluid struct that contains all the fluid properties
    % pipe is the pipe struct that contains all the pipe properties
    % OUTPUT:
    % the output of this function are fluid and pipe structures which were
    % the inputs originally, with added fields ready for the fluidOutput
    % function
    
% Dmitriy Antselevich
% EGR 150 - 3B Fall 2018
% UAB
% Conner/McGarity
% 
% Start Date: 1 November 2018
% Last Revised on: 14 November 2018

    
    % setting gravity constant
    g = 9.80655;
    % making sure pipe roughness is in meters
    pipe.roughness = pipe.roughness / 1000;
    % calculating kinematic viscosity from dynamic viscosity
    fluid.kinematicviscosity = fluid.dynamicviscosity / fluid.density;
    
    switch (c)
        case 1
            
            % difference in pressure
            pipe.differential = pipe.inlet - pipe.outlet;
            
            % ASSUME Laminar FLOW!
            
            %calculating Head Loss
            pipe.hL = pipe.differential / (fluid.density * g) - pipe.length * sind(pipe.angle);
            %flow rate (q) is calculated using the assumed hL
            fluid.flowrate = pi * fluid.density * g * pipe.hydraulicdiameter^4 * pipe.hL / (128 * fluid.dynamicviscosity * pipe.length);
            % flow speed (V) calculation
            fluid.flowspeed = 4 * fluid.flowrate / (pi * pipe.hydraulicdiameter^2);
            %calculated the assumed Re for the assumption of laminar flow
            fluid.Re = fluid.density * fluid.flowspeed * pipe.hydraulicdiameter / fluid.dynamicviscosity;
            % checking for Re assumption
            fluid.flow = "The flow is laminar";  
            if (fluid.Re > 2300)
                % re-calculating the correct values of q and v
                fluid.flowrate = -0.965 * sqrt(g * pipe.hydraulicdiameter^5 * pipe.hL / pipe.length) * log(pipe.roughness / (3.7 * pipe.hydraulicdiameter) + sqrt(3.17 * fluid.kinematicviscosity * pipe.length / (g * pipe.hydraulicdiameter^3 * pipe.hL)));
                % calculating V
                fluid.flowspeed = 4 * fluid.flowrate / (pi * pipe.hydraulicdiameter^2);
                % calculating Reynold's number
                fluid.Re = fluid.density * fluid.flowspeed * pipe.hydraulicdiameter / fluid.dynamicviscosity;
                fluid.flow = "The flow is turbulent";           
            end
        case 2   
            % calculate Re
            fluid.Re = fluid.density * fluid.flowspeed * pipe.hydraulicdiameter / fluid.dynamicviscosity;
            
            % split for the two different cases of Re
            if (fluid.Re <= 2300)
                % calculate friction factor f
                f = 64 / fluid.Re;
                % calculate q
                fluid.flowrate = fluid.flowspeed * pi * pipe.hydraulicdiameter^2 / 4;
                % calculate hL
                pipe.hL = f * pipe.length * fluid.flowspeed^2 / (2 * pipe.hydraulicdiameter * g);
                % calculate difference in pressure
                pipe.differential = (pipe.hL + pipe.length * sind(pipe.angle)) * fluid.density  * g;
                fluid.flow = "The flow is laminar";
            else
                % calculate q
                fluid.flowrate = fluid.flowspeed * pi * pipe.hydraulicdiameter^2 / 4;
                % calculate hL
                pipe.hL = 1.07 * (fluid.flowrate^2 * pipe.length / (g * pipe.hydraulicdiameter^5)) * (log(pipe.roughness / (3.7 * pipe.hydraulicdiameter) + 4.62 * (fluid.kinematicviscosity * pipe.hydraulicdiameter / fluid.flowrate)^0.9))^-2;
                % calculate difference in pressure
                pipe.differential = (pipe.hL + pipe.length * sind(pipe.angle)) * fluid.density  * g;
                fluid.flow = "The flow is turbulent";
            end

        case 3
            % calculatind the pressure difference
            pipe.differential = pipe.inlet - pipe.outlet;
            
            % calculatind the Head Loss
            pipe.hL = pipe.differential / (fluid.density * g) - pipe.length * sind(pipe.angle);
            
            %assume turbulent
            % calculate Dh
            pipe.hydraulicdiameter = 0.66 * (pipe.roughness^1.25 * (pipe.length * fluid.flowrate^2 / (g * pipe.hL))^4.75 + fluid.kinematicviscosity * fluid.flowrate^9.4 * (pipe.length / (g * pipe.hL))^5.2)^0.04;
            % calculate flowspeed
            fluid.flowspeed = 4 * fluid.flowrate / (pi * pipe.hydraulicdiameter^2);
            % calculate reynolds number
            fluid.Re = fluid.density * fluid.flowspeed * pipe.hydraulicdiameter / fluid.dynamicviscosity;
            fluid.flow = "The flow is turbulent";

            %if flow is in fact laminar
            if (fluid.Re <= 2300) 
                % calculate new Dh
                pipe.hydraulicdiameter = (fluid.flowrate * (128 * fluid.dynamicviscosity * pipe.length) / (pi * fluid.density * g * pipe.hL))^(1/4);
                % calculate V
                fluid.flowspeed = 4 * fluid.flowrate / (pi * pipe.hydraulicdiameter^2);
                % calculate Re
                fluid.Re = fluid.density*fluid.flowspeed*pipe.hydraulicdiameter/fluid.dynamicviscosity;
                fluid.flow = "The flow is laminar";
            end
    end
end

