R = readtable('195101-201607_1701-1704_1802-1804_Zoop 2.csv');
LatR = R.Lat_Deg + R.Lat_Min/60
LonR = -R.Lon_Deg + -R.Lon_Min/60
DatR = R.Tow_Date
STimR = R.Tow_Time
ETimR = R.End_Time
figure(1); clf;
geoscatter(LatR, LonR,50,'o','filled')
geobasemap colorterrain
count = histcounts2(LonR, LatR, 'BinWidth', [3, 3])
