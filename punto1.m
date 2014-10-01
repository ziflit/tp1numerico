%Esta funcion ejecuta el punto 1, dadas las imagenes y los filtros en el working directory de octave.
function error = punto1
    load degradar.m
    load erroresfiltradas.m
    x1 = load("saturn64x64.mat").X;
    x2 = load("Patente_A_64x64.mat").X;
    y1 = degradar("Filtro_A1.mat", "saturn64x64.mat");
    y2 = degradar("Filtro_A2.mat", "saturn64x64.mat");
    y3 = degradar("Filtro_A1.mat", "Patente_A_64x64.mat");
    y4 = degradar("Filtro_A2.mat", "Patente_A_64x64.mat");
    erSat1 = erroresfiltradas(x1, y1);
    erSat2 = erroresfiltradas(x1, y2);
    erPat1 = erroresfiltradas(x2, y3);
    erPat2 = erroresfiltradas(x2, y4);
    disp('El error de la imagen saturno con el filtro A1 es: '), disp(erSat1)
    disp('El error de la imagen saturno con el filtro A2 es: '), disp(erSat2)
    disp('El error de la imagen patente con el filtro A1 es: '), disp(erPat1)
    disp('El error de la imagen patente con el filtro A2 es: '), disp(erPat2)
