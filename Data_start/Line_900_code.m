%% T90 CODE

%Setup data and filter by line and Nortek(3)/Sontek(2)/Neither(1)
S90 = combineMissions_var('90.0',{'t','s','abs','udop','vdop','wdop'});

S90N = S90;
S90N.time = S90.time(S90.sonnor(:)==3);
S90N.lon = S90.lon(S90.sonnor(:)==3);
S90N.lat = S90.lat(S90.sonnor(:)==3);
S90N.dist = S90.dist(S90.sonnor(:)==3);
S90N.offset = S90.offset(S90.sonnor(:)==3);
S90N.timeu = S90.timeu(S90.sonnor(:)==3);
S90N.lonu = S90.lonu(S90.sonnor(:)==3);
S90N.latu = S90.latu(S90.sonnor(:)==3);
S90N.distu = S90.distu(S90.sonnor(:)==3);
S90N.offsetu = S90.offsetu(S90.sonnor(:)==3);
S90N.u = S90.u(S90.sonnor(:)==3);
S90N.v = S90.v(S90.sonnor(:)==3);
S90N.t = S90.t(:,S90.sonnor(:)==3);
S90N.s = S90.s(:,S90.sonnor(:)==3);
S90N.abs = S90.abs(:,S90.sonnor(:)==3);
S90N.udop = S90.udop(:,S90.sonnor(:)==3);
S90N.vdop = S90.vdop(:,S90.sonnor(:)==3);
S90N.wdop = S90.wdop(:,S90.sonnor(:)==3);
S90N.sonnor = S90.sonnor(S90.sonnor(:)==3);
S90N.absmeans = mean(S90N.abs(S90N.depth<=210,:),'omitnan')';

S90S = S90;
S90S.time = S90.time(S90.sonnor(:)==2);
S90S.lon = S90.lon(S90.sonnor(:)==2);
S90S.lat = S90.lat(S90.sonnor(:)==2);
S90S.dist = S90.dist(S90.sonnor(:)==2);
S90S.offset = S90.offset(S90.sonnor(:)==2);
S90S.timeu = S90.timeu(S90.sonnor(:)==2);
S90S.lonu = S90.lonu(S90.sonnor(:)==2);
S90S.latu = S90.latu(S90.sonnor(:)==2);
S90S.distu = S90.distu(S90.sonnor(:)==2);
S90S.offsetu = S90.offsetu(S90.sonnor(:)==2);
S90S.u = S90.u(S90.sonnor(:)==2);
S90S.v = S90.v(S90.sonnor(:)==2);
S90S.t = S90.t(:,S90.sonnor(:)==2);
S90S.s = S90.s(:,S90.sonnor(:)==2);
S90S.abs = S90.abs(:,S90.sonnor(:)==2);
S90S.udop = S90.udop(:,S90.sonnor(:)==2);
S90S.vdop = S90.vdop(:,S90.sonnor(:)==2);
S90S.wdop = S90.wdop(:,S90.sonnor(:)==2);
S90S.sonnor = S90.sonnor(S90.sonnor(:)==2);
S90S.absmeans = mean(S90S.abs(S90S.depth<=210,:),'omitnan')';

%Extracting variables necessary
T90vars = towvars(T90);

%% for fun data
% this shows the unique latitudes present in the tow, maybe use for another
% parameter
% [cnt_unique, unique_a] = hist(T90vars.TowLat,unique(T90vars.TowLat));

% this creates a plot of the locations sampled by the tow
% figure(1); clf;
% geoscatter(S90N.lat, S90N.lon,50,'o','filled')
% hold on
% geoscatter(T90vars.TowLat, T90vars.TowLon,50,'^','filled','k')
% geobasemap colorterrain
% count = histcounts2(T90vars.TowLon, T90vars.TowLat, 'BinWidth', [3, 3]);
% not sure what to do with this function yet


% this converts from Unix time to datestring cell and cell to datetime (ask
% professor if time is beginning or end and how to get both variables)
S90Ntimstf = spraytimvars(S90N);

S90Stimstf = spraytimvars(S90S);

% this creates the amount of time the tow took
UwayTime90 = datetime(T90.End_Time,'InputFormat','HH:mm') - datetime(T90.Tow_Time,'InputFormat','HH:mm');
UwayTime90(UwayTime90<0) = UwayTime90(UwayTime90<0) + hours(24);

% this finds distance traveled during the tow assuming a travel speed of 2
% knots and uses the time previously calculated
UwayDist90 = minutes((UwayTime90)*0.0308677*2);
UwayRad90 = mean(UwayDist90);

% This function calculates the distance between the Spray and the Tow in km
% and time
S90Ndistvars = timlocdist(S90N,T90vars,S90Ntimstf);

S90Sdistvars = timlocdist(S90S,T90vars,S90Stimstf);




scatterpatter2(S90Ndistvars.Tow2Spraylocdist,S90Ndistvars.Tow2Spraytimdist,0.5,0.1,S90N.absmeans,T90vars.TowSmlVol,3)

scatterpatter2(S90Sdistvars.Tow2Spraylocdist,S90Sdistvars.Tow2Spraytimdist,0.5,0.1,S90S.absmeans,T90vars.TowSmlVol,3)




% This function categorizes the distances by using the radius from the
% tow to see if they are within a general area of approximately 1 km,
% within an approximate radius of 5 km, or out of this general radius
% (these radii need to be more standardized)
%[pctdist_from_Tow90N,Tow_Position90N] = inrangedist(S90Ndistvars.Tow2Spraylocmin,UwayRad90);

% This function calculates if the glider is within the date for the Tow
%Tow_indaterange90N = inrangedate(Spraytime90Ndtnm,T90vars.TowETim90dtnm);

% This function finds the datapoints that are both in the distance range
% and the date range
%[Tow_indatedistrange90N,Tow_numwithinkm90N, Tow_numwithinfivekm90N, Tow_numOut90N, Tow_numIn90N,Tow_sum90N] = inrangedistdate(Spraytime90Ndtnm,T90vars.TowETim90dtnm,Tow2Spraymin90N,UwayRad90,S90N.lon,S90N.lat);
