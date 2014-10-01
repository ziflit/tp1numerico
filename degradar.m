%La funcion recibe por parametro un string con el nombre del archivo de filtro 
%y otro con el nombre del archivo de la imagen a degradar.
%Aplica el filtro indicado sobre la imagen definida y devuelve el resultado.
function resultado = degradar(archfiltro, archimagen)
    filtroaa = load(archfiltro);
    %Para que la misma funcion sirva para ambos filtros, lo que hago es moverme entre los campos
    %del struct que se carga con load() (en este caso solo me importa el primero, si hubiera mas
    %de uno surgirian problemas) y lo aplico a la imagen pasada por parametro. 
    %Luego devuelvo  la imagen filtrada.
    campos = fieldnames(filtroaa);
    for campo = 1:numel(campos)
        filtro = filtroaa.(campos{campo});
        imagen = load(archimagen);
        load("phi.m");
        X = reshape(imagen.X, [4096, 1]);
        Y = phi(filtro * X);
    end
    resultado = reshape(Y, [64,64]);
