%% T66 CODE

%Get Glider missions on this line Sontek
S66S1 = load('07401401_bin.mat');
S66S2 = load('07A01401_bin.mat');
S66S3 = load('08401401_bin.mat');
S66S4 = load('08703001_bin.mat');
S66S5 = load('09301401_bin.mat');
S66S6 = load('09701101_bin.mat');
S66S7 = load('09B01401_bin.mat');
S66S8 = load('10301401_bin.mat');
S66S9 = load('10704101_bin.mat');
S66S10 = load('10A01401_bin.mat');
S66S11 = load('11104101_bin.mat');
S66S12 = load('11501401_bin.mat');
S66S13 = load('11904101_bin.mat');
S66S14 = load('12101401_bin.mat');
S66S15 = load('12404101_bin.mat');
S66S16 = load('12801401_bin.mat');
S66S17 = load('12B04101_bin.mat');
S66S18 = load('13301401_bin.mat');
S66S19 = load('13704101_bin.mat');
S66S20 = load('13B04101_bin.mat');
S66S21 = load('14305701_bin.mat');
S66S22 = load('14602801_bin.mat');
S66S23 = load('14901101_bin.mat');
S66S24 = load('15802501_bin.mat');
S66S25 = load('15B02801_bin.mat');
S66S26 = load('16302501_bin.mat');
S66S27 = load('16602801_bin.mat');
S66S28 = load('16802801_bin.mat');
S66S29 = load('16902501_bin.mat');
S66S30 = load('16C02801_bin.mat');
S66S31 = load('17302501_bin.mat');
S66S32 = load('17702801_bin.mat');
S66S33 = load('17A02501_bin.mat');

