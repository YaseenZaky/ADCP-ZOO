function patternofscatter = scatterpatter(mtx,rad,varx,vary)

figure;
ii = mtx <= rad;
kk = ii;
sum(kk(:))
ss = varx*ones(1,length(vary));
tt = ones(length(varx),1)*vary';
sss = ss(kk);
ttt = tt(kk);
plot(sss,ttt,'x')

% [n,m] = size(mtx);
% figure;
% for i=1:1:n
%     for j=1:1:m
%         if (mtx(i,j)<=rad)
%             scatter(varx(i),vary(j),'o','filled')
%             hold on
%         end
%     end
% end