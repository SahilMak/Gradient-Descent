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
w1 = input('Enter the value of weight 1: ');
w2 = input('Enter the value of weight 2: ');
a = input('Enter the value of the learning rate: ');
batch(w1, w2, a, dataset);
% stochastic(w1, w2, a, dataset);
