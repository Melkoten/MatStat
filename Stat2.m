pkg load statistics
NormSred=[1000];
NormMed=[1000];
Norm14=[1000];
Norm34=[1000];
NormQ=[1000];
NormD=[1000];

CauchySred=[1000];
CauchyMed=[1000];
Cauchy14=[1000];
Cauchy34=[1000];
CauchyQ=[1000];
CauchyD=[1000];

PoissonSred=[1000];
PoissonMed=[1000];
Poisson14=[1000];
Poisson34=[1000];
PoissonQ=[1000];
PoissonD=[1000];

UniSred=[1000];
UniMed=[1000];
Uni14=[1000];
Uni34=[1000];
UniQ=[1000];
UniD=[1000];

for k=1:1000
N=1000;
masNorm=[N];
masCauchy=[N];
masPoisson=[N];
masUni=[N];

for i=1:N
masNorm(i) = normrnd (0, 1);
masCauchy(i)=trnd(1); %C(0,1)=t(1)
masPoisson(i)=poissrnd (10);
masUni(i)=unifrnd(-sqrt(3),sqrt(3));
endfor

NormSred(k)=mean(masNorm);
NormMed(k)=median(masNorm);
Norm14(k)=quantile(masNorm, 1/4);
Norm34(k)=quantile(masNorm, 3/4);
NormQ(k)=0.5*(Norm14(k)+Norm34(k));
NormD(k)=mad(masNorm);

CauchySred(k)=mean(masCauchy);
CauchyMed(k)=median(masCauchy);
Cauchy14(k)=quantile(masCauchy, 1/4);
Cauchy34(k)=quantile(masCauchy, 3/4);
CauchyQ(k)=0.5*(Cauchy14(k)+Cauchy34(k));
CauchyD(k)=mad(masCauchy);

PoissonSred(k)=mean(masPoisson);
PoissonMed(k)=median(masPoisson);
Poisson14(k)=quantile(masPoisson, 1/4);
Poisson34(k)=quantile(masPoisson, 3/4);
PoissonQ(k)=0.5*(Poisson14(k)+Poisson34(k));
PoissonD(k)=mad(masPoisson);

UniSred(k)=mean(masUni);
UniMed(k)=median(masUni);
Uni14(k)=quantile(masUni, 1/4);
Uni34(k)=quantile(masUni, 3/4);
UniQ(k)=0.5*(Uni14(k)+Uni34(k));
UniD(k)=mad(masUni);

endfor
NormSredSred=mean(NormSred);
NormMedSred=mean(NormMed);
Norm14Sred=mean(Norm14);
Norm34Sred=mean(Norm34);
NormQSred=mean(NormQ);
NormDSred=mean(NormD);
NormSredMad=mad(NormSred);
NormMedMad=mad(NormMed);
Norm14Mad=mad(Norm14);
Norm34Mad=mad(Norm34);
NormQMad=mad(NormQ);
NormDMad=mad(NormD);
display(NormSredSred);
display(NormMedSred);
display(Norm14Sred);
display(Norm34Sred);
display(NormQSred);
display(NormDSred);
display(NormSredMad);
display(NormMedMad);
display(Norm14Mad);
display(Norm34Mad);
display(NormQMad);
display(NormDMad);
display("norm");


CauchySredSred=mean(CauchySred);
CauchyMedSred=mean(CauchyMed);
Cauchy14Sred=mean(Cauchy14);
Cauchy34Sred=mean(Cauchy34);
CauchyQSred=mean(CauchyQ);
CauchyDSred=mean(CauchyD);
CauchySredMad=mad(CauchySred);
CauchyMedMad=mad(CauchyMed);
Cauchy14Mad=mad(Cauchy14);
Cauchy34Mad=mad(Cauchy34);
CauchyQMad=mad(CauchyQ);
CauchyDMad=mad(CauchyD);
display(CauchySredSred);
display(CauchyMedSred);
display(Cauchy14Sred);
display(Cauchy34Sred);
display(CauchyQSred);
display(CauchyDSred);
display(CauchySredMad);
display(CauchyMedMad);
display(Cauchy14Mad);
display(Cauchy34Mad);
display(CauchyQMad);
display(CauchyDMad);
display("Cauchy");

PoissonSredSred=mean(PoissonSred);
PoissonMedSred=mean(PoissonMed);
Poisson14Sred=mean(Poisson14);
Poisson34Sred=mean(Poisson34);
PoissonQSred=mean(PoissonQ);
PoissonDSred=mean(PoissonD);
PoissonSredMad=mad(PoissonSred);
PoissonMedMad=mad(PoissonMed);
Poisson14Mad=mad(Poisson14);
Poisson34Mad=mad(Poisson34);
PoissonQMad=mad(PoissonQ);
PoissonDMad=mad(PoissonD);
display(PoissonSredSred);
display(PoissonMedSred);
display(Poisson14Sred);
display(Poisson34Sred);
display(PoissonQSred);
display(PoissonDSred);
display(PoissonSredMad);
display(PoissonMedMad);
display(Poisson14Mad);
display(Poisson34Mad);
display(PoissonQMad);
display(PoissonDMad);
display("Poisson");

UniSredSred=mean(UniSred);
UniMedSred=mean(UniMed);
Uni14Sred=mean(Uni14);
Uni34Sred=mean(Uni34);
UniQSred=mean(UniQ);
UniDSred=mean(UniD);
UniSredMad=mad(UniSred);
UniMedMad=mad(UniMed);
Uni14Mad=mad(Uni14);
Uni34Mad=mad(Uni34);
UniQMad=mad(UniQ);
UniDMad=mad(UniD);
display(UniSredSred);
display(UniMedSred);
display(Uni14Sred);
display(Uni34Sred);
display(UniQSred);
display(UniDSred);
display(UniSredMad);
display(UniMedMad);
display(Uni14Mad);
display(Uni34Mad);
display(UniQMad);
display(UniDMad);
display("Uni");

%NormSredMean=mean(NormSred);
%display(NormSredMean);
