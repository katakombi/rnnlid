#!/bin/sh

P=$(dirname $0)
cd $P/rnnlm-0.3e
make
cd ..

time rnnlm-0.3e/rnnlm -rnnlm EP-train1-30h-0.03lr.en.rnn -debug 2 -hidden 30 -alpha 0.03 -train ../data/EP.de-en.en.txt.train1 -valid ../data/EP.de-en.en.txt.valid -bptt 5 -class 16

#
# required EP-train1-30h-0.03lr.de.rnn.output.txt output
#
#
#iter: 0
#valid log probability: -8679335.544469
#PPL net: 6.359313
#
#iter: 1
#valid log probability: -8654185.818180
#PPL net: 6.325316
#
#iter: 2
#valid log probability: -8428398.334712
#PPL net: 6.028122
#
#iter: 3
#valid log probability: -8291167.141185
#PPL net: 5.854355
#
#iter: 4
#valid log probability: -8223376.835392
#PPL net: 5.770375
#
#iter: 5
#valid log probability: -8183035.379013
#PPL net: 5.720971
#
#iter: 6
#valid log probability: -8156559.275273
#PPL net: 5.688778
#
#iter: 7
#valid log probability: -8140642.715397
#PPL net: 5.669512
