function pipe = pipeProperties(pipe)
% PIPEPROPERTIES  Determines the shape of the pipe and prompts for
% parameters by using dialog boxes.
%   The input is the structure of the pipe.
%   The output stores the shape of the pipe along with the specifc parameters for that shape.
%       Circle parameter include pipe.diameter.
%       Rectangle parameters include pipe.b and pipe.c.
%       Ellipse parameters include pipe.b and pipe.c.
%       Isosceles Triangle parameterss include pipe.b and pipe.angle.


%Lauren Francis
% EGR 150-3B Fall 2018
% UAB
% Conner/McGariby
% Start Date: November 1, 2018
% Last Revised on Date: November 14, 2018

% Options for shape of the pipe.
choices={'Circle','Rectangle','Ellipse','Isosceles Triangle'};

% Dialog box for pipe shape selection.
selected=listdlg('PromptString','What shape is the cross-section of your pipe?',...
    'SelectionMode','single','ListString',choices,'Name','Shapes','ListSize',[400 200]);


switch (selected)
    % Prompts user for criteria if the shape is a circle.
    case 1
        pipe.shape = 'Circle';
        pipe.diameter= abs(str2num(cell2mat(inputdlg('Input Diameter, the diameter of the pipe in meters.','Diameter of the pipe.',1))));
        while isempty(pipe.diameter) == 1
            error('Please enter valid input.')
        end
        
    % Prompts user for criteria if the shape is a rectangle.
    case 2
        pipe.shape = 'Rectangle';
        pipe.b= abs(str2num(cell2mat(inputdlg('Input B, the width of the pipe in meters.','Width of the pipe.',1))));
        pipe.c= abs(str2num(cell2mat(inputdlg('Input C, the height of the pipe in meters.','Height of the pipe.',1))));
        while isempty(pipe.b) == 1
            error('Please enter valid input.')
        end
        while isempty(pipe.c) == 1
            error('Please enter valid input.')
        end
        
    % Prompts user for criteria if the shape is an ellipse.    
    case 3
        pipe.shape = 'Ellipse';
        pipe.b= abs(str2num(cell2mat(inputdlg('Input B, the major axis of the pipe in meters.','Major axis of the pipe.',1))));
        pipe.c= abs(str2num(cell2mat(inputdlg('Input C, the minor of the pipe in meters.','Minor axis of the pipe.',1))));
        while isempty(pipe.b) == 1
            error('Please enter valid input.')
        end
        while isempty(pipe.c) == 1
            error('Please enter valid input.')
        end
        
    % Prompts user for criteria if the shape is an isosceles triangle.    
    case 4
        pipe.shape = 'Isosceles Triangle';
        pipe.b= abs(str2num(cell2mat(inputdlg('Input B, the side length of the pipe in meters.','Side length of the pipe.',1))));
        while isempty(pipe.b) == 1
            error('Please enter valid input.')
        end
        pipe.iangle= abs(str2num(cell2mat(inputdlg('Input Angle, the angle of the pipe in degrees.','Angle of the pipe.',1))));
        while (pipe.angle == 0 || pipe.angle == 180)
            error('Please enter a valid angle.')
            
        end
        
end
end

