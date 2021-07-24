getGenBank()


%Theorical Probability


%Note:I don't use disp() command in integralExpectedValue(i)
%function,because it's causes problems in somewhere else in code.
%Because of that,if you want run the code separately,select and press F9 till ";" 

disp("Theorical Probability between 0-100")
integralExpectedValue(0)         %Theorical Probability between 0-100

disp("Theorical Probability between 100-200")
integralExpectedValue(100)      %Theorical Probability between 100-200

disp("Theorical Probability between 200-300")
integralExpectedValue(200)     %Theorical Probability between 200-300

disp("Theorical Probability between 300-400")
integralExpectedValue(300)     %Theorical Probability between 300-400

disp("Theorical Probability between 400-500")
integralExpectedValue(400)    %Theorical Probability between 400-500

disp("Theorical Probability between 500-600")
integralExpectedValue(500)     %Theorical Probability between 500-600

disp("Theorical Probability between 600-48502")
p=0.00386;
fun=@(x) p*exp(-p*x);
k=integral (fun,600,48502);      %Theorical Probability between 600-48502
ExpVal=328*k;
disp(ExpVal);


%Observed Values
ObsVal=[205 57 32 12 7 2 13];  %I've created this array via histogram values.


%Expected and Observed Value for each interval
disp("Expected and Observed Value for each interval")

%(0-100)Exp. 
disp("(0-100)Exp.")
integralExpectedValue(0)
%(0-100)Obs.
disp("(0-100)Obs.")
ObsVal(1)

%(100-200)Exp. 
disp("(100-200)Exp.")
integralExpectedValue(100)
%(100-200)Obs.
disp("(100-200)Obs.")
ObsVal(2)

%(200-300)Exp. 
disp("(200-300)Exp.")
integralExpectedValue(200)
%(200-300)Obs.
disp("(200-300)Obs.")
ObsVal(3)

%(300-400)Exp. 
disp("(300-400)Exp.")
integralExpectedValue(300)
%(300-400)Obs.
disp("(300-400)Obs.")
ObsVal(4)

%(400-500)Exp. 
disp("(400-500)Exp.")
integralExpectedValue(400)
%(400-500)Obs.
disp("(400-500)Obs.")
ObsVal(5)

%(500-600)Exp. 
disp("(500-600)Exp.")
integralExpectedValue(500)
%(500-600)Obs.
disp("(500-600)Obs.")
ObsVal(6)

%(600-48502)Exp. 
disp("(600-48502)Exp.")

p=0.00386;
fun=@(x) p*exp(-p*x);
k=integral (fun,600,48502);      
ExpVal=328*k;
disp(ExpVal);

%(600-48502)Obs.
disp("(600-48502)Obs.")
ObsVal(7)






disp("Chi-Square Values Separately and Sum")

%Sum

disp("Chi-Square ---  0-100")
chi1=chiSquare((ObsVal(1)),integralExpectedValue(0));         

disp("Chi-Square ---  100-200")
chi2=chiSquare((ObsVal(2)),integralExpectedValue(100));    

disp("Chi-Square ---  200-300")
chi3=chiSquare((ObsVal(3)),integralExpectedValue(200));   

disp("Chi-Square ---  300-400")
chi4=chiSquare((ObsVal(4)),integralExpectedValue(300)); 

disp("Chi-Square ---  400-500")
chi5=chiSquare((ObsVal(5)),integralExpectedValue(400)); 

disp("Chi-Square ---  500-600")
chi6=chiSquare((ObsVal(6)),integralExpectedValue(500)); 

disp("Chi-Square ---  600-48502")
chi7=chiSquare((ObsVal(7)),integralExpectedValue(600));

disp("Chi-Square Sum")
sum=chi1+chi2+chi3+chi4+chi5+chi6+chi7;

disp(sum)


disp("Comparison according to Chi-Square Table")

disp("139.8254>12.592")

if(sum<12.592)
    disp("Chi-Square Test Succesful")
else
    disp("Chi-Square Test Failed")
end