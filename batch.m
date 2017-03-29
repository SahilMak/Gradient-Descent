function batch(w1, w2, a, data)
%Batch calculates batch gradient descent
% Inputs:
%  w1 = 1st weight value
%  w2 = 2nd weight value
%  a = learning rate value
%  data = numeric dataset

old1 = w1;
old2 = w2;
count = 0;
while count < 1000000
    new1 = old1 + a * summation();
    new2 = old2 + a * summation();
    old1 = new1;
    old2 = new2;
    count = count + 1;
end
end