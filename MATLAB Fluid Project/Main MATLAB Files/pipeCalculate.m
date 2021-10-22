function hD = pipeCalculate(pipe)
% PIPECALCULATE  Calculates the hydraulic diameter of the pipe given the shape.
%
%   Input:
%       pipe    The structure that holds all of the pipe information.
%   Output:
%       hD      The hydraulic diameter of the pipe given the shape.
%
%       hD = pipeCalculate(pipe) Calculates the hydraulic diameter of the
%       pipe and assigns the value to hD.
%
%   If the shape of the pipe is a circle this function needs the diameter
%   of the pipe (as an integer) to calculate the hydraulic diameter.
%   If the shape of the pipe is a rectangle this function needs the width
%   (as an integer)and the height (as an integer) of the pipe to calculate
%   the hydraulic diameter.
%   If the shape of the pipe is an ellipse this function needs the major
%   and minor axis (as an integer) of the pipe to calculate the hydraulic
%   diameter.
%   If the shape of the pipe is an isosceles triangle this function needs
%   the side length(as an integer) and the angle (not 0 or 180) of the pipe
%   to calculate the hydraulic diameter.


% Lauren Francis
% EGR 150-3B Fall 2018
% UAB
% Conner/McGariby
% Start Date: November 1, 2018
% Last Revised on Date: November 14, 2018

switch (pipe.shape)
    % Calculates the hydraulic diameter if the shape is a circle.
    case 'Circle'
        hD= pipe.diameter;
        
    % Calculates the hydraulic diameter if the shape is a rectangle.    
    case 'Rectangle'
        hD= (2* pipe.b * pipe.c)/(pipe.b + pipe.c);
    
    % Calculates the hydraulic diameter if the shape is an ellipse.    
    case 'Ellipse'
        E= (pipe.b - pipe.c)/ (pipe.b + pipe.c);
        hD= ((4*pipe.b*pipe.c)*(64-(16*E^2)))/((pipe.b + pipe.c)*(64-(3*E^4)));
    
    % Calculates the hydraulic diameter if the shape is an isosceles trianlge.    
    case 'Isosceles Triangle'
        hD= (pipe.b * sin(pipe.angle))/(1 + sin(pipe.angle/2));
end
end