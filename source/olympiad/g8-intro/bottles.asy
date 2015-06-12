real size = 5cm;
size(size);

import geometry;

real space = 0.05;

void draw_bottle(pair p, int n = 40) {
    real r_outer = 1 - 0.5space;
    real r_inner = 0.8r_outer;
    transform shift = shift(p);
    path circle = shift * scale(r_outer) * unitcircle;
    radialshade( circle,
        pena=gray(0.95), a=p, ra=0.0,
        penb=gray(0.80), b=p, rb=r_inner, extendb=false
    );
    radialshade( circle,
        pena=gray(0.85), a=p, ra=r_inner, extenda=false,
        penb=white, b=p, rb=r_outer
    );
    draw(circle);
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

draw(
    (left-0.2,top+0.2)--(left-0.2,bottom-0.2)--
    (right+0.2,bottom-0.2)--(right+0.2,top+0.2),
invisible);

