function dist = distallpts(lon1,lat1,lon2,lat2)
N = length(lon2);
M = length(lon1);
dist = zeros(N,M+1);
for k = 1:N
    for l = 1:M
        dist(k,l) = (m_lldist([lon1(l) lon2(k)],[lat1(l) lat2(k)], 1));
    end
    dist(k,M+1) = min(dist(k,1:M));
end
end