ResultadoSatElimGauss = reshape( elim_gauss(B, V1), [64,64] );
ResultadoPatElimGauss = reshape( elim_gauss(B, V2), [64,64] );

disp('El error relativo de la imagen de Saturno con el metodo de Eliminacion de Gauss sin pivoteo es: ') 
errorSatElimGauss = norm ( reshape(ResultadoSatElimGauss, [64,64]) - X1 ) / norm(X1)
disp('El error relativo de la imagen de la patente con el metodo de eliminacion de Gauss sin pivoteo es: ')
errorPatElimGauss = norm ( reshape(ResultadoPatElimGauss, [64,64]) - X2 ) / norm(X2)
