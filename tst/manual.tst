#
gap> START_TEST( "manual.tst" );

#
# Section "Testing nilpotency and other functions"
#

#
gap> IsNilpotentMatGroup(GL(200,Integers));
false
gap> IsNilpotentMatGroup(GL(150,11^3));
false

#
gap> g6 := MaximalAbsolutelyIrreducibleNilpotentMatGroup(127,2,7);
<matrix group with 3 generators>
gap> IsNilpotentMatGroup(g6);
true

#
gap> g7 := MonomialNilpotentMatGroup(350);
<matrix group with 6 generators>
gap> IsNilpotentMatGroup(g7);
true
gap> IsFiniteNilpotentMatGroup(g7);
true

#
gap> g8 := ReducibleNilpotentMatGroup(6,35);
<matrix group with 5 generators>
gap> IsNilpotentMatGroup(g8);
true
gap> IsFiniteNilpotentMatGroup(g8);
false

#
gap> g9 := ReducibleNilpotentMatGroup(2,36,5,2);
<matrix group with 21 generators>
gap> x := SylowSubgroupsOfNilpotentFFMatGroup(g9);;
gap> ForAll(x, IsMatrixGroup);
true
gap> List(x, g -> Length(GeneratorsOfGroup(g)));
[ 5, 6, 1 ]
gap> IsCompletelyReducibleNilpotentMatGroup(g9);
false

#
gap> g10 := MaximalAbsolutelyIrreducibleNilpotentMatGroup(24,5,2);
<matrix group with 17 generators>
gap> SizeOfNilpotentMatGroup(g10);
173946175488
gap> IsCompletelyReducibleNilpotentMatGroup(g10);
true

#
gap> g11 := MonomialNilpotentMatGroup(96);
<matrix group with 31 generators>
gap> SizeOfNilpotentMatGroup(g11);
6442450944
gap> IsCompletelyReducibleNilpotentMatGroup(g11);
true

#
# Section "Using the library of primitive nilpotent groups"
#

#
gap> L0 := NilpotentPrimitiveMatGroups(2,3,1);
[ Group([ [ [ 0*Z(3), Z(3)^0 ], [ Z(3)^0, Z(3)^0 ] ] ]), 
  Group([ [ [ Z(3)^0, 0*Z(3) ], [ 0*Z(3), Z(3)^0 ] ], 
      [ [ Z(3), Z(3)^0 ], [ Z(3), Z(3) ] ], 
      [ [ Z(3)^0, 0*Z(3) ], [ 0*Z(3), Z(3) ] ] ]), 
  Group([ [ [ Z(3)^0, 0*Z(3) ], [ 0*Z(3), Z(3)^0 ] ], 
      [ [ 0*Z(3), Z(3)^0 ], [ Z(3), 0*Z(3) ] ], 
      [ [ Z(3), Z(3) ], [ Z(3), Z(3)^0 ] ] ]) ]
gap> SizesOfNilpotentPrimitiveMatGroups(2,3,1);
[ 8, 16, 8 ]
gap> List(L0,Size);
[ 8, 16, 8 ]

#
gap> L1 := NilpotentPrimitiveMatGroups(2,2,10);;
gap> Length(L1);
40
gap> Size(L1[38]);
209715
gap> s := SizesOfNilpotentPrimitiveMatGroups(2,2,10);
[ 5, 15, 25, 41, 55, 75, 123, 155, 165, 205, 275, 451, 465, 615, 775, 825, 
  1025, 1271, 1353, 1705, 2255, 2325, 3075, 3813, 5115, 6355, 6765, 8525, 
  11275, 13981, 19065, 25575, 31775, 33825, 41943, 69905, 95325, 209715, 
  349525, 1048575 ]

#
gap> L2 := NilpotentPrimitiveMatGroups(55,3,1);;
gap> Length(L2);
114

#
gap> L3 := NilpotentPrimitiveMatGroups(6,3,3);;
gap> Length(L3);
110

#
gap> L4 := NilpotentPrimitiveMatGroups(22,11,1);;
gap> Length(L4);
1002

#
gap> STOP_TEST( "manual.tst", 1 );
