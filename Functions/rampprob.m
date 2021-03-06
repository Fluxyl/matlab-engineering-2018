function varargout = rampprob(vi,ang,varargin)

narginchk(2,4)
nargoutchk(0,2)

switch nargin
    case 2 % No friction and vf = 0.
        a = -9.8*sind(ang);
        vf = 0;
        d = (vf^2 - vi^2)/(2*a);
        varargout{1} = d;
        varargout{2} = vf;
    case 3 % Friction and vf = 0.
        mu = varargin{1};
        a = -9.8*sind(ang) - mu*9.8*cosd(ang);
        vf = 0;
        d = (vf^2 - vi^2)/(2*a);
        varargout{1} = d;
        varargout{2} = vf;
        % Check to see if the objecty stops before L.
        % If it stops, output the stopping distance.
        % If it doesn't stop, output the final velocity.
    case 4
        mu = varargin{1};
        a = -9.8*sind(ang) - mu*9.8*cosd(ang);
        vf = 0;
        d = (vf^2 - vi^2)/(2*a);
        L = varargin{2};
        varargout{1} = d;
        varargout{2} = vf;
        if d > L
            vf = sqrt(2*a*L + vi^2);
            varargout{1} = L;
            varargout{2} = vf;
        end
end

end