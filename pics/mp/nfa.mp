
input simple_automata;
u := 40pt;

% --------------------------------------------------

beginfig(0);

with spacing((62,29)) matrix.a(3,6);

node.a[1][0]( TEX("A") );
node.a[1][1]( TEX("B") );
node.a[1][2]( TEX("C") );
node.a[1][3]( TEX("D") );
node.a[1][4]( TEX("E") );
node_double.a[0][5]( TEX("F") );
node.a[2][5]( TEX("G") );

incoming(0, "") (a[1][0]) 120;

simple_connect( a1 0, a1 1, 0, "$0,1$" );
simple_connect( a1 1, a1 2, 0, "$0,1$" );
simple_connect( a1 2, a1 3, 0, "$0,1$" );
simple_connect( a1 3, a1 4, 0, "$0,1$" );
simple_connect( a1 4, a0 5, 0, "$0$" );
simple_connect( a1 4, a2 5, 0, "$1$" );

simple_loop(a0 5, "right", "$0,1$");
simple_loop(a2 5, "right", "$0,1$");


endfig;
% --------------------------------------------------

beginfig(1);

with spacing((62,29)) matrix.a(1,6);

node.a[0][0]( TEX("A") );
node.a[0][1]( TEX("B") );
node.a[0][2]( TEX("C") );
node.a[0][3]( TEX("D") );
node.a[0][4]( TEX("E") );
node_double.a[0][5]( TEX("F") );

incoming(0, "") (a[0][0]) 120;

simple_loop( a0 0, "left", "$0,1$" );
simple_connect( a0 0, a0 1, 0, "$0$" );
simple_connect( a0 1, a0 2, 0, "$0,1$" );
simple_connect( a0 2, a0 3, 0, "$0,1$" );
simple_connect( a0 3, a0 4, 0, "$0,1$" );
simple_connect( a0 4, a0 5, 0, "$0,1$" );

endfig;
% --------------------------------------------------

beginfig(2);

with spacing((62,29)) matrix.a(1,4);

node.a[0][0]( TEX("A") );
node.a[0][1]( TEX("B") );
node.a[0][2]( TEX("C") );
node_double.a[0][3]( TEX("D") );

incoming(0, "") (a[0][0]) 120;

simple_loop( a0 0, "left", "$1,2,3$" );
simple_connect( a0 0, a0 1, 0, "$1$" );
simple_connect( a0 1, a0 2, 0, "$2$" );
simple_connect( a0 2, a0 3, 0, "$3$" );

endfig;
% --------------------------------------------------

beginfig(3);

with spacing((62,29)) matrix.a(3,2);

node.a[1][0]( TEX("M") );
with shape(boxed) node.a[0][1]( TEX("M$_1$") );
with shape(boxed) node.a[2][1]( TEX("M$_2$") );

incoming(0, "") (a[1][0]) 120;

simple_connect( a1 0, a0 1,  80, "$\varepsilon$" );
simple_connect( a1 0, a2 1, -80, "$\varepsilon$" );

endfig;
% --------------------------------------------------

beginfig(4);

with spacing((62,29)) matrix.a(1,2);

node.a[0][0]( TEX("s1") );
node_double.a[0][1]( TEX("A") );

incoming(0, "") (a[0][0]) 120;

simple_connect( a0 0, a0 1, 0, "" );

endfig;
% --------------------------------------------------

beginfig(5);

with spacing((62,29)) matrix.a(1,2);

node.a[0][0]( TEX("s2") );
node_double.a[0][1]( TEX("B") );

incoming(0, "") (a[0][0]) 120;

simple_connect( a0 0, a0 1, 0, "" );

endfig;
% --------------------------------------------------

beginfig(6);

with spacing((62,29)) matrix.a(2,3);

node.a[0][1]( TEX("s1") );
node.a[0][2]( TEX("A")  );
node_double.a[1][0]( TEX("B") );
node.a[1][1]( TEX("s2")  );

incoming(0, "") (a[0][1]) 120;

simple_connect( a0 1, a0 2, 0, "" );
simple_connect( a0 2, a1 1, -100, "$\varepsilon$" );
simple_connect( a1 1, a1 0, 0, "" );

endfig;
% --------------------------------------------------

beginfig(7);
with spacing((62,29)) matrix.a(2,3);

node.a[0][0]( TEX("A") );
node.a[0][2]( TEX("B") );
node_double.a[1][1]( TEX("C") );

incoming(0, "") (a[0][0]) 120;


simple_connect( a0 0, a0 2, 0, "" );
simple_connect( a0 2, a1 1, -100, "" );

endfig;
% --------------------------------------------------

beginfig(8);
with spacing((62,29)) matrix.a(2,4);

node_double.a[0][0]( TEX("S") );
node.a[0][1]( TEX("A") );
node.a[0][3]( TEX("B") );
node_double.a[1][2]( TEX("C") );

incoming(0, "") (a[0][0]) 120;


simple_connect( a0 0, a0 1, 0, "$\large\varepsilon$" );
simple_connect( a0 1, a0 3, 0, "" );
simple_connect( a0 3, a1 2, -100, "" );
simple_connect( a1 2, a0 1, 190, "$\large\varepsilon$" );

endfig;
% --------------------------------------------------

beginfig(9);
with spacing((62,29)) matrix.a(1,3);

node.a[0][0]( TEX("s"));
node.a[0][1]( TEX(""));
node_double.a[0][2]( TEX(""));

incoming(0, "") (a[0][0]) 120;
simple_connect( a0 0, a0 1, 0, "$x$" );
simple_connect( a0 1, a0 2, 0, "$z$" );
simple_loop( a0 1, "down", "$y^i$" );

endfig;
% --------------------------------------------------


                                        end
