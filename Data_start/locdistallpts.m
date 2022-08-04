function locdist = locdistallpts(lon1,lat1,lon2,lat2)
N = length(lon2);
M = length(lon1);
locdist = zeros(N,M+1);
for k = 1:N
    for l = 1:M
        locdist(k,l) = (m_lldist([lon1(l) lon2(k)],[lat1(l) lat2(k)], 1));
    end
    locdist(k,M+1) = min(locdist(k,1:M));
end
end