%% T67 CODE

%Setup data and filter by line and Nortek(3)/Sontek(2)/Neither(1)
S67 = combineMissions_var('66.7',{'t','s','abs','udop','vdop','wdop'});

S67N = S67;
S67N.time = S67.time(S67.sonnor(:)==3);
S67N.lon = S67.lon(S67.sonnor(:)==3);
S67N.lat = S67.lat(S67.sonnor(:)==3);
S67N.dist = S67.dist(S67.sonnor(:)==3);
S67N.offset = S67.offset(S67.sonnor(:)==3);
S67N.timeu = S67.timeu(S67.sonnor(:)==3);
S67N.lonu = S67.lonu(S67.sonnor(:)==3);
S67N.latu = S67.latu(S67.sonnor(:)==3);
S67N.distu = S67.distu(S67.sonnor(:)==3);
S67N.offsetu = S67.offsetu(S67.sonnor(:)==3);
S67N.u = S67.u(S67.sonnor(:)==3);
S67N.v = S67.v(S67.sonnor(:)==3);
S67N.t = S67.t(:,S67.sonnor(:)==3);
S67N.s = S67.s(:,S67.sonnor(:)==3);
S67N.abs = S67.abs(:,S67.sonnor(:)==3);
S67N.udop = S67.udop(:,S67.sonnor(:)==3);
S67N.vdop = S67.vdop(:,S67.sonnor(:)==3);
S67N.wdop = S67.wdop(:,S67.sonnor(:)==3);
S67N.sonnor = S67.sonnor(S67.sonnor(:)==3);
S67N.absmeans = mean(S67N.abs(S67N.depth<=210,:),'omitnan')';

S67S = S67;
S67S.time = S67.time(S67.sonnor(:)==2);
S67S.lon = S67.lon(S67.sonnor(:)==2);
S67S.lat = S67.lat(S67.sonnor(:)==2);
S67S.dist = S67.dist(S67.sonnor(:)==2);
S67S.offset = S67.offset(S67.sonnor(:)==2);
S67S.timeu = S67.timeu(S67.sonnor(:)==2);
S67S.lonu = S67.lonu(S67.sonnor(:)==2);
S67S.latu = S67.latu(S67.sonnor(:)==2);
S67S.distu = S67.distu(S67.sonnor(:)==2);
S67S.offsetu = S67.offsetu(S67.sonnor(:)==2);
S67S.u = S67.u(S67.sonnor(:)==2);
S67S.v = S67.v(S67.sonnor(:)==2);
S67S.t = S67.t(:,S67.sonnor(:)==2);
S67S.s = S67.s(:,S67.sonnor(:)==2);
S67S.abs = S67.abs(:,S67.sonnor(:)==2);
S67S.udop = S67.udop(:,S67.sonnor(:)==2);
S67S.vdop = S67.vdop(:,S67.sonnor(:)==2);
S67S.wdop = S67.wdop(:,S67.sonnor(:)==2);
S67S.sonnor = S67.sonnor(S67.sonnor(:)==2);
S67S.absmeans = mean(S67S.abs(S67S.depth<=210,:),'omitnan')';

%Extracting variables necessary
T67vars = towvars(T67);

%% for fun data
% this shows the unique latitudes present in the tow, maybe use for another
% parameter
% [cnt_unique, unique_a] = hist(T67vars.TowLat,unique(T67vars.TowLat));

% this creates a plot of the locations sampled by the tow
% figure(1); clf;
% geoscatter(S67N.lat, S67N.lon,50,'o','filled')
% hold on
% geoscatter(T67vars.TowLat, T67vars.TowLon,50,'^','filled','k')
% geobasemap colorterrain
% count = histcounts2(T67vars.TowLon, T67vars.TowLat, 'BinWidth', [3, 3]);
% not sure what to do with this function yet


% this converts from Unix time to datestring cell and cell to datetime (ask
% professor if time is beginning or end and how to get both variables)
S67Ntimstf = spraytimvars(S67N);

S67Stimstf = spraytimvars(S67S);

% this creates the amount of time the tow took
UwayTime67 = datetime(T67.End_Time,'InputFormat','HH:mm') - datetime(T67.Tow_Time,'InputFormat','HH:mm');
UwayTime67(UwayTime67<0) = UwayTime67(UwayTime67<0) + hours(24);

% this finds distance traveled during the tow assuming a travel speed of 2
% knots and uses the time previously calculated
UwayDist67 = minutes((UwayTime67)*0.0308677*2);
UwayRad67 = mean(UwayDist67);

% This function calculates the distance between the Spray and the Tow in km
% and time
S67Ndistvars = timlocdist(S67N,T67vars,S67Ntimstf);

S67Sdistvars = timlocdist(S67S,T67vars,S67Stimstf);




scatterpatter2(S67Ndistvars.Tow2Spraylocdist,S67Ndistvars.Tow2Spraytimdist,3,1,S67N.absmeans,T67vars.TowSmlVol,3)

scatterpatter2(S67Sdistvars.Tow2Spraylocdist,S67Sdistvars.Tow2Spraytimdist,3,1,S67S.absmeans,T67vars.TowSmlVol,3)


% This function categorizes the distances by using the radius from the
% tow to see if they are within a general area of approximately 1 km,
% within an approximate radius of 5 km, or out of this general radius
% (these radii need to be more standardized)
%[pctdist_from_Tow67N,Tow_Position67N] = inrangedist(S67Ndistvars.Tow2Spraylocmin,UwayRad67);

% This function calculates if the glider is within the date for the Tow
%Tow_indaterange67N = inrangedate(Spraytime67Ndtnm,T67vars.TowETim67dtnm);

% This function finds the datapoints that are both in the distance range
% and the date range
%[Tow_indatedistrange67N,Tow_numwithinkm67N, Tow_numwithinfivekm67N, Tow_numOut67N, Tow_numIn67N,Tow_sum67N] = inrangedistdate(Spraytime67Ndtnm,T67vars.TowETim67dtnm,Tow2Spraymin67N,UwayRad67,S67N.lon,S67N.lat);
