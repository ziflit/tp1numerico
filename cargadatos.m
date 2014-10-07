%Carga de todos los archivos en variables:
load("degradar.m");
A1 = load("Filtro_A1.mat").A1;
A2 = load("Filtro_A2.mat").A2;
X1 = load("saturn64x64.mat").X;
X2 = load("Patente_A_64x64.mat").X;
Araya = [A1 ; A2];
Y1sat = degradar("Filtro_A1.mat", "saturn64x64.mat");
Y2sat = degradar("Filtro_A2.mat", "saturn64x64.mat");
Y1pat = degradar("Filtro_A1.mat", "Patente_A_64x64.mat");
Y2pat = degradar("Filtro_A2.mat", "Patente_A_64x64.mat");

YSrayaV = [ reshape(Y1sat, [4096, 1]) ; reshape(Y2sat, [4096, 1]) ]; %Funciona?
YPrayaV = [ reshape(Y1pat, [4096, 1]) ; reshape(Y2pat, [4096, 1]) ];

B = Araya' * Araya;
V1 = Araya' * YSrayaV;
V2 = Araya' * YPrayaV;
