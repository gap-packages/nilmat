#
gap> START_TEST( "example.tst" );

# Constructing nilpotent matrix groups
gap> g1 := MaximalAbsolutelyIrreducibleNilpotentMatGroup(52,3,3);
<matrix group with 7 generators>
gap> g2 := MaximalAbsolutelyIrreducibleNilpotentMatGroup(180, 11, 2);
<matrix group with 41 generators>
gap> # in GL(210, 2^10) absolutely irreducible nilpotent subgroups do not exist:
gap> MaximalAbsolutelyIrreducibleNilpotentMatGroup(210, 2, 10);
fail

#
gap> g3 := MonomialNilpotentMatGroup(450);
<matrix group with 24 generators>

#
gap> g4 := ReducibleNilpotentMatGroupFF(3, 4*9*5,11,2);
<matrix group with 82 generators>

#
gap> g5 := ReducibleNilpotentMatGroupRN(7, 36);
<matrix group with 72 generators>

# Nilpotency testings and other functions
#
gap> g6 := MaximalAbsolutelyIrreducibleNilpotentMatGroup(127, 2, 7);
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
gap> g8 := ReducibleNilpotentMatGroupRN(6, 35);
<matrix group with 5 generators>
gap> IsNilpotentMatGroup(g8);
true
gap> IsFiniteNilpotentMatGroup(g8);
false

#
gap> g9 := ReducibleNilpotentMatGroupFF(2, 4*9,5,2);
<matrix group with 21 generators>
gap> x := SylowSubgroupsOfNilpotentFFMatGroup(g9);;
gap> ForAll(x, IsMatrixGroup);
true
gap> List(x, g -> Length(GeneratorsOfGroup(g)));
[ 5, 6, 1 ]

# Using library functions
#
gap> NilpotentPrimitiveMatGroups(2,3,1);
[ Group([ [ [ 0*Z(3), Z(3)^0 ], [ Z(3)^0, Z(3)^0 ] ] ]), 
  Group([ [ [ Z(3)^0, 0*Z(3) ], [ 0*Z(3), Z(3)^0 ] ], 
      [ [ Z(3), Z(3)^0 ], [ Z(3), Z(3) ] ], 
      [ [ Z(3)^0, 0*Z(3) ], [ 0*Z(3), Z(3) ] ] ]), 
  Group([ [ [ Z(3)^0, 0*Z(3) ], [ 0*Z(3), Z(3)^0 ] ], 
      [ [ 0*Z(3), Z(3)^0 ], [ Z(3), 0*Z(3) ] ], 
      [ [ Z(3), Z(3) ], [ Z(3), Z(3)^0 ] ] ]) ]
gap> SizesOfNilpotentPrimitiveMatGroups(2,3,1);
[ 8, 16, 8 ]

#
gap> L1 := NilpotentPrimitiveMatGroups(2,2,10);;
gap> Length(L1);
40
gap> s := SizesOfNilpotentPrimitiveMatGroups(2,2,10);;

#
gap> L2 := NilpotentPrimitiveMatGroups(55,3,1);;
gap> Length(L2);
114

#
gap> L3 := NilpotentPrimitiveMatGroups(22,11,1);;
gap> Length(L3);
1002

#
gap> STOP_TEST( "example.tst", 1 );
