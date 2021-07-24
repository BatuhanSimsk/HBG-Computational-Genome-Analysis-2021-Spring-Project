function [ChiSq] = chiSquare(Observed,Expected)

ChiSq=((Observed-Expected)^2)/Expected;
disp(ChiSq);
end

