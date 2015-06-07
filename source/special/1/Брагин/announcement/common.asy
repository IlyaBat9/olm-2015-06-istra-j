size(3cm);

real space = 0.1;

void drawtile(int x, int y, Label label) {
    draw(
        shift((1.0x, 1.0y)) *
        shift((0.5space,0.5space)) * scale(1-space) * unitsquare );
    label(label, (x+0.5, y+0.5));
}

draw(shift(-0.5space, -0.5space) * scale(4+space) * unitsquare);

drawtile(0, 3,  "1");
drawtile(1, 3,  "2");
drawtile(2, 3,  "3");
drawtile(3, 3,  "4");
drawtile(0, 2,  "5");
drawtile(1, 2,  "6");
drawtile(2, 2,  "7");
drawtile(3, 2,  "8");
drawtile(0, 1,  "9");
drawtile(1, 1, "10");
drawtile(2, 1, "11");
drawtile(3, 1, "12");
drawtile(0, 0, "13");

