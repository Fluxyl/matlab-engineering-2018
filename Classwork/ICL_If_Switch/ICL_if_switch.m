% File Name: ICL_if_switch.mat
% --------------------------------------------------------------------------
% Fluxyl
% Engineering Computations with MATLAB
% MATLAB for Engineering
% {Teacher name removed for privacy}
% 
% Start Date: 10/01/2018
% Last Revised On: 10/01/2018
% 
% Purpose: Practice using the if and switch structures in MATLAB.
%             
% Variable List:
% 
%
%% Phase 1
% Prompt the user to input the name of a shape from the list of shapes
%   given above.
% clc
% clear all
% disp(sprintf('circle, ellipse, rectangle, polygon'))
% shape = input('Please input a shape from the list.\n: ','s');

%Calculate and neatly output the perimeter and area of the selected shape
%in the Command window.
% if strcmp(lower(shape),'circle') == 1
%     disp(sprintf('Circle detected.\n'))
%     rCircle = input('Please input the radius.\n: ');
%     pCircle = 2*pi*rCircle;
%     aCircle = pi*rCircle^2;
%     disp(sprintf('The perimeter is %g and the area is %g.',pCircle,aCircle))
%     
% elseif strcmp(lower(shape),'ellipse') == 1
%     disp(sprintf('Ellipse detected.\n'))
%         majEllipse = input('Please input the major axis.\n: ');
%         minEllipse = input('\nPlease input the minor axis.\n: ');
%         pEllipse = 2*pi*sqrt((1/2)*(majEllipse^2+minEllipse^2));
%         aEllipse = pi*majEllipse*minEllipse;
%     disp(sprintf('The perimeter is %g and the area is %g.',pEllipse,aEllipse))
%     
%     
% elseif strcmp(lower(shape),'rectangle') == 1
%     disp(sprintf('Rectangle detected.\n'))
%     lRectangle = input('\nInput the length of the rectangle.\n: ');
%     wRectangle = input('\nInput the width of the rectangle.\n: ');
%     pRectangle = 2*lRectangle + 2*wRectangle;
%     aRectangle = lRectangle * wRectangle;
%     disp(sprintf('The perimeter is %g and the area is %g.',pRectangle,aRectangle));
% 
% elseif strcmp(lower(shape),'polygon') == 1
%     disp(sprintf('Polygon detected.\n'));
%     nPolygon = input('\nEnter the number of sides.\n: ');
%     sPolygon = input('Enter the length of a side.\n: ');
%     pPolygon = nPolygon * sPolygon;
%     aPolygon = (nPolygon * sPolygon)/ 4 * tan(pi/nPolygon);
%     disp(sprintf('The perimeter is %g and the area is %g.',pPolygon,aPolygon));
%     
% else
%     disp(sprintf('I said to choose something from the list, dummy.'))
%     
% end

%% Phase 2
clc
clear
disp(sprintf('circle, ellipse, rectangle, polygon'))
shape = input('Please input a shape from the list.\n: ','s');

%Calculate and neatly output the perimeter and area of the selected shape
%in the Command window.
switch lower(shape)
    case 'circle'
    disp(sprintf('Circle detected.\n'))
    rCircle = input('Please input the radius.\n: ');
    pCircle = 2*pi*rCircle;
    aCircle = pi*rCircle^2;
    disp(sprintf('The perimeter is %g and the area is %g.',pCircle,aCircle))

    case 'ellipse'
        disp(sprintf('Ellipse detected.\n'))
        majEllipse = input('Please input the major axis.\n: ');
        minEllipse = input('\nPlease input the minor axis.\n: ');
        pEllipse = 2*pi*sqrt((1/2)*(majEllipse^2+minEllipse^2));
        aEllipse = pi*majEllipse*minEllipse;
        disp(sprintf('The perimeter is %g and the area is %g.',pEllipse,aEllipse))
    
    case 'rectangle'
    disp(sprintf('Rectangle detected.\n'))
    lRectangle = input('\nInput the length of the rectangle.\n: ');
    wRectangle = input('\nInput the width of the rectangle.\n: ');
    pRectangle = 2*lRectangle + 2*wRectangle;
    aRectangle = lRectangle * wRectangle;
    disp(sprintf('The perimeter is %g and the area is %g.',pRectangle,aRectangle));

    case 'polygon'
    disp(sprintf('Polygon detected.\n'));
    nPolygon = input('\nEnter the number of sides.\n: ');
    sPolygon = input('Enter the length of a side.\n: ');
    pPolygon = nPolygon * sPolygon;
    aPolygon = (nPolygon * sPolygon)/ 4 * tan(pi/nPolygon);
    disp(sprintf('The perimeter is %g and the area is %g.',pPolygon,aPolygon));
    otherwise
         disp(sprintf('I said to choose something from the list, dummy.'));
end