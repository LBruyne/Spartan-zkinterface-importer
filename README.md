Spartan-zkinterface-importer
---------------------

This repository implements an importer for uniform zkinterface file under a Spartan SNARK backend.

You can export R1CS file into .zkif format from any R1CS based ZKP system, and import these .zkif interfaces into this Spartan backend, for better prover efficiency.

This repository uses FlatBuffer as the binary interface protocol. And we use a 23.1.21 version for FlatBuffer.

# Usage

Put the .zkif files under the test folder, then run the following command.

``` shell
cargo +nightly run -- --nizk constraints.zkif header.zkif witness.zkif
cargo +nightly run -- --nizk constraints.zkif header.zkif witness.zkif
# e.g. cargo +nightly run -- --nizk ./test/MV/MV.constraints.zkif ./test/MV/MV.header.zkif ./test/MV/MV.witness.zkif
```

The process of importing constraints into the Spartan system may take a little long time. Please wait for it.