#!/bin/sh

DS="EP.de-en.de.txt"

split -n l/20 $DS

cat xaa xaj xaf > $DS.test
mv xaa $DS.test1
mv xaj $DS.test2
mv xat $DS.test3

mv xae $DS.valid

cat xab xac xad xaf xag xah xai xak xal xam xan xao xap xaq xar xas > $DS.train
rm -f
