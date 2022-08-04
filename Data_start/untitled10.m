%80
S80Nd = scatterpatter2(S80Ndistvars.Tow2Spraylocdist,S80Ndistvars.Tow2Spraytimdist,1.0,1.0,S80N.absmeans,T80vars.TowSmlVol,3);

S80Sd = scatterpatter2(S80Sdistvars.Tow2Spraylocdist,S80Sdistvars.Tow2Spraytimdist,1.0,1.0,S80S.absmeans,T80vars.TowSmlVol,3);




%90
S90Nd = scatterpatter2(S90Ndistvars.Tow2Spraylocdist,S90Ndistvars.Tow2Spraytimdist,1.0,1.0,S90N.absmeans,T90vars.TowSmlVol,3);

S90Sd = scatterpatter2(S90Sdistvars.Tow2Spraylocdist,S90Sdistvars.Tow2Spraytimdist,1.0,1.0,S90S.absmeans,T90vars.TowSmlVol,3);




%67
S67Nd = scatterpatter2(S67Ndistvars.Tow2Spraylocdist,S67Ndistvars.Tow2Spraytimdist,1.0,1.0,S67N.absmeans,T67vars.TowSmlVol,3);

S67Sd = scatterpatter2(S67Sdistvars.Tow2Spraylocdist,S67Sdistvars.Tow2Spraytimdist,1.0,1.0,S67S.absmeans,T67vars.TowSmlVol,3);



scatterpatterdata(S80Nd,S90Nd,S67Nd,S80Sd,S90Sd,S67Sd)