%Get Glider missions on this line Nortek
S66N1 = load('15103001_bin.mat');
S66N2 = load('18104001_bin.mat');
S66N3 = load('18402501_bin.mat');
S66N4 = load('18804001_bin.mat');
S66N5 = load('18C02501_bin.mat');
S66N6 = load('19304001_bin.mat');
S66N7 = load('19702501_bin.mat');
S66N8 = load('19A04001_bin.mat');
S66N9 = load('20203501_bin.mat');
S66N10 = load('20604001_bin.mat');
S66N11 = load('20A03501_bin.mat');
S66N12 = load('21204001_bin.mat');
S66N13 = load('21502501_bin.mat');
S66N14 = load('21803501_bin.mat');



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
geoscatter(S66S1.bindata.lat, S66S1.bindata.lon,50,'o','filled')
hold on
geoscatter(S66S2.bindata.lat, S66S2.bindata.lon,50,'o','filled')
hold on
geoscatter(S66S3.bindata.lat, S66S3.bindata.lon,50,'o','filled')
hold on
geoscatter(S66S4.bindata.lat, S66S4.bindata.lon,50,'o','filled')
hold on
geoscatter(S66S5.bindata.lat, S66S5.bindata.lon,50,'o','filled')
hold on
geoscatter(S66S6.bindata.lat, S66S6.bindata.lon,50,'o','filled')
hold on
geoscatter(S66S7.bindata.lat, S66S7.bindata.lon,50,'o','filled')
hold on
geoscatter(S66S8.bindata.lat, S66S8.bindata.lon,50,'o','filled')
hold on
geoscatter(S66S9.bindata.lat, S66S9.bindata.lon,50,'o','filled')
hold on
geoscatter(S66S10.bindata.lat, S66S10.bindata.lon,50,'o','filled')
hold on
geoscatter(S66S11.bindata.lat, S66S11.bindata.lon,50,'o','filled')
hold on
geoscatter(S66S12.bindata.lat, S66S12.bindata.lon,50,'o','filled')
hold on
geoscatter(S66S13.bindata.lat, S66S13.bindata.lon,50,'o','filled')
hold on
geoscatter(S66S14.bindata.lat, S66S14.bindata.lon,50,'o','filled')
hold on
geoscatter(S66S15.bindata.lat, S66S15.bindata.lon,50,'o','filled')
hold on
geoscatter(S66S16.bindata.lat, S66S16.bindata.lon,50,'o','filled')
hold on
geoscatter(S66S17.bindata.lat, S66S17.bindata.lon,50,'o','filled')
hold on
geoscatter(S66S7.bindata.lat, S66S7.bindata.lon,50,'o','filled')
hold on
geoscatter(S66S8.bindata.lat, S66S8.bindata.lon,50,'o','filled')
hold on
geoscatter(S66S9.bindata.lat, S66S9.bindata.lon,50,'o','filled')
hold on
geoscatter(S66S10.bindata.lat, S66S10.bindata.lon,50,'o','filled')
hold on
geoscatter(S66S11.bindata.lat, S66S11.bindata.lon,50,'o','filled')
hold on
geoscatter(S66S12.bindata.lat, S66S12.bindata.lon,50,'o','filled')
hold on
geoscatter(S66S13.bindata.lat, S66S13.bindata.lon,50,'o','filled')
hold on
geoscatter(S66S14.bindata.lat, S66S14.bindata.lon,50,'o','filled')
hold on
geoscatter(S66S15.bindata.lat, S66S15.bindata.lon,50,'o','filled')
hold on
geoscatter(S66S16.bindata.lat, S66S16.bindata.lon,50,'o','filled')
hold on
geoscatter(S66S17.bindata.lat, S66S17.bindata.lon,50,'o','filled')
hold on
geoscatter(S66S18.bindata.lat, S66S18.bindata.lon,50,'o','filled')
hold on
geoscatter(S66S19.bindata.lat, S66S19.bindata.lon,50,'o','filled')
hold on
geoscatter(S66S20.bindata.lat, S66S20.bindata.lon,50,'o','filled')
hold on
geoscatter(S66S21.bindata.lat, S66S21.bindata.lon,50,'o','filled')
hold on
geoscatter(S66S22.bindata.lat, S66S22.bindata.lon,50,'o','filled')
hold on
geoscatter(S66S23.bindata.lat, S66S23.bindata.lon,50,'o','filled')
hold on
geoscatter(S66S24.bindata.lat, S66S24.bindata.lon,50,'o','filled')
hold on
geoscatter(S66S25.bindata.lat, S66S25.bindata.lon,50,'o','filled')
hold on
geoscatter(S66S26.bindata.lat, S66S26.bindata.lon,50,'o','filled')
hold on
geoscatter(S66S27.bindata.lat, S66S27.bindata.lon,50,'o','filled')
hold on
geoscatter(S66S28.bindata.lat, S66S28.bindata.lon,50,'o','filled')
hold on
geoscatter(S66S29.bindata.lat, S66S29.bindata.lon,50,'o','filled')
hold on
geoscatter(S66S30.bindata.lat, S66S30.bindata.lon,50,'o','filled')
hold on
geoscatter(S66S31.bindata.lat, S66S31.bindata.lon,50,'o','filled')
hold on
geoscatter(S66S32.bindata.lat, S66S32.bindata.lon,50,'o','filled')
hold on
geoscatter(S66S33.bindata.lat, S66S33.bindata.lon,50,'o','filled')
geobasemap colorterrain

