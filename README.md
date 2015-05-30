# Glottal Categorizer

**Glottal Categorizer is a bash script (Debian-tested) which reads a file of glottal-stop-containing Nishnaabe words (Pic River dialect), and returns a categorization of all the file's words into the particular glottal stop grapheme regex pattern(s) to which each word belongs. Each returned "glottal stop grapheme regex pattern" contains at least one occurrence of a Nishnaabe word (from within the file of Nishnaabe words) containing the following sequence:**

**Left-hand-side grapheme -> Glottal stop -> Right-hand-side grapheme.**

## Sample Output

```
------([^a]|^)aha([^a]|$)------
nbagdahang
bookgahang

------([^a]|^)ahaa------
dbahaabaaneyaag
dbahaabaan
gete-yahaa

------([^a]|^)ahd------
ggwejkazhbahdiwaad

------([^a]|^)ahg------
bnahgaadeg
giishkgahgaadeg
aabaabkahganked
aabaabkahgaadeg
dbahganens
giishkgahgaazod


. . .


------zhho([^o]|$)------
moozhhod

------zhhw------
zaagjinaazhhwaad

------'haa------
maadwewebzon'haad
wiin'haad
gaas'haad

------'hi([^i]|$)------
moon'hibiid
gon'higed


The number of theoretically possible glottal pattern categories is 986

The number of observed glottal pattern categories is 51

The observed glottal pattern categories are, as regex patterns, ([^a]|^)aha([^a]|$), ([^a]|^)ahaa, ([^a]|^)ahd, ([^a]|^)ahg, ([^a]|^)ahii, ([^a]|^)ahoo, ([^a]|^)ahs([^h|k]|$), ([^a]|^)ahw, aahaa, aahch, aahg, bhi([^i]|$), bhoo, ([^n]|^)dha([^a]|$), ([^n]|^)dhi([^i]|$), ([^n]|^)dhoo, eha([^a]|$), ehaa, ehe, ehg, ehm, eho([^o]|$), ehw, ([^n]|^)ghi([^i]|$), ([^n]|^)gho([^o]|$), ([^n]|^)ghw, ([^i]|^)ihaa, ([^i]|^)ihii, ([^i]|^)iho([^o]|$), iiha([^a]|$), iihaa, iihg, iihm, iiho([^o]|$), iihw, ([^n]|^)jhi([^i]|$), ([^s]|^)kha([^a]|$), ([^s]|^)khaa, ([^s]|^)khi([^i]|$), ([^s]|^)khw, mhe, nghi([^i]|$), ([^o]|^)ohg, oohaa, oohm, oohw, ([^n]|^)yhii, zhho([^o]|$), zhhw, 'haa, 'hi([^i]|$)
```



## Current project member:

John Paul Montano
[http://jpmontano.com](http://jpmontano.com)
