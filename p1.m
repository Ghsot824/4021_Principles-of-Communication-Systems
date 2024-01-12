clc
clear 
close all

mean = 0;
sigma = 1;

%%
N = 1e3;
X = mean + sigma * randn(N, 1);
Y = mean + sigma * randn(N, 1);

subplot(3,2,1), histogram(X,N/10,'FaceColor','red','EdgeColor','red'),title("X   N=1000");
subplot(3,2,3), histogram(Y,N/10,'FaceColor','blue','EdgeColor','blue'),title("Y   N=1000");

Z = sqrt(X.^2 + Y.^2);
subplot(3,2,5), histogram(Z,N/10,'FaceColor','green','EdgeColor','green'),title("Z   N=1000");

disp("mean of Z for N=1000 : " + num2str(sum(Z)/length(Z)));
disp("Variance of Z for N=1000 : " + num2str(var(Z)));


%%
N = 1e5;
X = mean + sigma * randn(N, 1);
Y = mean + sigma * randn(N, 1);

subplot(3,2,2), histogram(X,N/10,'FaceColor','red','EdgeColor','red'),title("X   N=100000");
subplot(3,2,4), histogram(Y,N/10,'FaceColor','blue','EdgeColor','blue'),title("Y   N=100000");

Z = sqrt(X.^2 + Y.^2);
subplot(3,2,6), histogram(Z,N/10,'FaceColor','green','EdgeColor','green'),title("Z   N=100000");

disp("mean of Z for N=100000 : " + num2str(sum(Z)/length(Z)));
disp("Variance of Z for N=100000 : " + num2str(var(Z)));


