% Author: Shawan Das
% Date: 8/2/2022

%-------FaCT-------
father(oboni,loknath).  %Obonib is father of Loknath.
father(oboni,sibu).     %Oboni is father of Sibu.
father(oboni,bishowjit).%oBONIN is father of bishowjit
father(sibu,shishir).   % Sibu is father of Shishir
father(sibu,shyma).     %  Sibu is father of Shyma
father(bishowjit,parmita). % bishowjit is father of Parmita
father(bishowjit,protoy).  %bishowjit is father of Protoy
father(loknath,shawan). %Loknath is father of Shawan
mother(jaba,shawan).    %Jaba is mother of Shawan



%------Rule----
same(X,Y):- X=Y.
%-- find parent---
parent(X,Y):-
    father(X,Y); mother(X,Y).  % X is parent of Y if X is father/mother of Y
    
%--- find Sibling---
sibling(X,Y):-
    parent(Z,X), parent(Z,Y), not(X=Y). % X-Y sibling if Z is parent of both X-Y
    
%---- find grandfather----
grandfather(X,Y):-
    parent(Z,Y), parent(X,Z). % X is grandfather of Y if Z is parent of Y and X is parent of Z

%--- find cousin----
cousin(X,Y):-
    grandfather(A,X), grandfather(B,Y), not(sibling(X,Y)), not(same(X,Y)), A=B. % X is cousin of Y if parents of X & Y's are sibling.

%---- Uncle----
uncle(X,Y):-
     parent(A,Y), sibling(X,A), not(parent(X,Y)). % X is uncle of Y if parent of Y(A) and X are sibling.
