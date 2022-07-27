%WARNING: DATA BELOW SET FOR ONLY T, NOT SEPARATED BY LINES


%Extracting variables necessary
TowLat = T.Lat_Deg + T.Lat_Min/60;
TowLon = -T.Lon_Deg + -T.Lon_Min/60;
TowDat = T.Tow_Date;
TowSTim = T.TowSTime;
TowETim = T.TowETime;
TowSTimdtnm = datenum(TowSTim);
TowETimdtnm = datenum(TowETim);


%% for fun data
% this shows the unique latitudes present in the tow, maybe use for another
% parameter
[cnt_unique, unique_a] = histogram(TowLat,unique(TowLat));

% this creates a plot of the locations sampled by the tow
figure(1); clf;
geoscatter(TowLat, TowLon,50,'o','filled')
geobasemap colorterrain
count = histcounts2(TowLon, TowLat, 'BinWidth', [3, 3]);

% this creates a plot of the locations sampled by the spray glider
% (remember to load in the data)
figure(1); clf;
geoscatter(bindata.lat, bindata.lon,50,'o','filled')
geobasemap colorterrain

% this converts from Unix time to datestring cell and cell to datetime (ask
% professor if time is beginning or end and how to get both variables)
Spraytimecell = ut2ds(bindata.time);
Spraytime = datetime(Spraytimecell,'InputFormat','dd-MMM-yyyy HH:mm:ss');
Spraytimedtnm = datenum(Spraytime);

%This gives the lat and lon for the glider (see if latu or lat is better)
SprayLon = bindata.lon;
SprayLat = bindata.lat;

% this creates the amount of time the tow took
UwayTime = datetime(T.End_Time,'InputFormat','HH:mm') - datetime(T.Tow_Time,'InputFormat','HH:mm');
UwayTime(UwayTime<0) = UwayTime(UwayTime<0) + hours(24);

% this finds distance traveled during the tow assuming a travel speed of 2
% knots and uses the time previously calculated
UwayDist = minutes((UwayTime)*0.0308667*2);

% This function calculates the distance between the Spray and the Tow in km
Tow2Spraydistandmin = distallpts(TowLon,TowLat,SprayLon,SprayLat);
Tow2Spraydist = Tow2Spraydistandmin(:,1:1927);
Tow2Spraymin = Tow2Spraydistandmin(:,1928);

% This function categorizes the distances by using the radius from the
% tow to see if they are within a general area of approximately 1 km,
% within an approximate radius of 5 km, or out of this general radius
% (these radii need to be more standardized)
[pctdist_from_Tow,Tow_Position] = inrangedist(Tow2Spraymin,UwayDist);

% This function calculates if the glider is within the date for the Tow
Tow_indaterange = inrangedate(Spraytimedtnm,TowETimdtnm);

% This function finds the datapoints that are both in the distance range
% and the date range
[Tow_indatedistrange,Tow_numwithinkm, Tow_numwithinfivekm, Tow_numOut, Tow_numIn,Tow_sum] = inrangedistdate(Spraytimedtnm,TowETimdtnm,Tow2Spraymin,UwayDist,SprayLon,SprayLat);








