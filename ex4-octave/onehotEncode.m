function [Y] = onehotEncode(y, num_classes)
  assert(isindex(y), ...
         "Expected `y` to be a vector so that it can be used as index!");
         
  #{
  I = eye(num_classes);
  for i = 1:length(y),
    Y(i) = I(y(i), :);
  end
  #}
  Y = eye(num_classes)(y,:);
endfunction
