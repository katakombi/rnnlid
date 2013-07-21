#!/bin/sh

P=$(dirname $0)
cd $P/rnnlm-0.3e
make
cd ..

time rnnlm-0.3e/rnnlm -rnnlm EP-30h-0.03lr.de.rnn -debug 2 -hidden 30 -alpha 0.03 -train ../data/EP.de-en.de.txt.train -valid ../data/EP.de-en.de.txt.valid -bptt 5 -class 16
