%% old code

% %all the profiles with 
% ii = all(isnan(ctd80.wdop)) & any(~isnan(ctd80.abs));
% jj = all(~isnan(ctd80.wdop)) & any(isnan(ctd80.abs));
% 
% 
% ctd80S.time = ctd80.time(ii);
% ctd80S.lon = ctd80.lon(ii);
% ctd80S.lat = ctd80.lat(ii);
% ctd80S.dist = ctd80.dist(ii);
% ctd80S.offset = ctd80.offset(ii);
% ctd80S.timeu = ctd80.timeu(ii);
% ctd80S.lonu = ctd80.lonu(ii);
% ctd80S.latu = ctd80.latu(ii);
% ctd80S.distu = ctd80.distu(ii);
% ctd80S.offsetu = ctd80.offsetu(ii);
% ctd80S.u = ctd80.u(ii);
% ctd80S.v = ctd80.v(ii);
% ctd80S.t = ctd80.t(:, ii);
% ctd80S.s = ctd80.s(:, ii);
% ctd80S.abs = ctd80.abs(:, ii);
% ctd80S.udop = ctd80.udop(:, ii);
% ctd80S.vdop = ctd80.vdop(:, ii);
% ctd80S.wdop = ctd80.wdop(:, ii);

%% line 80
% %Get Glider missions on this line Sontek
% S80S1 = load('05A00501_bin.mat');
% S80S2 = load('06200501_bin.mat');
% S80S3 = load('06A00501_bin.mat');
% S80S4 = load('07301101_bin.mat');
% S80S5 = load('07501201_bin.mat');
% S80S6 = load('07801301_bin.mat');
% S80S7 = load('08101101_bin.mat');
% S80S8 = load('08402801_bin.mat');
% S80S9 = load('08701301_bin.mat');
% S80S10 = load('08B01101_bin.mat');
% S80S11 = load('09201301_bin.mat');
% S80S12 = load('09502801_bin.mat');
% S80S13 = load('09801301_bin.mat');
% S80S14 = load('09C02801_bin.mat');
% S80S15 = load('10202501_bin.mat');
% S80S16 = load('10403001_bin.mat');
% S80S17 = load('10402501_bin.mat');
% S80S18 = load('10603001_bin.mat');
% S80S19 = load('10B01301_bin.mat');
% S80S20 = load('11202801_bin.mat');
% S80S21 = load('11501301_bin.mat');
% S80S22 = load('11602501_bin.mat');
% S80S23 = load('11802801_bin.mat');
% S80S24 = load('11901101_bin.mat');
% S80S25 = load('11C02501_bin.mat');
% S80S26 = load('12301101_bin.mat');
% S80S27 = load('12602501_bin.mat');
% S80S28 = load('12801101_bin.mat');
% S80S29 = load('12C02801_bin.mat');
% S80S30 = load('13301301_bin.mat');
% S80S31 = load('13605701_bin.mat');
% S80S32 = load('13A01101_bin.mat');
% S80S33 = load('14501101_bin.mat');
% S80S34 = load('14C02801_bin.mat');
% S80S35 = load('15303501_bin.mat');
% S80S36 = load('15702801_bin.mat');
% S80S37 = load('15B01101_bin.mat');
% S80S38 = load('16404901_bin.mat');
% S80S39 = load('16601101_bin.mat');
% S80S40 = load('16B01101_bin.mat');

% %Get Glider missions on this line Nortek
% S80N1 = load('14103001_bin.mat');
% S80N2 = load('14803001_bin.mat');
% S80N3 = load('16203001_bin.mat');
% S80N4 = load('16903001_bin.mat');
% S80N5 = load('17305501_bin.mat');
% S80N6 = load('17605801_bin.mat');
% S80N7 = load('17A03001_bin.mat');
% S80N8 = load('18105801_bin.mat');
% S80N9 = load('18805801_bin.mat');
% S80N10 = load('18C05701_bin.mat');
% S80N11 = load('19205501_bin.mat');
% S80N12 = load('19606401_bin.mat');
% S80N13 = load('19A05501_bin.mat');
% S80N14 = load('20106401_bin.mat');
% S80N15 = load('20505501_bin.mat');
% S80N16 = load('20806401_bin.mat');
% S80N17 = load('20C05501_bin.mat');
% S80N18 = load('21306401_bin.mat');
% S80N19 = load('21705501_bin.mat');
% S80N20 = load('21A06401_bin.mat');
% S80N21 = load('22204001_bin.mat');

