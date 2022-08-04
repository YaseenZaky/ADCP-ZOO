function output = scatterpatter2(distmtx,timmtx,distrad,timrad,varx,vary,NightDayAnytime)

ii = distmtx <= distrad;
jj = timmtx <= timrad;
if NightDayAnytime == 1 %daytime
    bb = abs(timmtx-floor(timmtx)) >=0.25 & abs(timmtx-floor(timmtx)) <0.75;
elseif NightDayAnytime == 2 %nighttime
    bb = abs(timmtx-floor(timmtx)) <0.25 | abs(timmtx-floor(timmtx)) >=0.75;
elseif NightDayAnytime == 4 %midnighttime
    bb = abs(timmtx-floor(timmtx)) <0.1 | abs(timmtx-floor(timmtx)) >=0.9;
else %anytime
    bb = abs(timmtx-floor(timmtx)) >=0.00;
end
kk = ii & jj & bb;
sum(kk(:))
ss = varx*ones(1,length(vary));
tt = ones(length(varx),1)*vary';
sss = ss(kk);
ttt = tt(kk);
plot(sss,ttt,'x')

% for (i=1:1:n)
%     for (j=1:1:m)
%         if (distmtx(i,j)<=distrad && timmtx(i,j)<=timrad)
%             scatter(varx(i),vary(j),'o','filled');
%             hold on
%             output(k,:) = [distmtx(i,j);timmtx(i,j);varx(i);vary(j)];
%             k = k+1;
%         end
%     end
% end
% end