%Devuelve el error relativo de una imagen filtrada con respecto a la original bajo la expresion:
%
% ||Y - X|| / || X || 
%
% Donde Y es la imagen filtrada, X la imagen original y '||' denota la norma euclidea.
function resultado = erroresfiltradas(original, filtrada)
   w = filtrada - original;
   resultado = norm(w) / norm(original);
