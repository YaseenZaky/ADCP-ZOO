function [dist offset] = calcdistfromshoreCRM(x,y,linestr)

% Calculates distance along CalCOFI line and gives offset from line.
% Converse of calcposalonglineCFM.m. 
% calcdistfromshore.m and calcdistfromshoreCRM.m differ by respective
% definitions of dist==0. In calcdistfromshore.m, dist==0 is defined by the
% location of the first CalCOFI station. In calcdistfromshoreCRM.m, dist==0
% is defined by the location of the shore (as computed from the CRM
% bathymetric data set). Inputs are x (longitude), y (latitude), and string
% line ('line66','line80','line90',etc.)
%
% K.Zaba, 12 March 2014

% Load Shore Position Data
%load '/Users/kasiazaba/Documents/SIO_Spray/ClimatologyCCS/BathyAnalysis/shoreposition.mat';
load 'shoreposition.mat'

% Set parameters
matname = 'calcofilines.mat';
%matname = '/Volumes/spray/src/utility/stations/calcofilines.mat';
nm2km = 1.852;
deg2min = 60;
deg2rad = pi/180;

% CalCOFI Station coordinates
load(matname,'calcofilines')
xsta = calcofilines.(linestr).lon;
ysta = calcofilines.(linestr).lat;
x0 = shoreposition.(linestr).lon;   % longitude of shore
y0 = shoreposition.(linestr).lat;   % latitude of shore
x1 = xsta(xsta == min(xsta)); % longitude of outermost station
y1 = ysta(xsta == min(xsta)); % latitude of outermost station

% Calculate distance/angle to zero point
dy = (y1-y0)*deg2min;
dx = cos(1/2*(y1+y0)*deg2rad)*(x1-x0)*deg2min;
ang0 = atan2(dy,dx); % orientation of line, radians north of east 
dy = (y-y0)*deg2min;
dx = cos(1/2*(y+y0)*deg2rad).*(x-x0)*deg2min;
dist0 = sqrt(dy.^2+dx.^2)*nm2km;
ang = atan2(dy,dx);
theta = ang0-ang;   % angle between line and vector to profile point (+ if north of line)

% Calculate distance from shore to profile (project onto line)
dist = dist0.*cos(theta);   % distance from zero point along line
offset = dist0.*sin(theta); % perpendicular distance from line