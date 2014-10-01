function x = susthaciaatras(M)
% Funcion que recibe una matriz M
% y aplica la sustitucion hacia atras para obtener
% el resultado del sistema
  % http://www.uv.es/~diaz/mn/node27.html#sssec:facil
  
  % Obtengo el numero de filas y columnas
  [f, c] = size(M);
  % Inicializo el vector de incognitas 
  x = zeros(f,1);
  % Calculo primero el ultimo, x(f)
  x(f) = M(f,c)/M(f,f);
  
  for i = (f-1):-1:1
    x(i) = ( M(i,c) - M(i,i+1:f) * x(i+1:f) ) / M(i,i);
  end;