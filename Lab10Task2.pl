%Facts as a Dataset
haspassword(abrar, '12E3aAqw').
haspassword(lily, '1Qgh33w').
haspassword(lina, 'hgfsQjk2345').
haspassword(asma, 'hredfu43').
haspassword(nora, 'ghfuA8i322').
haspassword(lamar, 'hj3847ug').
haspassword(suha, '123aAqw').
haspassword(ahmed, 'FBH21Daaa').
haspassword(omar, '4dfr5gthy').
haspassword(ali, 'e4r5t6y').
haspassword(salem, 'gfhAA3IENCaa').
haspassword(fahad, 'gfdgsh238DF').


% Total log in attempt
login :-
    attempt_login(3).


attempt_login(0) :-
    write('Sorry, you exceeded the maximum number of attempts, try again later.'), nl.


attempt_login(Attempts) :-
    Attempts > 0,
    write('Enter username: '),
    read(User),
    write('Enter password: '),
    read(Pass),
    verify_login(User, Pass, Attempts).


% Credentials are correct

verify_login(User, Pass, _) :-
    haspassword(User, Pass),
    write('Login Successful'), nl.

% Credentials are incorrect
 
verify_login(User, Pass, Attempts) :-
    not(haspassword(User, Pass)),
    write('Login Unsuccessful'), nl,
    Remaining is Attempts - 1,
    attempt_login(Remaining).