% figure(2); clf;
% geoscatter(S80N1.bindata.lat, S80N1.bindata.lon,50,'o','filled')
% hold on
% geoscatter(S80N2.bindata.lat, S80N2.bindata.lon,50,'o','filled')
% hold on
% geoscatter(S80N3.bindata.lat, S80N3.bindata.lon,50,'o','filled')
% hold on
% geoscatter(S80N4.bindata.lat, S80N4.bindata.lon,50,'o','filled')
% hold on
% geoscatter(S80N5.bindata.lat, S80N5.bindata.lon,50,'o','filled')
% hold on
% geoscatter(S80N6.bindata.lat, S80N6.bindata.lon,50,'o','filled')
% hold on
% geoscatter(S80N7.bindata.lat, S80N7.bindata.lon,50,'o','filled')
% hold on
% geoscatter(S80N8.bindata.lat, S80N8.bindata.lon,50,'o','filled')
% hold on
% geoscatter(S80N9.bindata.lat, S80N9.bindata.lon,50,'o','filled')
% hold on
% geoscatter(S80N10.bindata.lat, S80N10.bindata.lon,50,'o','filled')
% hold on
% geoscatter(S80N11.bindata.lat, S80N11.bindata.lon,50,'o','filled')
% hold on
% geoscatter(S80N12.bindata.lat, S80N12.bindata.lon,50,'o','filled')
% hold on
% geoscatter(S80N13.bindata.lat, S80N13.bindata.lon,50,'o','filled')
% hold on
% geoscatter(S80N14.bindata.lat, S80N14.bindata.lon,50,'o','filled')
% hold on
% geoscatter(S80N15.bindata.lat, S80N15.bindata.lon,50,'o','filled')
% hold on
% geoscatter(S80N16.bindata.lat, S80N16.bindata.lon,50,'o','filled')
% hold on
% geoscatter(S80N17.bindata.lat, S80N17.bindata.lon,50,'o','filled')
% hold on
% geoscatter(S80N7.bindata.lat, S80N7.bindata.lon,50,'o','filled')
% hold on
% geoscatter(S80N8.bindata.lat, S80N8.bindata.lon,50,'o','filled')
% hold on
% geoscatter(S80N9.bindata.lat, S80N9.bindata.lon,50,'o','filled')
% hold on
% geoscatter(S80N10.bindata.lat, S80N10.bindata.lon,50,'o','filled')
% hold on
% geoscatter(S80N11.bindata.lat, S80N11.bindata.lon,50,'o','filled')
% hold on
% geoscatter(S80N12.bindata.lat, S80N12.bindata.lon,50,'o','filled')
% hold on
% geoscatter(S80N13.bindata.lat, S80N13.bindata.lon,50,'o','filled')
% hold on
% geoscatter(S80N14.bindata.lat, S80N14.bindata.lon,50,'o','filled')
% hold on
% geoscatter(S80N15.bindata.lat, S80N15.bindata.lon,50,'o','filled')
% hold on
% geoscatter(S80N16.bindata.lat, S80N16.bindata.lon,50,'o','filled')
% hold on
% geoscatter(S80N17.bindata.lat, S80N17.bindata.lon,50,'o','filled')
% hold on
% geoscatter(S80N18.bindata.lat, S80N18.bindata.lon,50,'o','filled')
% hold on
% geoscatter(S80N19.bindata.lat, S80N19.bindata.lon,50,'o','filled')
% hold on
% geoscatter(S80N20.bindata.lat, S80N20.bindata.lon,50,'o','filled')
% hold on
% geoscatter(S80N21.bindata.lat, S80N21.bindata.lon,50,'o','filled')
% hold on % adds the tow plot
% geoscatter(TowLat80, TowLon80,200,'^','filled','k') % adds the tow plot
% geobasemap colorterrain

