function [output3,numCore, numBound, numOut, numIn,sum] = inrangedistdate(data,setdates,dist,radius,lons,lats)

N = length(data);
disp(N);
indate = inrangedate(data,setdates);
[~,indist] = inrangedist(dist,radius);
output1 = zeros(N,5);
output2 = strings(N,3);
numCore = 0;
numBound = 0;
numOut = 0;
for j = 1:1:N
    if indate(j,2) ~=0
        output1(j,1:5) = [data(j),lons(indate(j,2)),lats(indate(j,2)),dist(indate(j,2)),radius(indate(j,2))];
        output2(j,1) = "Within date range";
        output2(j,2) = indist(indate(j,2));
        if output2(j,2) == "Core"
            numCore = numCore + 1;
        elseif output2(j,2) == "Boundary"
            numBound = numBound + 1;
        elseif output2(j,2) == "Out of radius"
            numOut = numOut + 1;
        end
    else
        output2(j,1) = "Not within date range";
        output1(j,1) = data(j);
        numOut = numOut + 1;
    end

    if output2(j,1) == "Within date range" && output2(j,2) ~= "Out of radius"
        output2(j,3) = "in date range and distance range";
    else
        output2(j,3) = "out of range";
    end
end
numIn = numBound + numCore;
sum = numCore+numBound+numOut;
output3 = [output1,output2];
end