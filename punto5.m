Deg1 = load("Degradada_1.mat").Y1; 
Deg2 = load("Degradada_2.mat").Y2;

YrayaPat = [ reshape(Deg1 ,[4096, 1]) ; reshape(Deg2, [4096, 1]) ];

V3 = Araya' * YrayaPat;

PatenteFiltrada = reshape( B\V3, [64,64]);
imagesc(PatenteFiltrada);
colormap('gray');
