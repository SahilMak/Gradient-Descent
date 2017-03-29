clear;
rows = input('How many rows does the dataset have?: ');
dataset = zeros(rows,2);
for i = 1:rows
    for j = 1:2
        if j == 1
            dataset(i,j) = input(['Enter the x-value for row ',num2str(i),': ']);
        else
            dataset(i,j) = input(['Enter the y-value for row ',num2str(i),': ']);
        end
    end
end
% dataset = user input
% w1 = user input
% w2 = user input
% a = user input
% call batch function
% call stochastic function
