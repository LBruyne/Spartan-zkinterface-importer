zkinterface-Spartan
---------------------

This repository implements a Spartan ZKP backend for uniform zkinterface file.

You can export R1CS file into .zkif format from any R1CS based ZKP system, and import these .zkif interfaces into this Spartan backend, for better prover efficiency.

This repository uses FlatBuffer as the binary interface protocol. And we use a 23.1.21 version for FlatBuffer.

# Usage

```
cargo +nightly run -- prove --nizk constraints.zkif header.zkif witness.zkif
cargo +nightly run -- verify --nizk constraints.zkif header.zkif witness.zkif
```
