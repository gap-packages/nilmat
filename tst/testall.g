LoadPackage("nilmat");
dirs := DirectoriesPackageLibrary("nilmat", "tst");
TestDirectory(dirs, rec(exitGAP := true));
