%% Data setup and organization
%Read in table from .csv file
R = readtable('195101-201607_1701-1704_1802-1804_Zoop 2.csv');
R(:,27:38) = [];

%filter table to dates after 2005 (when ADCP was added) and restrict to
%only lines with data measured by gliders
start_date = datetime(2005, 1, 1);
idx = (start_date < R.Tow_Date);
P = R(idx, :);

%Create time variable in datetime format
P.Tow_Date.Format = 'dd.MM.uuuu HH:mm';
TowSHourMin = datetime(P.Tow_Time,'InputFormat','HH:mm');
TowEHourMin = datetime(P.End_Time,'InputFormat','HH:mm');
TowSTime = P.Tow_Date + timeofday(TowSHourMin);
TowETime = P.Tow_Date + timeofday(TowEHourMin);
P.TowETime = TowETime(:);
P.TowSTime = TowSTime(:);

%remove NaN values and reorganize table
T = rmmissing(P);
T = T(:,[1:19 27 20:21 28 22:26]);

%Clean innapropriately documented values
T.Net_Loc = strrep(T.Net_Loc,'p','P');

%organize by line
T56 = T(T.St_Line == 56.7,:);
T66 = T(T.St_Line == 66.7,:);
T80 = T(T.St_Line == 80,:);
T90 = T(T.St_Line == 90,:);
T93 = T((T.St_Line == 93.3 | T.St_Line == 93.4),:);
