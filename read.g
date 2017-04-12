#############################################################################
##
#W    read.g                 The Nilmat package                  Bettina Eick
##

#############################################################################
##
#R  Read the installed files.
##
ReadPackage( "nilmat", "gap/nilpotency.gi" ); # test nilpotency (FF/Q)
ReadPackage( "nilmat", "gap/finiteness.gi" ); # IsFinite and Size (FF/Q)
ReadPackage( "nilmat", "gap/sylow.gi" );      # Sylow subgroups (FF)
ReadPackage( "nilmat", "gap/maxgroup.gi" );   # maximal abs irr groups (FF)
ReadPackage( "nilmat", "gap/examples.gi" );   # nilpotent red groups (FF/Q)
ReadPackage( "nilmat", "gap/primitive.gi" );  # library of primitive groups
