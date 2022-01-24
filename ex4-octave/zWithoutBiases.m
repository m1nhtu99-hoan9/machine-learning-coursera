function [zNormalised] = zWithoutBiases(z)
  zNormalised = [ones( size(z,1) , 1 ) z];
endfunction
