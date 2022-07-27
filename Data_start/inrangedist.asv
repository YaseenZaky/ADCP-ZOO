function [pctdist,Position] = inrangedist(dist,radius)

[m,n] = size(dist);
pctdist = zeros(m,n);
for i = 1:m
    pctdist(i) = (dist(i)/radius(i));
    if (pctdist(i)) < 1
        Position(i) = "in general region";
    elseif (pctdist(i)) <= 3
        Position(i) = "Within approximately 5 km";
    else
        Position(i) = "Out of radius";
    end
end
Position = Position'
end