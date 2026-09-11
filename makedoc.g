#############################################################################
##
##  makedoc.g
##
##  Builds the package documentation with AutoDoc/GAPDoc.
##
#############################################################################

LoadPackage("AutoDoc");

# Run this from the package's root directory: gap makedoc.g
AutoDoc(rec(
    autodoc := true,
    gapdoc := true,
    extract_examples := true,
    scaffold := rec(
        includes := [
            "introduction.xml",
            "computing.xml",
            "examples.xml",
            "installation.xml"
        ],
        entities := rec(
            Nilmat := "<Package>Nilmat</Package>",
        ),
        bib := "nilmat.bib",
    ),
));

QuitGap();
