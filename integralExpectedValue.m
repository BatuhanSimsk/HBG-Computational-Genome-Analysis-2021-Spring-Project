function [ExpVal]=integralExpectedValue(i)    

p=0.00386;
fun=@(x) p*exp(-p*x);
k=integral (fun,i,i+100);
ExpVal=328*k;


end