% S80Nabs = [mean(S80N1.bindata.abs(S80N1.bindata.depth<=210,:),'omitnan')';mean(S80N2.bindata.abs(S80N2.bindata.depth<=210,:),'omitnan')';mean(S80N3.bindata.abs(S80N3.bindata.depth<=210,:),'omitnan')';mean(S80N4.bindata.abs(S80N4.bindata.depth<=210,:),'omitnan')';mean(S80N5.bindata.abs(S80N5.bindata.depth<=210,:),'omitnan')';mean(S80N6.bindata.abs(S80N6.bindata.depth<=210,:),'omitnan')';mean(S80N7.bindata.abs(S80N7.bindata.depth<=210,:),'omitnan')';mean(S80N8.bindata.abs(S80N8.bindata.depth<=210,:),'omitnan')';mean(S80N9.bindata.abs(S80N9.bindata.depth<=210,:),'omitnan')';mean(S80N10.bindata.abs(S80N10.bindata.depth<=210,:),'omitnan')';mean(S80N11.bindata.abs(S80N11.bindata.depth<=210,:),'omitnan')';mean(S80N12.bindata.abs(S80N12.bindata.depth<=210,:),'omitnan')';mean(S80N13.bindata.abs(S80N13.bindata.depth<=210,:),'omitnan')';mean(S80N14.bindata.abs(S80N14.bindata.depth<=210,:),'omitnan')';mean(S80N15.bindata.abs(S80N15.bindata.depth<=210,:),'omitnan')';mean(S80N16.bindata.abs(S80N16.bindata.depth<=210,:),'omitnan')';mean(S80N17.bindata.abs(S80N17.bindata.depth<=210,:),'omitnan')';mean(S80N18.bindata.abs(S80N18.bindata.depth<=210,:),'omitnan')';mean(S80N19.bindata.abs(S80N19.bindata.depth<=210,:),'omitnan')';mean(S80N20.bindata.abs(S80N20.bindata.depth<=210,:),'omitnan')';mean(S80N21.bindata.abs(S80N21.bindata.depth<=210,:),'omitnan')'];

%% line 67

% %Get Glider missions on this line Sontek
% S67S1 = load('07401401_bin.mat');
% S67S2 = load('07A01401_bin.mat');
% S67S3 = load('08401401_bin.mat');
% S67S4 = load('08703001_bin.mat');
% S67S5 = load('09301401_bin.mat');
% S67S6 = load('09701101_bin.mat');
% S67S7 = load('09B01401_bin.mat');
% S67S8 = load('10301401_bin.mat');
% S67S9 = load('10704101_bin.mat');
% S67S10 = load('10A01401_bin.mat');
% S67S11 = load('11104101_bin.mat');
% S67S12 = load('11501401_bin.mat');
% S67S13 = load('11904101_bin.mat');
% S67S14 = load('12101401_bin.mat');
% S67S15 = load('12404101_bin.mat');
% S67S16 = load('12801401_bin.mat');
% S67S17 = load('12B04101_bin.mat');
% S67S18 = load('13301401_bin.mat');
% S67S19 = load('13704101_bin.mat');
% S67S20 = load('13B04101_bin.mat');
% S67S21 = load('14305701_bin.mat');
% S67S22 = load('14602801_bin.mat');
% S67S23 = load('14901101_bin.mat');
% S67S24 = load('15401101_bin.mat');
% S67S25 = load('15802501_bin.mat');
% S67S26 = load('15B02801_bin.mat');
% S67S27 = load('16302501_bin.mat');
% S67S28 = load('16602801_bin.mat');
% S67S29 = load('16802801_bin.mat');
% S67S30 = load('16902501_bin.mat');
% S67S31 = load('16C02801_bin.mat');
% S67S32 = load('17302501_bin.mat');
% S67S33 = load('17702801_bin.mat');
% S67S34 = load('17A02501_bin.mat');

% %Get Glider missions on this line Nortek
% S67N1 = load('15103001_bin.mat');
% S67N2 = load('18104001_bin.mat');
% S67N3 = load('18402501_bin.mat');
% S67N4 = load('18804001_bin.mat');
% S67N5 = load('18C02501_bin.mat');
% S67N6 = load('19304001_bin.mat');
% S67N7 = load('19702501_bin.mat');
% S67N8 = load('19A04001_bin.mat');
% S67N9 = load('20203501_bin.mat');
% S67N10 = load('20604001_bin.mat');
% S67N11 = load('20A03501_bin.mat');
% S67N12 = load('21204001_bin.mat');
% S67N13 = load('21502501_bin.mat');
% S67N14 = load('21803501_bin.mat');

%% line 57

% %Get Glider missions on this line
% S57N1 = load('19C01101_bin.mat');
% S57N2 = load('20602801_bin.mat');
% S57N3 = load('20A01101_bin.mat');
% S57N4 = load('21202801_bin.mat');
% S57N5 = load('21601101_bin.mat');
% S57N6 = load('21A02801_bin.mat');

%% line 90

% %Get Glider missions on this line Sontek
% S90S1 = load('06A01301_bin.mat');
% S90S2 = load('07101201_bin.mat');
% S90S3 = load('07401301_bin.mat');
% S90S4 = load('07701101_bin.mat');
% S90S5 = load('07A02801_bin.mat');
% S90S6 = load('08301301_bin.mat');
% S90S7 = load('08601101_bin.mat');
% S90S8 = load('08902501_bin.mat');
% S90S9 = load('09102801_bin.mat');
% S90S10 = load('09403001_bin.mat');
% S90S11 = load('09702501_bin.mat');
% S90S12 = load('09B03001_bin.mat');
% S90S13 = load('10204101_bin.mat');
% S90S14 = load('10602801_bin.mat');
% S90S15 = load('10902501_bin.mat');
% S90S16 = load('11101101_bin.mat');
% S90S17 = load('11402501_bin.mat');
% S90S18 = load('11603001_bin.mat');
% S90S19 = load('11A02801_bin.mat');
% S90S20 = load('11A01301_bin.mat');
% S90S21 = load('12103001_bin.mat');
% S90S22 = load('12501301_bin.mat');
% S90S23 = load('12803001_bin.mat');
% S90S24 = load('12B02501_bin.mat');
% S90S25 = load('13301101_bin.mat');
% S90S26 = load('13705801_bin.mat');
% S90S27 = load('13B05801_bin.mat');
% S90S28 = load('14105901_bin.mat');
% S90S29 = load('14205801_bin.mat');
% S90S30 = load('14602501_bin.mat');
% S90S31 = load('14B02501_bin.mat');
% S90S32 = load('14B05101_bin.mat');
% S90S33 = load('15102501_bin.mat');
% S90S34 = load('15404001_bin.mat');

% %Get Glider missions on this line Nortek 
% S90N1 = load('13903001_bin.mat');
% S90N2 = load('14906301_bin.mat');
% S90N3 = load('15703001_bin.mat');
% S90N4 = load('15A06401_bin.mat');
% S90N5 = load('16206301_bin.mat');
% S90N6 = load('16506401_bin.mat');
% S90N7 = load('16904101_bin.mat');
% S90N8 = load('16C06401_bin.mat');
% S90N9 = load('17403001_bin.mat');
% S90N10 = load('17705701_bin.mat');
% S90N11 = load('17805501_bin.mat');
% S90N12 = load('17B06401_bin.mat');
% S90N13 = load('18606401_bin.mat');
% S90N14 = load('18605501_bin.mat');
% S90N15 = load('18904101_bin.mat');
% S90N16 = load('19103001_bin.mat');
% S90N17 = load('19405801_bin.mat');
% S90N18 = load('19803501_bin.mat');
% S90N19 = load('19901301_bin.mat');
% S90N20 = load('19B05801_bin.mat');
% S90N21 = load('20201301_bin.mat');
% S90N22 = load('20503001_bin.mat');
% S90N23 = load('20904101_bin.mat');
% S90N24 = load('20C05801_bin.mat');
% S90N25 = load('21404101_bin.mat');
% S90N26 = load('21805801_bin.mat');
% S90N27 = load('21B01301_bin.mat');
% S90N28 = load('22303001_bin.mat');
% S90N29 = load('17305601_bin.mat');
% S90N30 = load('18304101_bin.mat');
% S90N31 = load('18806401_bin.mat');
% S90N32 = load('19106401_bin.mat');
% S90N33 = load('19404101_bin.mat');
% S90N34 = load('19803001_bin.mat');
% S90N35 = load('19C04101_bin.mat');
% S90N36 = load('20505801_bin.mat');
% S90N37 = load('20901301_bin.mat');
% S90N38 = load('20C03001_bin.mat');
% S90N39 = load('21401301_bin.mat');
% S90N40 = load('21803001_bin.mat');



