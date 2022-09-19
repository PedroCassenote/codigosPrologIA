% Fatos:

pai(aristides,carlos).
pai(aristides,luciano).
pai(aristides,eder).
pai(carlos, pedro).
pai(luciano, mauricio).
pai(luciano, camila).
pai(ari, rejane).
pai(ari, rita).
pai(ari, ricardo).

mae(lucia, carlos).
mae(lucia, luciano).
mae(lucia, eder).
mae(rita, pedro).
mae(daura, mauricio).
mae(daura, camila).
mae(iraci, rejane).
mae(iraci, rita).
mae(iraci, ricardo).

% Casamento é uma relação bilateral, por isso acho que 
% devo repetir mudando as posições

casado(aristides, lucia).
casado(lucia, aristides).
casado(ari, iraci).
casado(iraci, ari).
casado(carlos, rita).
casado(rita, carlos).
casado(luciano, daura).
casado(daura, luciano).

% Regras:

avo(X, Z) :- pai(X, Y), pai(Y, Z).

irmao(X, Y) :- pai(Z, X), pai(Z, Y),
    		   X \== Y.

tio(X, Z) :- irmao(X, Y), pai(Y, Z),
    		 X \== Z.

cunhado(X, Z) :- casado(X, Y), irmao(Y, Z).
				 









