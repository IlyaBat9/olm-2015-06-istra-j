real size = 5cm;
size(size);

import geometry;

real space = 0.1;

void draw_bottle(pair p, int n = 40) {
    transform scale = scale(1-0.5space);
    transform shift = shift(p);
    draw(shift * scale * unitcircle);
    for (int i = 0; i < n; ++i) {
        pair dir = dir(i*360/n);
        draw(shift * scale * (dir--0.8dir));
    }
}

void draw_bottle(real x, real y) {
    draw_bottle((x,y));
}

point
    A = (0,0), B = (3.3, 0), C = B + (2,0);

point D = (B + A) / 2 + unit(B-A) * I * sqrt(2^2 - abs((B-A)/2)^2);
point E = B + (C - B) * dir(60);
point F = (A.x, 2D.y - A.y), G = (D + E - B), H = (C.x, 2E.y-C.y);

draw_bottle(A);
draw_bottle(B);
draw_bottle(C);
draw_bottle(D);
draw_bottle(E);
draw_bottle(F);
draw_bottle(G);
draw_bottle(H);

dot(F);
dot(G);
dot(H);
draw(line(F, H), dashed);

real
    left = A.x - 1 - 0.5space,
    right = C.x + 1 + 0.5space,
    top = H.y + 1, bottom = A.y - 1 - 0.5space;

draw((left,top)--(left,bottom)--(right,bottom)--(right,top));

