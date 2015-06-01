# Glottal Categorizer

**Glottal Categorizer is a bash script (Debian-tested) which reads a file of glottal-stop-containing Nishnaabe words (Pic River dialect), and returns a categorization of all the file's words into the particular glottal stop grapheme regex pattern(s) to which each word belongs. Each returned "glottal stop grapheme regex pattern" contains at least one occurrence of a Nishnaabe word (from within the file of Nishnaabe words) containing the following sequence:**

**Left-hand-side grapheme -> Glottal stop -> Right-hand-side grapheme.**

## Sample Output

```
------'haa------
maadwewebzon'haad
wiin'haad
gaas'haad

------'hi([^i]|$)------
moon'hibiid
gon'higed

------([^a]|^)aha([^a]|$)------
nbagdahang
bookgahang

------([^a]|^)ahaa------
dbahaabaaneyaag
dbahaabaan
gete-yahaa


. . .


------oohw------
gkendmoohwed

------([^n]|^)yhii------
zaagjiyhiing
aabtooyhiing

------([^n]|^)zhho([^o]|$)------
moozhhod

------([^n]|^)zhhw------
zaagjinaazhhwaad


The number of hypothetically possible glottal pattern categories is 1085

The number of observed glottal pattern categories is 51

The observed glottal pattern categories are, as regexen, 'haa, 'hi([^i]|$),
([^a]|^)aha([^a]|$), ([^a]|^)ahaa, ([^a]|^)ahd, ([^a]|^)ahg, ([^a]|^)ahii,
([^a]|^)ahoo, ([^a]|^)ahs([^h|k]|$), ([^a]|^)ahw, aahaa, aahch, aahg,
bhi([^i]|$), bhoo, ([^n]|^)dha([^a]|$), ([^n]|^)dhi([^i]|$), ([^n]|^)dhoo,
eha([^a]|$), ehaa, ehe, ehg, ehm, eho([^o]|$), ehw, ([^n]|^)ghi([^i]|$),
([^n]|^)gho([^o]|$), ([^n]|^)ghw, ([^i]|^)ihaa, ([^i]|^)ihii,
([^i]|^)iho([^o]|$), iiha([^a]|$), iihaa, iihg, iihm, iiho([^o]|$), iihw,
([^n]|^)jhi([^i]|$), ([^s|sh]|^)kha([^a]|$), ([^s|sh]|^)khaa,
([^s|sh]|^)khi([^i]|$), ([^s|sh]|^)khw, mhe, nghi([^i]|$), ([^o]|^)ohg, oohaa,
oohm, oohw, ([^n]|^)yhii, ([^n]|^)zhho([^o]|$), ([^n]|^)zhhw
```



## Current project member:

John Paul Montano
[http://jpmontano.com](http://jpmontano.com)
