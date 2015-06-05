import geometry;

real size=4cm;
size(size);

point A = (0,0), B = (1,4), C = (4,0);
triangle ABC = triangle(A, B, C);

point
    D  = (2 A + C) / 3,
    D1 = (A + 2 C) / 3;

draw(ABC, linewidth(1));
draw(A--C, invisible, StickIntervalMarker(3, 1));

draw(B--D);

dot(Label("$A$", A, SW));
dot(Label("$B$", B, N));
dot(Label("$C$", C, SE));
dot(D);
dot(D1);

label(Label("$S$", incenter(A, B, D)));

