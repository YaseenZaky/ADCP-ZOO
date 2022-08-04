figure(1)
geoscatter(S80N.lat, S80N.lon,50,'o','filled')
hold on
geoscatter(T80vars.TowLat, T80vars.TowLon,50,'^','filled','k')
hold on
geoscatter(S90N.lat, S90N.lon,50,'o','filled')
hold on
geoscatter(T90vars.TowLat, T90vars.TowLon,50,'^','filled','k')
hold on
geoscatter(S57N.lat, S57N.lon,50,'o','filled')
hold on
geoscatter(T57vars.TowLat, T57vars.TowLon,50,'^','filled','k')
hold on
geoscatter(S67N.lat, S67N.lon,50,'o','filled')
hold on
geoscatter(T67vars.TowLat, T67vars.TowLon,50,'^','filled','k')
geobasemap colorterrain


figure(9) %everything
scatterpatter2(S80Ndistvars.Tow2Spraylocdist,S80Ndistvars.Tow2Spraytimdist,3,1,S80N.absmeans,T80vars.TowSmlVol,3);
hold on
scatterpatter2(S90Ndistvars.Tow2Spraylocdist,S90Ndistvars.Tow2Spraytimdist,3,1,S90N.absmeans,T90vars.TowSmlVol,3)
hold on
scatterpatter2(S67Ndistvars.Tow2Spraylocdist,S67Ndistvars.Tow2Spraytimdist,3,1,S67N.absmeans,T67vars.TowSmlVol,3)
hold on
scatterpatter2(S80Sdistvars.Tow2Spraylocdist,S80Sdistvars.Tow2Spraytimdist,3,1,S80S.absmeans,T80vars.TowSmlVol,3)
hold on
scatterpatter2(S90Sdistvars.Tow2Spraylocdist,S90Sdistvars.Tow2Spraytimdist,3,1,S90S.absmeans,T90vars.TowSmlVol,3)
hold on
scatterpatter2(S67Sdistvars.Tow2Spraylocdist,S67Sdistvars.Tow2Spraytimdist,3,1,S67S.absmeans,T67vars.TowSmlVol,3)
title('Everything')

figure(10)
nexttile
scatterpatter2(S80Ndistvars.Tow2Spraylocdist,S80Ndistvars.Tow2Spraytimdist,3,1,S80N.absmeans,T80vars.TowSmlVol,3);
hold on
scatterpatter2(S90Ndistvars.Tow2Spraylocdist,S90Ndistvars.Tow2Spraytimdist,3,1,S90N.absmeans,T90vars.TowSmlVol,3)
hold on
scatterpatter2(S67Ndistvars.Tow2Spraylocdist,S67Ndistvars.Tow2Spraytimdist,3,1,S67N.absmeans,T67vars.TowSmlVol,3)
title('All Nortek')
nexttile
scatterpatter2(S80Sdistvars.Tow2Spraylocdist,S80Sdistvars.Tow2Spraytimdist,3,1,S80S.absmeans,T80vars.TowSmlVol,3)
hold on
scatterpatter2(S90Sdistvars.Tow2Spraylocdist,S90Sdistvars.Tow2Spraytimdist,3,1,S90S.absmeans,T90vars.TowSmlVol,3)
hold on
scatterpatter2(S67Sdistvars.Tow2Spraylocdist,S67Sdistvars.Tow2Spraytimdist,3,1,S67S.absmeans,T67vars.TowSmlVol,3)
title('All Sontek')

figure(12)
nexttile
scatterpatter2(S80Ndistvars.Tow2Spraylocdist,S80Ndistvars.Tow2Spraytimdist,3,1,S80N.absmeans,T80vars.TowSmlVol,2)
hold on
scatterpatter2(S90Ndistvars.Tow2Spraylocdist,S90Ndistvars.Tow2Spraytimdist,3,1,S90N.absmeans,T90vars.TowSmlVol,2)
hold on
scatterpatter2(S67Ndistvars.Tow2Spraylocdist,S67Ndistvars.Tow2Spraytimdist,3,1,S67N.absmeans,T67vars.TowSmlVol,2)
title('All Nortek Night')
nexttile
scatterpatter2(S80Sdistvars.Tow2Spraylocdist,S80Sdistvars.Tow2Spraytimdist,3,1,S80S.absmeans,T80vars.TowSmlVol,2)
hold on
scatterpatter2(S90Sdistvars.Tow2Spraylocdist,S90Sdistvars.Tow2Spraytimdist,3,1,S90S.absmeans,T90vars.TowSmlVol,2)
hold on
scatterpatter2(S67Sdistvars.Tow2Spraylocdist,S67Sdistvars.Tow2Spraytimdist,3,1,S67S.absmeans,T67vars.TowSmlVol,2)
title('All Sontek Night')

