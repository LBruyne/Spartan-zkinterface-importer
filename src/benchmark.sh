#!/bin/sh

# cargo +nightly build

# task_n=(108 100 100 100 80 100 60 40 50 10 5)
# worker_n=(39 38 30 25 25 20 25 25 10 10 2)
task_n=(5 10 50 40 60 100 80)
worker_n=(2 10 10 25 25 20 25)
algs=("MV" "ZC" "CRH")
circuit=".constraints.zkif"
header=".header.zkif"
witness=".witness.zkif"
prefix="../groth16/"

n=${#task_n[@]}

for (( i=0; i<${n}; i++ )) do
    for (( j=0; j<3; j++)) do
        alg=${algs[$j]}
        deno="_"
        tn=${task_n[$i]}
        wn=${worker_n[$i]}

        arg1=$prefix$alg$deno$tn$deno$wn$circuit
        arg2=$prefix$alg$deno$tn$deno$wn$header
        arg3=$prefix$alg$deno$tn$deno$wn$witness

        cargo +nightly run -- --nizk ${arg1} ${arg2} ${arg3}

        echo
        echo
        echo
    done
done