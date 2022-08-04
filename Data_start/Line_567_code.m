%% T57 CODE

%Setup data and filter by line and Nortek(3)/Sontek(2)/Neither(1)
S57 = combineMissions_var('56.7',{'t','s','abs','udop','vdop','wdop'});

S57N = S57;
S57N.time = S57.time(S57.sonnor(:)==3);
S57N.lon = S57.lon(S57.sonnor(:)==3);
S57N.lat = S57.lat(S57.sonnor(:)==3);
S57N.dist = S57.dist(S57.sonnor(:)==3);
S57N.offset = S57.offset(S57.sonnor(:)==3);
S57N.timeu = S57.timeu(S57.sonnor(:)==3);
S57N.lonu = S57.lonu(S57.sonnor(:)==3);
S57N.latu = S57.latu(S57.sonnor(:)==3);
S57N.distu = S57.distu(S57.sonnor(:)==3);
S57N.offsetu = S57.offsetu(S57.sonnor(:)==3);
S57N.u = S57.u(S57.sonnor(:)==3);
S57N.v = S57.v(S57.sonnor(:)==3);
S57N.t = S57.t(:,S57.sonnor(:)==3);
S57N.s = S57.s(:,S57.sonnor(:)==3);
S57N.abs = S57.abs(:,S57.sonnor(:)==3);
S57N.udop = S57.udop(:,S57.sonnor(:)==3);
S57N.vdop = S57.vdop(:,S57.sonnor(:)==3);
S57N.wdop = S57.wdop(:,S57.sonnor(:)==3);
S57N.sonnor = S57.sonnor(S57.sonnor(:)==3);
S57N.absmeans = mean(S57N.abs(S57N.depth<=210,:),'omitnan')';

%Extracting variables necessary
T57vars = towvars(T57);

%% for fun data
% this shows the unique latitudes present in the tow, maybe use for another
% parameter
% [cnt_unique, unique_a] = hist(T57vars.TowLat,unique(T57vars.TowLat));

% this creates a plot of the locations sampled by the tow
figure(1); clf;
geoscatter(S57N.lat, S57N.lon,50,'o','filled')
hold on
geoscatter(T57vars.TowLat, T57vars.TowLon,50,'^','filled','k')
geobasemap colorterrain
% count = histcounts2(T57vars.TowLon, T57vars.TowLat, 'BinWidth', [3, 3]);
% not sure what to do with this function yet


% this converts from Unix time to datestring cell and cell to datetime (ask
% professor if time is beginning or end and how to get both variables)
S57Ntimstf = spraytimvars(S57N);


% this creates the amount of time the tow took
UwayTime57 = datetime(T57.End_Time,'InputFormat','HH:mm') - datetime(T57.Tow_Time,'InputFormat','HH:mm');
UwayTime57(UwayTime57<0) = UwayTime57(UwayTime57<0) + hours(24);

% this finds distance traveled during the tow assuming a travel speed of 2
% knots and uses the time previously calculated
UwayDist57 = minutes((UwayTime57)*0.0308677*2);
UwayRad57 = mean(UwayDist57);

% This function calculates the distance between the Spray and the Tow in km
% and time
S57Ndistvars = timlocdist(S57N,T57vars,S57Ntimstf);




scatterpatter2(S57Ndistvars.Tow2Spraylocdist,S57Ndistvars.Tow2Spraytimdist,3,1,S57N.absmeans,T57vars.TowSmlVol,3)





% This function categorizes the distances by using the radius from the
% tow to see if they are within a general area of approximately 1 km,
% within an approximate radius of 5 km, or out of this general radius
% (these radii need to be more standardized)
%[pctdist_from_Tow57N,Tow_Position57N] = inrangedist(S57Ndistvars.Tow2Spraylocmin,UwayRad57);

% This function calculates if the glider is within the date for the Tow
%Tow_indaterange57N = inrangedate(Spraytime57Ndtnm,T57vars.TowETim57dtnm);

% This function finds the datapoints that are both in the distance range
% and the date range
%[Tow_indatedistrange57N,Tow_numwithinkm57N, Tow_numwithinfivekm57N, Tow_numOut57N, Tow_numIn57N,Tow_sum57N] = inrangedistdate(Spraytime57Ndtnm,T57vars.TowETim57dtnm,Tow2Spraymin57N,UwayRad57,S57N.lon,S57N.lat);
