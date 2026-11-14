area_square(X, A) :-
    A is X * X.

perimeter_square(X, P) :-
    P is X * 4.

area_rectangle(W, H, A) :-
    A is W * H.

perimeter_rectangle(W, H, P) :-
    P is 2 * (W + H).

area_triangle(B, VH, A) :-
    A is 0.5 * B * VH.

perimeter_triangle(A, B, C, P) :-
    P is A + B + C.