% cleanup of data
S66Stimes = [S66S1.bindata.time;S66S2.bindata.time;S66S3.bindata.time;S66S4.bindata.time;S66S5.bindata.time;S66S6.bindata.time;S66S7.bindata.time;S66S8.bindata.time;S66S9.bindata.time;S66S10.bindata.time;S66S11.bindata.time;S66S12.bindata.time;S66S13.bindata.time;S66S14.bindata.time;S66S15.bindata.time;S66S16.bindata.time;S66S17.bindata.time;S66S18.bindata.time;S66S19.bindata.time;S66S20.bindata.time;S66S21.bindata.time;S66S22.bindata.time;S66S23.bindata.time;S66S24.bindata.time;S66S25.bindata.time;S66S26.bindata.time;S66S27.bindata.time;S66S28.bindata.time;S66S29.bindata.time;S66S30.bindata.time;S66S31.bindata.time;S66S32.bindata.time;S66S33.bindata.time];
S66Slats = [S66S1.bindata.lat;S66S2.bindata.lat;S66S3.bindata.lat;S66S4.bindata.lat;S66S5.bindata.lat;S66S6.bindata.lat;S66S7.bindata.lat;S66S8.bindata.lat;S66S9.bindata.lat;S66S10.bindata.lat;S66S11.bindata.lat;S66S12.bindata.lat;S66S13.bindata.lat;S66S14.bindata.lat;S66S15.bindata.lat;S66S16.bindata.lat;S66S17.bindata.lat;S66S18.bindata.lat;S66S19.bindata.lat;S66S20.bindata.lat;S66S21.bindata.lat;S66S22.bindata.lat;S66S23.bindata.lat;S66S24.bindata.lat;S66S25.bindata.lat;S66S26.bindata.lat;S66S27.bindata.lat;S66S28.bindata.lat;S66S29.bindata.lat;S66S30.bindata.lat;S66S31.bindata.lat;S66S32.bindata.lat;S66S33.bindata.lat];
S66Slons = [S66S1.bindata.lon;S66S2.bindata.lon;S66S3.bindata.lon;S66S4.bindata.lon;S66S5.bindata.lon;S66S6.bindata.lon;S66S7.bindata.lon;S66S8.bindata.lon;S66S9.bindata.lon;S66S10.bindata.lon;S66S11.bindata.lon;S66S12.bindata.lon;S66S13.bindata.lon;S66S14.bindata.lon;S66S15.bindata.lon;S66S16.bindata.lon;S66S17.bindata.lon;S66S18.bindata.lon;S66S19.bindata.lon;S66S20.bindata.lon;S66S21.bindata.lon;S66S22.bindata.lon;S66S23.bindata.lon;S66S24.bindata.lon;S66S25.bindata.lon;S66S26.bindata.lon;S66S27.bindata.lon;S66S28.bindata.lon;S66S29.bindata.lon;S66S30.bindata.lon;S66S31.bindata.lon;S66S32.bindata.lon;S66S33.bindata.lon];


% this converts from Unix time to datestring cell and cell to datetime (ask
% professor if time is beginning or end and how to get both variables)
Spraytimecell66S = ut2ds(S66Stimes);
Spraytime66S = datetime(Spraytimecell66S,'InputFormat','dd-MMM-yyyy HH:mm:ss');
Spraytime66Sdtnm = datenum(Spraytime66S);

% this creates the amount of time the tow took
UwayTime66S = datetime(T66.End_Time,'InputFormat','HH:mm') - datetime(T66.Tow_Time,'InputFormat','HH:mm');
UwayTime66S(UwayTime66S<0) = UwayTime66S(UwayTime66S<0) + hours(24);

% this finds distance traveled during the tow assuming a travel speed of 2
% knots and uses the time previously calculated
UwayDist66S = minutes((UwayTime66S)*0.0308667*2);
UwayRad66S = mean(UwayDist66S);

% This function calculates the distance between the Spray and the Tow in km
Tow2Spraydistandmin66S = distallpts(TowLon66,TowLat66,S66Slons,S66Slats);
Tow2Spraydist66S = Tow2Spraydistandmin66S(:,1:end-1);
Tow2Spraymin66S = Tow2Spraydistandmin66S(:,end);

% This function categorizes the distances by using the radius from the
% tow to see if they are within a general area of approximately 1 km,
% within an approximate radius of 5 km, or out of this general radius
% (these radii need to be more standardized)
[pctdist_from_Tow66S,Tow_Position66S] = inrangedist(Tow2Spraymin66S,UwayRad66S);

% This function calculates if the glider is within the date for the Tow
Tow_indaterange66S = inrangedate(Spraytime66Sdtnm,TowETim66dtnm);

% This function finds the datapoints that are both in the distance range
% and the date range
[Tow_indatedistrange66S,Tow_numwithinkm66S, Tow_numwithinfivekm66S, Tow_numOut66S, Tow_numIn66S,Tow_sum66S] = inrangedistdate(Spraytime66Sdtnm,TowETim66dtnm,Tow2Spraymin66S,UwayRad66S,S66Slons,S66Slats);