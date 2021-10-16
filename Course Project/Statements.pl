child("Prince George of Cambridge", "Prince William Duke of Campridge").
child("Prince George of Cambridge", "Catherine Duchess of Cambridge").
male("Prince George of Cambridge").

female("Catherine Duchess of Cambridge").

child("Princess Charlotte of Cambridge", "Prince William Duke of Campridge").
child("Princess Charlotte of Cambridge", "Catherine Duchess of Cambridge").
female("Princess Charlotte of Cambridge").

child("Prince William Duke of Campridge", "Charles Prince of Wales").
child("Prince William Duke of Campridge", "Lady Diana Spencer").
male( "Prince William Duke of Campridge").

female("Lady Diana Spencer").

child("Prince Harry of Wales", "Charles Prince of Wales").
child("Prince Harry of Wales", "Lady Diana Spencer").
male("Prince Harry of Wales").

child("Charles Prince of Wales", "Prince Phillip of Greece and Denmark Duke of Edinburgh").
child("Charles Prince of Wales", "Queen Elizabeth II").
male("Charles Prince of Wales").

male("Prince Phillip of Greece and Denmark Duke of Edinburgh").

child("Prince Andrew Duke of York", "Prince Phillip of Greece and Denmark Duke of Edinburgh").
child("Prince Andrew Duke of York", "Queen Elizabeth II").
male("Prince Andrew Duke of York").

child("Prince Edward Earl of Wessex", "Prince Phillip of Greece and Denmark Duke of Edinburgh").
child("Prince Edward Earl of Wessex", "Queen Elizabeth II").
male("Prince Edward Earl of Wessex").

child("Anne the Princess Royal", "Prince Phillip of Greece and Denmark Duke of Edinburgh").
child("Anne the Princess Royal", "Queen Elizabeth II").
female("Anne the Princess Royal").

child("Princess Beatrice of York", "Prince Andrew Duke of York").
child("Princess Beatrice of York", "Sarah Fergusson Duchess of York").
female("Princess Beatrice of York").

female("Sarah Fergusson Duchess of York").

child("Princess Eugenia of York", "Prince Andrew Duke of York").
child("Princess Eugenia of York", "Sarah Fergusson Duchess of York").
female("Princess Eugenia of York").

child("Lady Lousie Windsor", "Prince Edward Earl of Wessex").
child("Lady Lousie Windsor", "Sophie Rhys-Jones Countess of Wessex").
female("Lady Lousie Windsor").
female("Sophie Rhys-Jones Countess of Wessex").

child("James Viscount Severn", "Prince Edward Earl of Wessex").
child("James Viscount Severn", "Sophie Rhys-Jones Countess of Wessex").
male("James Viscount Severn").

child("Zara Phillips", "Capt. Mark Phillips").
child("Zara Phillips", "Anne the Princess Royal").
female("Zara Phillips").
male("Capt. Mark Phillips").

child("Peter Phillips", "Capt. Mark Phillips").
child("Peter Phillips", "Anne the Princess Royal").
female("Peter Phillips").

child("Savannah Phillips", "Peter Phillips").
child("Savannah Phillips", "Autumn Kelly").
female("Savannah Phillips").
female("Autumn Kelly").

child("Isla Elizabeth Phillips", "Peter Phillips").
child("Isla Elizabeth Phillips", "Autumn Kelly").
female("Isla Elizabeth Phillips").

child("Mia Tindall", "Michael Tindell").
child("Mia Tindall", "Zara Phillips").
female("Mia Tindall").
male("Michael Tindell").

child("Queen Elizabeth II", "King George VI").
child("Queen Elizabeth II", "Queen Elizabeth").
female("Queen Elizabeth II").

male("King George VI").
female("Queen Elizabeth").

child("Princess Margaret", "King George VI").
child("Princess Margaret", "Queen Elizabeth").
female("Princess Margaret").

child("David Armstrong-Jones Viscount Linley", "Anthony Armstrong-Jones Earl of Snowdon").
child("David Armstrong-Jones Viscount Linley" , "Princess Margaret").
male("David Armstrong-Jones Viscount Linley").

male("Anthony Armstrong-Jones Earl of Snowdon").

child("Lady Sarah Armstrong-Jones", "Anthony Armstrong-Jones Earl of Snowdon").
child("Lady Sarah Armstrong-Jones" , "Princess Margaret").
female("Lady Sarah Armstrong-Jones").

child("Hon. Charles Armstrong-Jones", "David Armstrong-Jones Viscount Linley").
child("Hon. Charles Armstrong-Jones", "Serena Stanhope").
male("Hon. Charles Armstrong-Jones").

female("Serena Stanhope").

child("Hon. Margarita Armstrong-Jones", "David Armstrong-Jones Viscount Linley").
child("Hon. Margarita Armstrong-Jones", "Serena Stanhope").
female("Hon. Margarita Armstrong-Jones").

child("Samuel Chatto", "Daniel Chatto").
child("Samuel Chatto", "Lady Sarah Armstrong-Jones").
male("Samuel Chatto").

male("Daniel Chatto").

child("Arthur Chatto", "Daniel Chatto").
child("Arthur Chatto", "Lady Sarah Armstrong-Jones").
male("Arthur Chatto").

brother(X, Y) :- child(X, Z), child(Y, Z), male(Y).
sister(X, Y) :- child(X, Z), child(Y, Z), female(Y).
wife(X, Y) :- child(Z, X), child(Z, Y), female(Y).
husband(X, Y) :- child(Z, X), child(Z, Y), male(Y).
son(X, Y) :- child(Y, X), male(Y).
daughter(X, Y) :- child(Y, X), female(Y).
mother(X, Y) :- child(Y, X), female(Y).
father(X, Y) :- child(Y, X), male(Y).




