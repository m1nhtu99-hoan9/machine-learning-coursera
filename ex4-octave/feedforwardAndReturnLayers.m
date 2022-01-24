function [H, X, a1, z2, a2, z3] = feedforwardAndReturnLayers(              ...
                                                          X,               ...
                                                          hidden_layer1,   ...
                                                          hidden_layer2)
  m  = length(X);
  
  X  = [ones(m,1) X];
  a1 = X;
  
  z2 = a1 * hidden_layer1';
  a2 = sigmoid(z2);
  a2 = [ones(m,1) a2];
  
  z3 = a2 * hidden_layer2';
  H  = sigmoid(z3);
endfunction
