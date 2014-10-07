source cargadatos.m
ResultadoSat = reshape( B\V1 , [64, 64] );
ResultadoPat = reshape( B\V2, [64,64] );

disp('El error relativo de la imagen de Saturno es: ')
errorSat = norm ( reshape( ResultadoSat, [64, 64]) - X1 ) / norm(X1)
disp('El error relativo de la imagen de la patente es: ')
errorPat = norm (reshape(ResultadoPat, [64,64]) - X2) / norm(X2)
