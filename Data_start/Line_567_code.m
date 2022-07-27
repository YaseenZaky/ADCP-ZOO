%% T66 CODE

%Get Glider missions on this line
S661 = load('19C01101_bin.mat');
S662 = load('20602801_bin.mat');
S663 = load('20A01101_bin.mat');
S664 = load('21202801_bin.mat');
S665 = load('21601101_bin.mat');
S666 = load('21A02801_bin.mat');

%Extracting variables necessary
TowLat66 = T66.Lat_Deg + T66.Lat_Min/60;
TowLon66 = -T66.Lon_Deg + -T66.Lon_Min/60;
TowDat66 = T66.Tow_Date;
TowSTim66 = T66.TowSTime;
TowETim66 = T66.TowETime;
TowSTim66dtnm = datenum(TowSTim66);
TowETim66dtnm = datenum(TowETim66);


%% for fun data
% this shows the unique latitudes present in the tow, maybe use for another
% parameter
[cnt_unique, unique_a] = hist(TowLat66,unique(TowLat66));

% this creates a plot of the locations sampled by the tow
figure(1); clf;
geoscatter(TowLat66, TowLon66,50,'o','filled')
geobasemap colorterrain
count = histcounts2(TowLon66, TowLat66, 'BinWidth', [3, 3]);

% this creates a plot of the locations sampled by the spray glider
% (remember to load in the data)
figure(2); clf;
geoscatter(S661.bindata.lat, S661.bindata.lon,50,'o','filled')
hold on
geoscatter(S662.bindata.lat, S662.bindata.lon,50,'o','filled')
hold on
geoscatter(S663.bindata.lat, S663.bindata.lon,50,'o','filled')
hold on
geoscatter(S664.bindata.lat, S664.bindata.lon,50,'o','filled')
hold on
geoscatter(S665.bindata.lat, S665.bindata.lon,50,'o','filled')
hold on
geoscatter(S666.bindata.lat, S666.bindata.lon,50,'o','filled')
geobasemap colorterrain

% cleanup of data
S66times = [S661.bindata.time;S662.bindata.time;S663.bindata.time;S664.bindata.time;S665.bindata.time;S666.bindata.time];
S66lats = [S661.bindata.lat;S662.bindata.lat;S663.bindata.lat;S664.bindata.lat;S665.bindata.time;S666.bindata.lat];
S66lons = [S661.bindata.lon;S662.bindata.lon;S663.bindata.lon;S664.bindata.lon;S665.bindata.lon;S666.bindata.lon];


% this converts from Unix time to datestring cell and cell to datetime (ask
% professor if time is beginning or end and how to get both variables)
Spraytimecell66 = ut2ds(S66times);
Spraytime66 = datetime(Spraytimecell66,'InputFormat','dd-MMM-yyyy HH:mm:ss');
Spraytime66dtnm = datenum(Spraytime66);

% this creates the amount of time the tow took
UwayTime66 = datetime(T66.End_Time,'InputFormat','HH:mm') - datetime(T66.Tow_Time,'InputFormat','HH:mm');
UwayTime66(UwayTime66<0) = UwayTime66(UwayTime66<0) + hours(24);

% this finds distance traveled during the tow assuming a travel speed of 2
% knots and uses the time previously calculated
UwayDist66 = minutes((UwayTime66)*0.0308667*2);

% This function calculates the distance between the Spray and the Tow in km
Tow2Spraydistandmin66 = distallpts(TowLon66,TowLat66,S66lons,S66lats);
Tow2Spraydist66 = Tow2Spraydistandmin66(:,1:end-1);
Tow2Spraymin66 = Tow2Spraydistandmin66(:,end);

% This function categorizes the distances by using the radius from the
% tow to see if they are within a general area of approximately 1 km,
% within an approximate radius of 5 km, or out of this general radius
% (these radii need to be more standardized)
[pctdist_from_Tow66,Tow_Position66] = inrangedist(Tow2Spraymin66,UwayDist66);
pctdist_from_Tow66 = pctdist_from_Tow66';
Tow_Position66 = Tow_Position66';

% This function calculates if the glider is within the date for the Tow
Tow_indaterange66 = inrangedate(Spraytime66dtnm,TowETim66dtnm);

% This function finds the datapoints that are both in the distance range
% and the date range
[Tow_indatedistrange66,Tow_numwithinkm66, Tow_numwithinfivekm66, Tow_numOut66, Tow_numIn66,Tow_sum66] = inrangedistdate(Spraytime66dtnm,TowETim66dtnm,Tow2Spraymin66,UwayDist66,S66lons,S66lats);
