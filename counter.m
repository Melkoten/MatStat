function G=counter(raspred,N)
  G=0;
  quant14=quantile(raspred, 1/4);
  quant34=quantile(raspred, 3/4);
  IQR=quant34-quant14;
  for i=1:N
    if (raspred(i) < (quant14 - 1.5 * IQR))
    G = G + 1; endif
    if (raspred(i) > (quant34 + 1.5 * IQR))
    G = G + 1; endif
  endfor
  end
