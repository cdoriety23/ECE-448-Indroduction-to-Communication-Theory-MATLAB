%Gaussian random variables
v=25; %variance
m=10;  %mean value
x= sqrt(v)*randn(1,1000)+ m*ones(1,1000); %gaussian distrubuion function
figure(1) %new 
subplot(2,1,1);
stem(x); % stem plots discrete valuesgrid on;  
%turns grid on
grid on
xlabel('sample index');
ylabel('amplitude');
title('generation of Gaussian random variables');
subplot(2,1,2) %allowing 2 pics on the same graph
hist(x,20);%creates histogram/bar graph
xlabel('amplitude');
ylabel('number of points');
title('number of points at varied amplitidues');% representation of g1(x) g/2 of
x1=0:.2:5;
x2=-10:.1:10;
g=exp(-x1).*sin(x1.^2); %g1
g1=sinc(x2); %g2 since value
figure (2)
plot(x1,g);
grid on;
hold all;
stem(x1,g) %when using stem(x,g)
xlabel('time');
ylabel('amplitude');
title('g=exp(-x)*sin(x.^2)');
figure (3)
plot(x2,g1)
grid on;
hold all; % holds pic to allow same pic to show on graph
stem(x2,g1);
xlabel('time');
ylabel('amplitude');
title('g(x)_= sinc(x)');

