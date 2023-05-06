istHauptstadtVon(paris, frankreich).
istHauptstadtVon(berlin, deutschland).
istHauptstadtVon(london, grossbritannien).
istHauptstadtVon(rom, italien).
istHauptstadtVon(washington, usa).

liegtImKontinent(frankreich, europa).
liegtImKontinent(deutschland, europa).
liegtImKontinent(grossbritannien, europa).
liegtImKontinent(italien, europa).
liegtImKontinent(usa, nordamerika).

stadtLiegtInKontinent(Stadt, Kontinent) :-
    istHauptstadtVon(Stadt, Land),
    liegtImKontinent(Land, Kontinent).

stadtLiegtInEuropa(Stadt) :-
    stadtLiegtInKontinent(Stadt, europa).

stadtLiegtInAfrika(Stadt) :-
    stadtLiegtInKontinent(Stadt, afrika).

liegenImGleichenKontinent(Stadt1, Stadt2) :-
    stadtLiegtInKontinent(Stadt1, Kontinent),
    stadtLiegtInKontinent(Stadt2, Kontinent),
    Stadt1 \= Stadt2.
