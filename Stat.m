pkg load statistics
N=1000;
masNorm=[N];
masCouchy=[N];
masPoisson=[N];
masUni=[N]
for i=1:N
masNorm(i) = normrnd (0, 1);
masCouchy(i)=trnd(1); %C(0,1)=t(1)
masPoisson(i)=poissrnd (10);
masUni(i)=unifrnd(-sqrt(3),sqrt(3));
end
display(masNorm);
display(masCouchy);
display(masPoisson);
display(masUni);

figure
subplot(2,2,1);
a=-10; b=10;
x=linspace(a,b,N);
hist(masNorm, 20, 20*(1/(-min(masNorm)+max(masNorm))));
hold on
y=normpdf(x, 0, 1);
plot(x,y);
title(sprintf("normal"));

subplot(2,2,2);
x=linspace(-5,5,N);
hist(masCouchy, 20, 20*(1/(-min(masCouchy)+max(masCouchy))));
hold on
y=cauchypdf(x,0,1);
plot(x,y);
title(sprintf("Cauchy"));

subplot(2,2,3);
x=linspace(0,20,N);
hist(masPoisson, 20, 20*(1/(-min(masPoisson)+max(masPoisson))));
hold on
y=poisspdf(x,10);
plot(x,y);
title(sprintf("Poisson"));

subplot(2,2,4);
x=linspace(-sqrt(3),sqrt(3),N);
hist(masUni, 20, 20*(1/(-min(masUni)+max(masUni))));
hold on
y=unifpdf(x,-sqrt(3),sqrt(3));
plot(x,y);
title(sprintf("UniformDistribution"));


