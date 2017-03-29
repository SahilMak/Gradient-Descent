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
        total = total + (a * (data(i,2) - hw()));
    end
else
    for i = 1:length(data)
        total = total + (a * (data(i,2) - hw()) * data(i,1));
    end
end
end