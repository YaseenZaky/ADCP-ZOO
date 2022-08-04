%% T80 CODE

%Setup data and filter by line and Nortek(3)/Sontek(2)/Neither(1)
S80 = combineMissions_var('80.0',{'t','s','abs','udop','vdop','wdop'});

S80N = S80;
S80N.time = S80.time(S80.sonnor(:)==3);
S80N.lon = S80.lon(S80.sonnor(:)==3);
S80N.lat = S80.lat(S80.sonnor(:)==3);
S80N.dist = S80.dist(S80.sonnor(:)==3);
S80N.offset = S80.offset(S80.sonnor(:)==3);
S80N.timeu = S80.timeu(S80.sonnor(:)==3);
S80N.lonu = S80.lonu(S80.sonnor(:)==3);
S80N.latu = S80.latu(S80.sonnor(:)==3);
S80N.distu = S80.distu(S80.sonnor(:)==3);
S80N.offsetu = S80.offsetu(S80.sonnor(:)==3);
S80N.u = S80.u(S80.sonnor(:)==3);
S80N.v = S80.v(S80.sonnor(:)==3);
S80N.t = S80.t(:,S80.sonnor(:)==3);
S80N.s = S80.s(:,S80.sonnor(:)==3);
S80N.abs = S80.abs(:,S80.sonnor(:)==3);
S80N.udop = S80.udop(:,S80.sonnor(:)==3);
S80N.vdop = S80.vdop(:,S80.sonnor(:)==3);
S80N.wdop = S80.wdop(:,S80.sonnor(:)==3);
S80N.sonnor = S80.sonnor(S80.sonnor(:)==3);
S80N.absmeans = mean(S80N.abs(S80N.depth<=210,:),'omitnan')';

S80S = S80;
S80S.time = S80.time(S80.sonnor(:)==2);
S80S.lon = S80.lon(S80.sonnor(:)==2);
S80S.lat = S80.lat(S80.sonnor(:)==2);
S80S.dist = S80.dist(S80.sonnor(:)==2);
S80S.offset = S80.offset(S80.sonnor(:)==2);
S80S.timeu = S80.timeu(S80.sonnor(:)==2);
S80S.lonu = S80.lonu(S80.sonnor(:)==2);
S80S.latu = S80.latu(S80.sonnor(:)==2);
S80S.distu = S80.distu(S80.sonnor(:)==2);
S80S.offsetu = S80.offsetu(S80.sonnor(:)==2);
S80S.u = S80.u(S80.sonnor(:)==2);
S80S.v = S80.v(S80.sonnor(:)==2);
S80S.t = S80.t(:,S80.sonnor(:)==2);
S80S.s = S80.s(:,S80.sonnor(:)==2);
S80S.abs = S80.abs(:,S80.sonnor(:)==2);
S80S.udop = S80.udop(:,S80.sonnor(:)==2);
S80S.vdop = S80.vdop(:,S80.sonnor(:)==2);
S80S.wdop = S80.wdop(:,S80.sonnor(:)==2);
S80S.sonnor = S80.sonnor(S80.sonnor(:)==2);
S80S.absmeans = mean(S80S.abs(S80S.depth<=210,:),'omitnan')';

%Extracting variables necessary
T80vars = towvars(T80);

%% for fun data
% this shows the unique latitudes present in the tow, maybe use for another
% parameter
% [cnt_unique, unique_a] = hist(T80vars.TowLat,unique(T80vars.TowLat));

% this creates a plot of the locations sampled by the tow
% figure(1); clf;
% geoscatter(S80N.lat, S80N.lon,50,'o','filled')
% hold on
% geoscatter(T80vars.TowLat, T80vars.TowLon,50,'^','filled','k')
% geobasemap colorterrain
% count = histcounts2(T80vars.TowLon, T80vars.TowLat, 'BinWidth', [3, 3]);
% not sure what to do with this function yet


% this converts from Unix time to datestring cell and cell to datetime (ask
% professor if time is beginning or end and how to get both variables)
S80Ntimstf = spraytimvars(S80N);

S80Stimstf = spraytimvars(S80S);

% this creates the amount of time the tow took
UwayTime80 = datetime(T80.End_Time,'InputFormat','HH:mm') - datetime(T80.Tow_Time,'InputFormat','HH:mm');
UwayTime80(UwayTime80<0) = UwayTime80(UwayTime80<0) + hours(24);

% this finds distance traveled during the tow assuming a travel speed of 2
% knots and uses the time previously calculated
UwayDist80 = minutes((UwayTime80)*0.0308677*2);
UwayRad80 = mean(UwayDist80);

% This function calculates the distance between the Spray and the Tow in km
% and time
S80Ndistvars = timlocdist(S80N,T80vars,S80Ntimstf);

S80Sdistvars = timlocdist(S80S,T80vars,S80Stimstf);




scatterpatter2(S80Ndistvars.Tow2Spraylocdist,S80Ndistvars.Tow2Spraytimdist,0.5,0.1,S80N.absmeans,T80vars.TowSmlVol,3)

scatterpatter2(S80Sdistvars.Tow2Spraylocdist,S80Sdistvars.Tow2Spraytimdist,0.5,0.1,S80S.absmeans,T80vars.TowSmlVol,3)




% This function categorizes the distances by using the radius from the
% tow to see if they are within a general area of approximately 1 km,
% within an approximate radius of 5 km, or out of this general radius
% (these radii need to be more standardized)
%[pctdist_from_Tow80N,Tow_Position80N] = inrangedist(S80Ndistvars.Tow2Spraylocmin,UwayRad80);

% This function calculates if the glider is within the date for the Tow
%Tow_indaterange80N = inrangedate(Spraytime80Ndtnm,T80vars.TowETim80dtnm);

% This function finds the datapoints that are both in the distance range
% and the date range
%[Tow_indatedistrange80N,Tow_numwithinkm80N, Tow_numwithinfivekm80N, Tow_numOut80N, Tow_numIn80N,Tow_sum80N] = inrangedistdate(Spraytime80Ndtnm,T80vars.TowETim80dtnm,Tow2Spraymin80N,UwayRad80,S80N.lon,S80N.lat);
