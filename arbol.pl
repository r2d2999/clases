%Hechos

padrede(daniel,arturo).
padrede(arturo,armando).
padrede(arturo, ana).
padrede(arturo, diego).
padrede(daniel,luis).
padrede(pablo, didier).
padrede(pablo,zamara).
padrede(daniel, donato).
padrede(daniel,andrea).
padrede(donato, miguel).
padrede(donato, karen).
padrede(armando, heather).
padrede(luis,jorge).
padrede(luis,pablo).
madrede(carlota,arturo).
madrede(carlota, luis).
madrede(carlota, donato).
madrede(carlota, andrea).
madrede(camelia, armando).
madrede(camelia, ana).
madrede(camelia,diego).
madrede(jovita, jorge).
madrede(jovita, pablo).
madrede(sofia, miguel).
madrede(sofia, karen).
madrede(maria, didier).
madrede(maria, zamara).



%Reglas
hijode(B,A):-padrede(A,B).
hijode(B,A):-madrede(A,B).

%ReglasAbuelos
abuelode(A,C):-padrede(A,B), padrede(B,C).
abuelade(A,C):-madrede(A,B), padrede(B,C).
nietode(C,A):-hijode(B,A), hijode(C,B).

%ReglasHermanos
hermanode(B,C):-hijode(B,A), madrede(A,B), hijode(C,A), madrede(A,C).

%ReglasTios
tiode(D,C):-hermanode(D,B), padrede(B,C).
sobrinode(C,D):-hermanode(B,D), hijode(C,B).

%ReglasPrimos
primode(B,D):-hermanode(A,C), hijode(B,A), hijode(D,C). 

%ReglasTiosSegundos
tiosegundode(E,C):- primode(B,E), hijode(C,B).

