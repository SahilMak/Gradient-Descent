function hypo = hw(t1, t2, x)
%Hw is the hypothesis function for gradient descent
% Inputs:
%  t1 = 1st weight value
%  t2 = 2nd weight value
%  x = x-value from numeric dataset

hypo = t1 + t2 * x;
end