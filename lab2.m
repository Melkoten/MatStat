pkg load statistics
N1=20; N2=100; N3=1000;
masNorm1=[N1];
masCouchy1=[N1];
masPoisson1=[N1];
masUni1=[N1];

for i=1:N1
masNorm1(i) = normrnd (0, 1);
masCouchy1(i)=trnd(1);
masPoisson1(i)=poissrnd (10);
masUni1(i)=unifrnd(-sqrt(3),sqrt(3));
end

masNorm2=[N2];
masCouchy2=[N2];
masPoisson2=[N2];
masUni2=[N2];

for i=1:N2
masNorm2(i) = normrnd (0, 1);
masCouchy2(i)=trnd(1); %C(0,1)=t(1)
masPoisson2(i)=poissrnd (10);
masUni2(i)=unifrnd(-sqrt(3),sqrt(3));
end

masNorm3=[N3];
masCouchy3=[N3];
masPoisson3=[N3];
masUni3=[N3];

for i=1:N3
masNorm3(i) = normrnd (0, 1);
masCouchy3(i)=trnd(1); %C(0,1)=t(1)
masPoisson3(i)=poissrnd (10);
masUni3(i)=unifrnd(-sqrt(3),sqrt(3));
end

FindBox(masNorm1, masNorm2, masNorm3, 20, 100, 1000);
FindBox(masCouchy1, masCouchy2, masCouchy3, 20, 100, 1000);
FindBox(masPoisson1, masPoisson2, masPoisson3, 20, 100, 1000);
FindBox(masUni1, masUni2, masUni3, 20, 100, 1000);
