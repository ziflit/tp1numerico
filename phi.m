function y = phi(u)
    %Tamanio fila de u
    n = size(u);
    for i = 1:(n)
        redondeado = round(u(i));
    	if (redondeado >= 0 && redondeado <= 255)
    		y(i) = redondeado;
    	elseif (redondeado > 255)
    		y(i) = 255;
    	else
    		y(i) = 0;
    	end
    end
