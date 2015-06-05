import geometry;

real size=4cm;
size(size);

point A = (0,0), B = (1,4), C = (4,0);
point
    A1 = (4 A + 2 C + B) / 7,
    B1 = (4 B + 2 A + C) / 7,
    C1 = (4 C + 2 B + A) / 7;
triangle ABC = triangle(A, B, C);

draw(ABC, linewidth(1));
draw(A--C1, StickIntervalMarker(2, 1, size=size/20));
draw(B--A1, StickIntervalMarker(2, 2, size=size/25));
draw(C--B1, StickIntervalMarker(2, 3, size=size/30));

dot(Label("$A$", A, SW));
dot(Label("$B$", B, N));
dot(Label("$C$", C, SE));
dot(A1);
dot(B1);
dot(C1);

label(Label("$S$", incenter(A1, B1, C1)));

