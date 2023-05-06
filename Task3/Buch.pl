% Fakten
buch("Der Name der Rose", "Umberto Eco", krimi).
buch("Siddhartha", "Hermann Hesse", roman).
buch("1984", "George Orwell", dystopie).
buch("Der Prozess", "Franz Kafka", roman).
buch("Der Sandmann", "E.T.A. Hoffmann", horror).
buch("The Hitchhiker's Guide to the Galaxy", "Douglas Adams", science_fiction).

% Regeln
autor_buch(Autor, Buch) :- buch(Buch, Autor, _).
krimi_buch(Autor, Buch) :- buch(Buch, Autor, krimi).
