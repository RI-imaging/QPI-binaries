## BHFIELD

**Description**:
This is a corrected and enhanced version of BHFIELD: A Fortran program for the Mie field calculation of a coated sphere, University of Toyama (2008-2012).

**Author**: Honoh Suzuki (based on Bohren & Huffman *BHCOAT*)

**License**: GPL

**Files**:
- `bin_linux/bhfield-arp.exe`: Linux binary using arbitrary precision
- `bin_linux/bhfield-std.exe`: Linux binary without arbitrary precision
- `bin_win/bhfield-arp.exe`: Windows binary using arbitrary precision, extracted from the distribution package
- `bin_win/bhfield-std.exe`: Windows binary without arbitrary precision, extracted from the distribution package
- `build_linux`: build script for Linux binaries, optionally with old system libraries using docker to support most linux distributions (also used for manylinx1 Python wheels)
- `bhfield-121005.zip`: distribution package downloaded from https://seafile.zfn.uni-bremen.de/seafhttp/files/1359da0e-73b1-40c2-b234-2071d07212aa/bhfield-121005.zip, 2017-07-25 (md5: 02cf77c6063f1df5f9d3eb516c3f566f)

