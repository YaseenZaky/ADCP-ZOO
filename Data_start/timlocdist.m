function distvars = timlocdist(linenorson,towlinevars,linenorsontimstf)

distvars.Tow2Spraylocdistandmin = locdistallpts(towlinevars.TowLon,towlinevars.TowLat,linenorson.lon,linenorson.lat);
distvars.Tow2Spraylocdist = distvars.Tow2Spraylocdistandmin(:,1:end-1);
distvars.Tow2Spraylocmin = distvars.Tow2Spraylocdistandmin(:,end);

distvars.Tow2Spraytimdistandmin = timdistallpts(linenorsontimstf.Spraytimedtnm,towlinevars.TowETimdtnm);
distvars.Tow2Spraytimdist = distvars.Tow2Spraytimdistandmin(:,1:end-1);
distvars.Tow2Spraytimmin = distvars.Tow2Spraytimdistandmin(:,end);