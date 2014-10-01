function x = elim_gauss(A,y)
% Funcion que resuelve el sistema Ax = y utilizando
% el metodo de eliminacion gaussiana SIN PIVOTEO.

  % Concateno A e y en la matriz M
  M = [A, y];
  % Obtengo el tamaño de filas y columnas
  [f, c] = size(M);
  % Recorro por columnas
  for k = 1:(f-1)
    % Recorro por filas
    for j = (k+1):f
      multiplicador = M(j,k) / M(k,k);
      
      M(j,k:c) = M(j,k:c) - multiplicador * M(k,k:c);
      
      %Almaceno el multiplicador
      M(j,k) = multiplicador;
     
    end 
  end
  
  % Hasta aca logre hacer que la matriz A 
  % quede como triangular superior con
  % multiplicadores almacenados debajo de la 
  % diagonal principal
  
  % Compare con la solucion de la pag
  % http://www.uv.es/~diaz/mn/node29.html de 4x4
  
  % Ahora aplico sustitucion hacia atras
  x = susthaciaatras(M);
