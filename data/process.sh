#!/bin/sh

P=$(dirname $0)
$P/../utf2hexasci < $P/Europarl3.de-en.de > $P/EP.de-en.de.txt
$P/../utf2hexasci < $P/Europarl3.de-en.en > $P/EP.de-en.en.txt