figure(14)
nexttile
scatterpatter2(S80Ndistvars.Tow2Spraylocdist,S80Ndistvars.Tow2Spraytimdist,3,1,S80N.absmeans,T80vars.TowSmlVol,1)
hold on
scatterpatter2(S90Ndistvars.Tow2Spraylocdist,S90Ndistvars.Tow2Spraytimdist,3,1,S90N.absmeans,T90vars.TowSmlVol,1)
hold on
scatterpatter2(S67Ndistvars.Tow2Spraylocdist,S67Ndistvars.Tow2Spraytimdist,3,1,S67N.absmeans,T67vars.TowSmlVol,1)
title('All Nortek Day')
nexttile
scatterpatter2(S80Sdistvars.Tow2Spraylocdist,S80Sdistvars.Tow2Spraytimdist,3,1,S80S.absmeans,T80vars.TowSmlVol,1)
hold on
scatterpatter2(S90Sdistvars.Tow2Spraylocdist,S90Sdistvars.Tow2Spraytimdist,3,1,S90S.absmeans,T90vars.TowSmlVol,1)
hold on
scatterpatter2(S67Sdistvars.Tow2Spraylocdist,S67Sdistvars.Tow2Spraytimdist,3,1,S67S.absmeans,T67vars.TowSmlVol,1)
title('All Sontek Day')

figure(16)
nexttile
scatterpatter2(S80Ndistvars.Tow2Spraylocdist,S80Ndistvars.Tow2Spraytimdist,3,1,S80N.absmeans,T80vars.TowSmlVol,3)
title('80 Nortek')
nexttile
scatterpatter2(S80Sdistvars.Tow2Spraylocdist,S80Sdistvars.Tow2Spraytimdist,3,1,S80S.absmeans,T80vars.TowSmlVol,3)
title('80 Sontek')



figure(17)
nexttile
scatterpatter2(S80Sdistvars.Tow2Spraylocdist,S80Sdistvars.Tow2Spraytimdist,3,1,S80S.absmeans,T80vars.TowSmlVol,3)
title('80 Sontek all')
nexttile
scatterpatter2(S80Sdistvars.Tow2Spraylocdist,S80Sdistvars.Tow2Spraytimdist,3,1,S80S.absmeans,T80vars.TowSmlVol,1)
title('80 Sontek day')
nexttile
scatterpatter2(S80Sdistvars.Tow2Spraylocdist,S80Sdistvars.Tow2Spraytimdist,3,1,S80S.absmeans,T80vars.TowSmlVol,2)
title('80 Sontek night')
nexttile
scatterpatter2(S80Sdistvars.Tow2Spraylocdist,S80Sdistvars.Tow2Spraytimdist,3,1,S80S.absmeans,T80vars.TowSmlVol,4)
title('80 Sontek midnight')


figure(19)
nexttile
scatterpatter2(S80Sdistvars.Tow2Spraylocdist,S80Sdistvars.Tow2Spraytimdist,3,20,S80S.absmeans,T80vars.TowSmlVol,3)
title('80 Sontek all')
nexttile
scatterpatter2(S80Sdistvars.Tow2Spraylocdist,S80Sdistvars.Tow2Spraytimdist,3,20,S80S.absmeans,T80vars.TowSmlVol,1)
title('80 Sontek day')
nexttile
scatterpatter2(S80Sdistvars.Tow2Spraylocdist,S80Sdistvars.Tow2Spraytimdist,3,20,S80S.absmeans,T80vars.TowSmlVol,2)
title('80 Sontek night')
nexttile
scatterpatter2(S80Sdistvars.Tow2Spraylocdist,S80Sdistvars.Tow2Spraytimdist,3,20,S80S.absmeans,T80vars.TowSmlVol,4)
title('80 Sontek midnight')


figure(18)
nexttile
scatterpatter2(S90Ndistvars.Tow2Spraylocdist,S90Ndistvars.Tow2Spraytimdist,3,1,S90N.absmeans,T90vars.TowSmlVol,3)
title('90 Nortek')
nexttile
scatterpatter2(S90Sdistvars.Tow2Spraylocdist,S90Sdistvars.Tow2Spraytimdist,3,1,S90S.absmeans,T90vars.TowSmlVol,3)
title('90 Sontek')

figure(20)
nexttile
scatterpatter2(S67Ndistvars.Tow2Spraylocdist,S67Ndistvars.Tow2Spraytimdist,3,1,S67N.absmeans,T67vars.TowSmlVol,3)
title('67 Nortek')
nexttile
scatterpatter2(S67Sdistvars.Tow2Spraylocdist,S67Sdistvars.Tow2Spraytimdist,3,1,S67S.absmeans,T67vars.TowSmlVol,3)
title('67 Sontek')

