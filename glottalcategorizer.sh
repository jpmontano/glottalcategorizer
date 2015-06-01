#!/bin/bash

# Nishnaabe graphemes:
# ', -, a, aa, b, ch, d, e, g, h, i, ii,
# j, k, m, n, nd, ng, nh, nj, ns, ny, nzh,
# o, p, s, sh, shk, t, w, y, z


# Initialize the name of the file containing the glottal words to categorize.
GLOTTALFILENAME="filewithsomeglottalwords.txt"

# Declare an array of all the (regex) graphemes that could occur on the
# left-hand side of a glottal stop.
#
# LHSARRAY assumes that no word can begin with a glottal stop. To
# allow LHSARRAY to be open to the possibility of the occurrence of a
# glottal stop at the beginning of a line, you can edit
# "[^c|n|s|z]h" to read "([^c|n|s|z]|^)h"
#
# LHSARRAY assumes that a hyphen cannot occur immediately before a
# glottal stop. To allow LHSARRAY to be open to the possibility
# of the occurrence of a hyphen immediately before a glottal stop,
# you can edit LHSARRAY to include "-"

LHSARRAY=("'" "([^a]|^)a" "aa" "b" "ch" "([^n]|^)d" "e"
          "([^n]|^)g" "[^c|n|s|z]h" "([^i]|^)i" "ii" "([^n]|^)j"
          "([^s|sh]|^)k" "m" "nd" "ng" "nh" "nj" "ns" "ny" "nzh"
          "([^o]|^)o" "oo" "p" "sh" "shk" "sk" "t" "w" "([^n]|^)y"
          "([^n]|^)zh")

# Declare an array of all the (regex) graphemes that could occur on the
# right-hand side of a glottal stop.

RHSARRAY=("'" "-" "a([^a]|$)" "aa" "b" "ch" "d" "e" "g" "h"
          "i([^i]|$)" "ii" "j" "k" "m" "n([^d|g|h|j|s|y|zh]|$)"
          "nd" "ng" "nh" "nj" "ns" "ny" "nzh" "o([^o]|$)" "oo"
          "p" "s([^h|k]|$)" "sh([^k]|$)" "shk" "sk" "t" "w" "y"
          "z([^h]|$)" "zh")

# Get the number of elements in each array.
NUMOFLHSELEMENTS=${#LHSARRAY[@]}
NUMOFRHSELEMENTS=${#RHSARRAY[@]}

# Initialize the counter of the total number of observed glottal
# pattern categories.
NUMOFCATS=$((0))

# Begin iterating through the GLOTTALFILENAME file querying for every
# possible pattern in which a glottal can occur.
# _Every possible pattern_ means all orthographically possible LHS
# graphemes followed by a glottal followed by all orthographically
# possible RHS graphemes.
for ((i=0; i<$NUMOFLHSELEMENTS; i++)); do
    for ((j=0; j<$NUMOFRHSELEMENTS; j++)); do

        # This is the glottal pattern category we're looking for.
        GLOTPATCAT=${LHSARRAY[${i}]}h${RHSARRAY[${j}]}

        # Array CURRENTOBS is egrepped all of the current
        # iteration's observed occurrences of a particular
        # glottal pattern category.
        CURRENTOBS=( $(cat $GLOTTALFILENAME | egrep $GLOTPATCAT) )

        # If array CURRENTOBS is not empty, then we have a
        # newly observed glottal pattern category to display.
        if [ "${CURRENTOBS[*]}" != "" ]
        then
            # We observed another unique glottal pattern category!
            NUMOFCATS=$((NUMOFCATS + 1))

            # Add the newly-observed category to array OBSCATS.
            OBSCATS+=($GLOTPATCAT)

            # Display the name of the observed glottal pattern.
            echo ------$GLOTPATCAT------

            # Display array CURRENTOBS, one element per line.
            printf "%s\n" "${CURRENTOBS[@]}"

            # Display a blank line.
            echo

            # Delete array CURRENTOBS to prep for next iteration.
            unset CURRENTOBS
        fi
    done
done

# Display for the user a final summary of the computed results.
echo
echo The number of theoretically possible glottal pattern categories is $(($NUMOFLHSELEMENTS * $NUMOFRHSELEMENTS))
echo
echo The number of observed glottal pattern categories is $NUMOFCATS
echo
printf "The observed glottal pattern categories are, as regexen"
printf ", %s" "${OBSCATS[@]}"
echo
echo
