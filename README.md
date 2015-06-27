# Glottal Categorizer

**Glottal Categorizer is a bash script (Debian-tested) which reads a file of glottal-stop-containing Nishnaabe words (Pic River dialect), and returns a categorization of all the file's words into the particular glottal stop grapheme regex pattern(s) to which each word belongs. Each returned "glottal stop grapheme regex pattern" contains at least one occurrence of a Nishnaabe word (from within the file of Nishnaabe words) containing the following sequence:**

**Left-hand-side grapheme -> Glottal stop -> Right-hand-side grapheme.**

## Sample Output

```
. . .


------ehd------
biindgehdood
bkehdood
bmadewehdood
giiwehdood
gziingwehdizod
wasewehdood
wewesehdizod
wnishkwehdiwaad
wnjiiwehdiwaad
zaagewehdood

------eȟd------
bakteȟdiwaad
bakteȟdizod
benǧzheȟdizod
bkiteȟdiwaad
bkiteȟdiwin
bkiteȟdizod
desganeȟdaabaan
gziidooneȟdizod
gziiyaabdeȟdizod
n'sikweȟdizod
weweseȟdizod

------ehe------
bgonedehed
bkidehesed
gbichdehesed
maanzhdehed
maazhdehed
mmaajdeheshkaad
mngidehed
mnodehe
mshkawdehed
naangdehed
shkwaadehed
wiisgidehetwaad
zhaagdehed
zhaaǧdehed
zhaaǧdeheshkid
zhaaǧdehewin
zoongdehed
zoongdeheshkwaad
zoongdehewin

------ehg------
aadkwehgan
aadkwehged
aagwaatehgan
aasmiingwehgan
. . .


------iihd------
maajiihdood
mmakiihdiwaad
nishnaabe-maawnjiihdiiwgamig
nokiihdiwaad
nokiihdizod
wwiihdizid

------iiȟd------
bpasninjiiȟdizod
mskodoonebiiȟdizod

------iihg------
aanjbiihgaadeg
aanjbiihged
aasmibiihgaadeg
. . .


------([^n]|^)zhhaa------
giizhhaad
maazhhaad
mmaazhhaad
moozhhaad
wenpazhhaad
wezhhaad
wwezhhaad
wyezhhaad

------([^n]|^)zhhi([^i]|$)------
bbaamnizhhiged
bminaazhhiged
maajnizhhigaadeg
maajnizhhigaazod
mmaazhhiwed
naajnizhhigaadeg
naajnizhhigaazod
naajnizhhigan
naajnizhhiged

------([^n]|^)zhho([^o]|$)------
bbaamnizhhod
bbaamnizhhodwaad
giizhhod
moozhhod
moozhhowed
wezhhod
wwezhhod

------([^n]|^)zhhw------
bbaamnizhhwaad
biindgenaazhhwaad
booznaazhhwaad
gbaanaazhhwaad
maajnaazhhwaad
maajnizhhwaad
naajnizhhwaad
nimnizhhwaad
zaagjinaazhhwaad
zhinaazhhwaad


The number of hypothetically possible glottal pattern categories is 3948

The number of observed glottal pattern categories is 200

The observed glottal pattern categories are, as regexen, 'ha([^a]|$) 'haa
'he 'hi([^i]|$) 'hii 'ho([^o]|$) 'hw ([^a]|^)aha([^a]|$) ([^a]|^)ahaa ([^a]|^)
ahb ([^a]|^)ahch ([^a]|^)ahd ([^a]|^)aȟd ([^a]|^)ahe ([^a]|^)ahg
([^a]|^)ahi([^i]|$) ([^a]|^)ahii ([^a]|^)ahj ([^a]|^)ahk ([^a]|^)ahm
([^a]|^)ahn([^d|g|ǧ|h|ȟ|j|s|y|z|zh|zȟ]|$) ([^a]|^)aho([^o]|$) ([^a]|^)ahoo
([^a]|^)ahp ([^a]|^)aȟp ([^a]|^)ahs([^h|ȟ|k|ǩ]|$) ([^a]|^)ahshk ([^a]|^)aht
([^a]|^)ahw ([^a]|^)ahz([^h|ȟ]|$) aaha([^a]|$) aahaa aahb aahch aahd aaȟd aahg
aaȟg aahi([^i]|$) aahii aahm aahn([^d|g|ǧ|h|ȟ|j|s|y|z|zh|zȟ]|$) aaȟng
aaho([^o]|$) aahoo aahs([^h|ȟ|k|ǩ]|$) aahsh([^k|ǩ]|$) aaht aahw aahzh
bha([^a]|$) bhaa bhi([^i]|$) bhm bho([^o]|$) bhoo bhw ([^n]|^)dha([^a]|$)
([^n]|^)dhaa ([^n]|^)dhe ([^n]|^)dhi([^i]|$) ([^n]|^)dho([^o]|$) ([^n]|^)dhoo
([^n]|^)dhw eha([^a]|$) ehaa ehb ehd eȟd ehe ehg eȟg ehii ehk ehm
eȟn([^d|g|ǧ|h|ȟ|j|s|y|z|zh|zȟ]|$) eho([^o]|$) ehoo eȟs([^h|ȟ|k|ǩ]|$) ehshk
ehw eȟw ([^n]|^)gha([^a]|$) ([^n]|^)ghaa ([^n]|^)ghe ([^n]|^)ghi([^i]|$)
([^n]|^)gho([^o]|$) ([^n]|^)ghoo ([^n]|^)ghw ([^n]|^)ǧha([^a]|$) ([^n]|^)ǧhaa
([^n]|^)ǧhi([^i]|$) ([^n]|^)ǧho([^o]|$) ([^n]|^)ǧhoo ([^n]|^)ǧhw
([^i]|^)iha([^a]|$) ([^i]|^)ihaa ([^i]|^)ihch ([^i]|^)ihd ([^i]|^)ihe
([^i]|^)ihg ([^i]|^)ihii ([^i]|^)iho([^o]|$) ([^i]|^)ihoo ([^i]|^)ihw
iiha([^a]|$) iihaa iihd iiȟd iihg iihm iiȟn([^d|g|ǧ|h|ȟ|j|s|y|z|zh|zȟ]|$)
iiho([^o]|$) iihoo iihw iihy iiȟy ([^n]|^)jha([^a]|$) ([^n]|^)jhaa
([^n]|^)jhi([^i]|$) ([^n]|^)jhii ([^n]|^)jho([^o]|$) ([^n]|^)jhw
([^s|sh]|^)kha([^a]|$) ([^s|sh]|^)khaa ([^s|sh]|^)khi([^i]|$)
([^s|sh]|^)kho([^o]|$) ([^s|sh]|^)khw ([^s|sh]|^)ǩha([^a]|$) ([^s|sh]|^)ǩhaa
([^s|sh]|^)ǩhi([^i]|$) ([^s|sh]|^)ǩho([^o]|$) ([^s|sh]|^)ǩhoo ([^s|sh]|^)ǩhw
mha([^a]|$) mhaa mhe mhi([^i]|$) mhii mho([^o]|$) mhoo mhw ndha([^a]|$)
ndhi([^i]|$) ndho([^o]|$) ndhoo ndhw nghaa ngho([^o]|$) nǧha([^a]|$)
nǧhi([^i]|$) nǧho([^o]|$) nǧhw njhaa njho([^o]|$) nzhhaa ([^o]|^)oha([^a]|$)
([^o]|^)ohaa ([^o]|^)ohb ([^o]|^)ohg ([^o]|^)ohm ([^o]|^)oho([^o]|$)
([^o]|^)ohoo ([^o]|^)ohw ooha([^a]|$) oohaa oohg oohm ooho([^o]|$) oohw phaa
phi([^i]|$) shhaa shhi([^i]|$) shhw shkha([^a]|$) shkhaa shkhi([^i]|$)
shkho([^o]|$) shkhoo shkhw shǩha([^a]|$) shǩhi([^i]|$) shǩhoo shǩhw skha([^a]|$)
skhw tha([^a]|$) wha([^a]|$) whaa whi([^i]|$) who([^o]|$) whoo ([^n]|^)yhaa
([^n]|^)yhii ([^n]|^)zhha([^a]|$) ([^n]|^)zhhaa ([^n]|^)zhhi([^i]|$)
([^n]|^)zhho([^o]|$) ([^n]|^)zhhw
```



## Current project member:

John Paul Montano
[http://jpmontano.com](http://jpmontano.com)
