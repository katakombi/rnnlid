#!/bin/sh

P=$(dirname $0)
cd $P/rnnlm-0.3e
make
cd ..

time rnnlm-0.3e/rnnlm -rnnlm EP-30h-0.03lr.de.rnn -debug 2 -hidden 30 -alpha 0.03 -train ../data/EP.de-en.de.txt.train -valid ../data/EP.de-en.de.txt.valid -bptt 5 -class 16

#
# required EP-30h-0.03lr.de.rnn.output.txt output
#

#  1                                                                                                                    #  2 iter: 0
#  3 valid log probability: -8571272.114288
#  4 PPL net: 6.214515
#  5
#  6 iter: 1
#  7 valid log probability: -8571459.566479
#  8 PPL net: 6.214763
#  9
# 10 iter: 2
# 11 valid log probability: -8358327.653938
# 12 PPL net: 5.938761

