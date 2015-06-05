size(2.5cm);

int n = 5;

for (int i = 0; i <= n; ++i) {
    draw((i,0)--(i,n) ^^ (0,i)--(n,i));
}

dot(Label("$A$", (2,2), SW));
dot(Label("$B$", (3,3), NE));

