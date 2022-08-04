function timdist = timdistallpts(data,setdates)
N = length(data);
M = length(setdates);
timdist = zeros(N,M+1);
for k = 1:N
    for l = 1:M
        timdist(k,l) = (abs(setdates(l)-data(k)));
    end
    timdist(k,M+1) = min(timdist(k,1:M));
end
end