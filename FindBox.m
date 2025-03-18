function FindBox(raspred1, raspred2, raspred3, N1, N2, N3);

  count=counter(raspred1, N1);
  display(count);
  count=counter(raspred2, N2);
  display(count);
  count=counter(raspred3, N3);
  display(count);
figure
subplot(1,3,1);
boxplot(raspred1);
title(sprintf("20"));

subplot(1,3,2);
boxplot(raspred2);
title(sprintf("100"));

subplot(1,3,3);
boxplot(raspred3);
title(sprintf("1000"));
end
