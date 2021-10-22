function roughness = piperoughess(matchoice)
%PIPEROUGHNESS Assigns a roughness value based on material.
%
%   pipe = piperoughness(matchoice) Takes the user's chosen material,
%       and then associates that value with the appropriate roughness
%       value.
%
%   Input: 
%   matchoice      The user's chosen material, which will tell the function
%                      which value to assign for roughness.
%   Output:
%   roughness           A structure array containing the material and 
%                           roughness information about the pipe.

%   Author: Joshua Nixon
%   Date: November 14, 2018
%   School: Univeristy of Alabama at Birmingham
%   Class: EGR 150-3B

narginchk(1,1)
nargoutchk(1,1)

% Assign a roughness value based off of what material was
%   selected.

roughenssVals = [0 0 4.5 0.01 0.0015 0.0015 0.260 0.150 0.046 0.002 0.045];
roughness = roughenssVals(matchoice);