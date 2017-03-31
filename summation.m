function total = summation(t1, t2, a, data, num)
%Summation calculates the summation aspect of gradient descent
% Inputs:
%  t1 = 1st weight value
%  t2 = 2nd weight value
%  a = alpha value
%  data = numeric dataset
%  num = variation based on weight being calculated

total = 0;
if num == 0
    for i = 1:length(data)
        total = total + (data(i,2) - hw(t1,t2,data(i,1)));
    end
elseif num == 1
    for i = 1:length(data)
        total = total + (data(i,2) - hw(t1,t2,data(i,1))) * data(i,1);
    end
elseif num == 2
    for i = 1:length(data)
        total = t1 + (a * (data(i,2) - hw(t1,t2,data(i,1))));
        t1 = total;
    end
else
    for i = 1:length(data)
        total = t2 + (a * (data(i,2) - hw(t1,t2,data(i,1))) * data(i,1));
        t2 = total;
    end
end
end