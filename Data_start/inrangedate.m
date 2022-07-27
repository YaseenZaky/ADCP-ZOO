function output = inrangedate(data,setdates)
M = length(data);
R = length(setdates);
output = zeros(M,2);
for j = 1:1:M
    k = 0;
    low = abs(setdates(1)-data(j));
    lowind = 1;
    for i = 1:1:R
        datelow = setdates(i) -.1;
        datehigh = setdates(i) +1;
        if data(j) <= datehigh && data(j) >= datelow
            k = i;
        end
        if abs(setdates(i)-data(j))<low
            low = abs(setdates(i)-data(j));
            lowind = i;
        end
    end;
    if k==0
        output(j,2) = 0;
        output(j,1) = abs(setdates(lowind)-data(j));
    else
        output(j,2) = k;
        output(j,1) = abs(setdates(lowind)-data(j));
    end;
end;
output
end