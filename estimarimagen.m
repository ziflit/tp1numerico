%A es mi matriz de filtro e Y es la matriz resultado de filtrara una imagen
function x = estimarimagen(A, Y)
  
  % Funcion de prueba punto 3
  
  % Necesitaria pasar por parametro el vector x 
  % que averigue en el punto 2
  
  % A' devuelve la matriz traspuesta
  % C = [ A; B] para concatenar matrices verticalmente
  % C = [ A, B] para concatenar matrices horizontalmente
  
  % norm(x) calcula la norma euclidea de un vector
  
  B = A' * A;    % matriz nxn
  vectorizado = reshape(Y, [4096, 1]);
  v = A'*vectorizado;        % vector 
  
  % Utilizo elim_gauss (metodo de eliminacion de Gauss
  % SIN PIVOTEO) para resolver Bz = v
  x = elim_gauss(B,v);
  
  % Para calcular este punto necesito primero calcular Y
  % a partir de Ax= y
  % Dsp saco z a partir de Bz = v
 
