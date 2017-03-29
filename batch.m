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
    new1 = old1 + a * summation(old1, old2, 1, data, 0);
    new2 = old2 + a * summation(old1, old2, 1, data, 1);
    old1 = new1;
    old2 = new2;
    count = count + 1;
    if (abs(w1 - new1) < 10^-10) && (abs(w2 - new2) < 10^-10)
        fprintf('Weight 1: %f\nWeight 2: %f\n', new1, new2);
        break;
    end
    if isinf(new1) || isinf(new2) || isnan(new1) || isnan(new2)
        fprintf('Breaks at epoch: %d\n', count);
        break;
    end
end
end