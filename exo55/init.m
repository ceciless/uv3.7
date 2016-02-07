function init
close all; clear all; clc;
taille = get(0,'ScreenSize'); % plein ecran
figure('Position',[0 0 taille(3) taille(4)]);
set(gca,'FontSize',12);
%axis [xmin xmax ymin ymax];
axis square
end


