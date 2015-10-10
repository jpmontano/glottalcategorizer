#!/bin/bash

# Disregarding carons (ǧ, ȟ and ǩ), these are all of the Nishnaabe
# graphemes:
# - ' a aa b ch d e g h i ii j k m mb
# n nd ng nh nj ns ny nz nzh o oo p
# s sh shk shp sht sk sp t w y z zh
#
#
# Including carons (ǧ, ȟ and ǩ), these are all of the Nishnaabe
# graphemes:
# - ' a aa b ch cȟ d e g ǧ h ȟ i ii j k ǩ m mb
# n nd ng nǧ nh nȟ nj ns ny nz nzh nzȟ o oo p
# s sh sȟ shk shǩ shp sht sk sp sǩ t w y z zh zȟ


# Initialize the name of the file containing the glottal words to categorize.
GLOTTALFILENAME="filewithsomeglottalwords.txt"


# Declare an array of all the (regex) graphemes that could occur on the
# left-hand side of a glottal stop.
#
# LHSARRAY assumes that no word can begin with a glottal stop. To
# allow LHSARRAY to be open to the possibility of the occurrence of a
# glottal stop at the beginning of a line you can edit
# "[^c|n|s|z]h" to read "([^c|n|s|z]|^)h"
# and
# "[^c|n|s|z]ȟ" to read "([^c|n|s|z]|^)ȟ"
#
# LHSARRAY assumes that a hyphen cannot occur immediately before a
# glottal stop. To allow LHSARRAY to be open to the possibility
# of the occurrence of a hyphen immediately before a glottal stop
# you can edit LHSARRAY to include "-"
LHSARRAY=("'" "([^a]|^)a" "aa" "([^m]|^)b" "ch" "cȟ" "([^n]|^)d" "e"
    "([^n]|^)g" "([^n]|^)ǧ" "[^c|n|s|z]h" "[^c|n|s|z]ȟ" "([^i]|^)i"
    "ii" "([^n]|^)j" "([^s|sh]|^)k" "([^s|sh]|^)ǩ" "m" "mb" "nd"
    "ng" "nǧ" "nh" "nȟ" "nj" "ns" "ny" "nzh" "nzȟ" "([^o]|^)o" "oo"
    "([^sh|s]|^)p" "sh" "sȟ" "shk" "shǩ" "shp" "sht" "sk" "sǩ" "sp"
    "([^sh]|^)t" "w" "([^n]|^)y" "([^n]|^)zh" "([^n]|^)zȟ")

# Declare an array of all the (regex) graphemes that could occur on the
# right-hand side of a glottal stop.
RHSARRAY=("-" "'" "a([^a]|$)" "aa" "b" "ch" "cĥ" "d" "e" "g" "ǧ"
    "h" "ȟ" "i([^i]|$)" "ii" "j" "k" "ǩ" "m([^b]|$)" "mb"
    "n([^d|g|ǧ|h|ȟ|j|s|y|z|zh|zȟ]|$)" "nd" "ng" "nǧ" "nh" "nȟ"
    "nj" "ns" "ny" "nz([^h|ȟ]|$)" "nzh" "nzȟ" "o([^o]|$)" "oo"
    "p" "s([^h|ȟ|k|ǩ|p]|$)" "sh([^k|ǩ|t|p]|$)" "sȟ" "shk" "shǩ"
    "shp" "sht" "sk" "sǩ" "sp" "t" "w" "y" "z([^h|ȟ]|$)" "zh" "zȟ")

# Declare an array of all possible forms a glottal stop can take.
# (i.e., a glottal _without_ a caron, and a glottal _with_ a caron)
GLOTTALSARRAY=("h" "ȟ")

# Get the number of elements in each array.
NUMOFLHSELEMENTS=${#LHSARRAY[@]}
NUMOFRHSELEMENTS=${#RHSARRAY[@]}
NUMOFGLOTTALSARRAYELEMENTS=${#GLOTTALSARRAY[@]}

# Initialize the counter of the total number of observed glottal
# pattern categories.
NUMOFCATS=$((0))

# Begin iterating through the GLOTTALFILENAME file querying for every
# possible pattern in which a glottal can occur.
# _Every possible pattern_ means all orthographically possible LHS
# graphemes followed by all forms of the glottal stop followed by all
# orthographically possible RHS graphemes.
for ((i=0; i<$NUMOFLHSELEMENTS; i++)); do
    for ((j=0; j<$NUMOFRHSELEMENTS; j++)); do
        for ((g=0; g<$NUMOFGLOTTALSARRAYELEMENTS; g++)); do

            # This is the glottal pattern category we're looking for.
            GLOTPATCAT=${LHSARRAY[${i}]}${GLOTTALSARRAY[${g}]}${RHSARRAY[${j}]}

            # Array CURRENTOBS is egrepped all of the current
            # iteration's observed occurrences of a particular
            # glottal pattern category.
            CURRENTOBS=( $(cat $GLOTTALFILENAME | egrep $GLOTPATCAT) )

            # If array CURRENTOBS is not empty then we have a
            # newly observed glottal pattern category to display.
            if [ "${CURRENTOBS[*]}" != "" ]
            then
                # We observed another unique glottal pattern category!
                NUMOFCATS=$((NUMOFCATS + 1))

                # Add the newly-observed category to array OBSCATS.
                OBSCATS+=($GLOTPATCAT)

                # Display the name of the observed glottal pattern.
                echo ------$GLOTPATCAT------

                # Display array CURRENTOBS one element per line.
                printf "%s\n" "${CURRENTOBS[@]}"

                # Display a blank line.
                echo

                # Delete array CURRENTOBS to prep for next iteration.
                unset CURRENTOBS
            fi
        done
    done
done

# Display for the user a final summary of the computed results.
echo
echo The number of hypothetically possible glottal pattern categories is $(($NUMOFLHSELEMENTS * $NUMOFRHSELEMENTS * $NUMOFGLOTTALSARRAYELEMENTS))
echo
echo The number of observed glottal pattern categories is $NUMOFCATS
echo
printf "The observed glottal pattern categories are, as regexen,"
printf " %s" "${OBSCATS[@]}"
echo
echo
