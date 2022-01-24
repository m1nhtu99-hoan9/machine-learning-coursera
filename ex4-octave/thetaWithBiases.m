function [ThetaNormalised] = thetaWithBiases(Theta)
  ThetaNormalised = [zeros( size(Theta,1) , 1 ) Theta(:, 2:end)]
endfunction
