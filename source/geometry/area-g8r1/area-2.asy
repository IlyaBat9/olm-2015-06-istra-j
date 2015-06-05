import geometry;

real size=4cm;
size(size);

point A = (0,0), B = (1,4), C = (4,0);
triangle ABC = triangle(A, B, C);

point
    D1 = (2 A + C) / 3,
    D  = (A + 2 C) / 3,
    E1 = (2 D + B) / 3,
    E  = (D + 2 B) / 3;

draw(ABC, linewidth(1));
draw(A--C, invisible, StickIntervalMarker(3, 1));

draw(B--D ^^ A--E);
draw(B--D, invisible, TildeIntervalMarker(3, 1, size=size/30));

dot(Label("$A$", A, SW));
dot(Label("$B$", B, N));
dot(Label("$C$", C, SE));
dot(D);
dot(E);
dot(D1);
dot(E1);

label(Label("$S$", incenter(A, B, E)));

