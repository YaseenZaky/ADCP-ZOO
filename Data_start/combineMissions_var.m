function ctd = combineMissions_var(line,vars)

% % Concatenate data from all missions along a particular CalCOFI line. Use variables
% in cell array vars. Input parameters are:
% line: '66.7','80.0', or '90.0'
% vars: cell array of variables
%
% K.Zaba, May22,2014
% D. Rudnick, September 8, 2016 - update to use cugn.txt
% D. Rudnick, March 12, 2018 - update to use vars and data in binmat

% Paths
list = 'cugn.txt';    % file with list of archive deployments

% CTD Variables
ctd1D = {'time','lon','lat','dist','offset', ...
    'timeu','lonu','latu','distu','offsetu','u','v'};
% ctd1D = {'time','lon','lat', ...
%     'timeu','lonu','latu','u','v'};
ctd2D = vars;
nctd1D = length(ctd1D);
nctd2D = length(ctd2D);
depthLevels = (10:10:500)';
nz = length(depthLevels);

% Initialize CTD Output
ctd.line=line;
ctd.depth = depthLevels;
for iictd1D = 1:nctd1D
    ctd.(ctd1D{iictd1D}) = [];
end
for iictd2D = 1:nctd2D
    ctd.(ctd2D{iictd2D}) = [];
end
ctd.sonnor = [];

% ReadIn Mission Data
fid=fopen(list);
deps = textscan(fid,'%s %s','Delimiter',',');
fclose(fid);
linestr = ['line' line(1:2)];
ii=find(strncmp(line,deps{2},2));
ctd.missions=deps{1}(ii);
nortek = false;
for idep=1:length(ii)
    filename=[deps{1}{ii(idep)} '_bin.mat'];
    if exist(filename,'file')
        load(filename,'bindata');
    else
        load(deps{1}{ii(idep)},'bindata');
        nortek = true;
    end
% comment next 4 out for line 57
    [bindata.dist,bindata.offset]    = calcdistfromshoreCRM(bindata.lon, ...
        bindata.lat,linestr);
    [bindata.distu,bindata.offsetu] = calcdistfromshoreCRM(bindata.lonu, ...
        bindata.latu,linestr);
    for iictd1D=1:nctd1D
        ctd.(ctd1D{iictd1D}) = [ctd.(ctd1D{iictd1D}); bindata.(ctd1D{iictd1D})];
    end
    for iictd2D=1:nctd2D
        if isfield(bindata,ctd2D{iictd2D})
            ctd.(ctd2D{iictd2D})=[ctd.(ctd2D{iictd2D}) bindata.(ctd2D{iictd2D})(1:nz,:)];
        else
            ctd.(ctd2D{iictd2D})=[ctd.(ctd2D{iictd2D}) nan(size(bindata.t(1:nz,:)))];
        end
    end
    %
    if isfield(bindata,'udop') %ADCP is present
        if isfield(bindata,'wdop') || nortek %Nortek is present
            sonnor = 3;
        else
            sonnor = 2; %sontek is present
        end
    else
        sonnor = 1; %no adcp present
    end
    ctd.sonnor = [ctd.sonnor; ones(size(bindata.time))*sonnor];

    %
    clear('bindata');
    nortek = false;
end
end
