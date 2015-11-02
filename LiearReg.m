% linear regression
%% ======================================
% load and initial the data
value = load('ex2x.dat');
label = load('ex2y.dat');

alpha = 0.07;
x = [ones(length(value),1),value(:)];
theta = zeros(size(x(1,:)))';
MAX_ITR = 15000;

%% --------------------------------------------
% process of the learning
for i = 1:MAX_ITR
    grad = (1/length(label)) .* x' * ((x * theta) - label);
    theta = theta - alpha .* grad;
end

%% ===================================================
% plot the figure
plot(value,label,'o')
hold on
plot(x(:,2),x*theta)
hold off
