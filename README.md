# Glottal Categorizer

**Glottal Categorizer is a bash script (Debian-tested) which reads a file of glottal-stop-containing Nishnaabe words (Pic River dialect), and returns a categorization of all the file's words into the particular glottal stop grapheme regex pattern(s) to which each word belongs. Each returned "glottal stop grapheme regex pattern" contains at least one occurrence of a Nishnaabe word (from within the file of Nishnaabe words) containing the following sequence:**

**Left-hand-side grapheme -> Glottal stop -> Right-hand-side grapheme.**

## Sample Output

```
. . .


------([^n]|^)ghi([^i]|$)------
gziibiighiged
mooǩmaaniighiganing
naazhiighiged
zhzhoobiighigan

------([^n]|^)ghw------
baaghwaad
mdweghwaad

------([^n]|^)ǧhi([^i]|$)------
zhiǧhigan

------([^i]|^)ihaa------
ǧshkwendmihaad
ntaawgihaawsod


. . .


------shkha([^a]|$)------
zhgashkhang

------skha([^a]|$)------
gaaskaaskhang

------([^n]|^)yhii------
nikeyhiing
yekwaayhiing

------([^n]|^)zhhi([^i]|$)------
naajnizhhigaadeg


The number of hypothetically possible glottal pattern categories is 4128

The number of observed glottal pattern categories is 53

The observed glottal pattern categories are, as regexen, 'ha([^a]|$) 'haa
'hi([^i]|$) 'ho([^o]|$) ([^a]|^)aha([^a]|$) ([^a]|^)ahd ([^a]|^)ahg ([^a]|^)
ahm([^b]|$) ([^a]|^)aho([^o]|$) ([^a]|^)ahoo ([^a]|^)aht ([^a]|^)ahw aaha([^a]|$)
aahd aahg aaht ([^m]|^)bha([^a]|$) ([^m]|^)bhi([^i]|$) ([^m]|^)bhw ([^n]|^)
dha([^a]|$) ([^n]|^)dhaa eha([^a]|$) ehb eȟd ehe eho([^o]|$) ehoo ehw ([^n]|^)
gha([^a]|$) ([^n]|^)ghaa ([^n]|^)ghi([^i]|$) ([^n]|^)ghw ([^n]|^)ǧhi([^i]|$)
([^i]|^)ihaa ([^i]|^)ihii ([^i]|^)iho([^o]|$) ([^i]|^)ihw iiha([^a]|$) iihaa iihg
([^n]|^)jhaa ([^n]|^)jhi([^i]|$) ([^s|sh]|^)kha([^a]|$) ([^s|sh]|^)ǩhi([^i]|$)
mhaa mhe ([^o]|^)oha([^a]|$) ([^o]|^)ohw phaa shkha([^a]|$) skha([^a]|$) ([^n]|^)
yhii ([^n]|^)zhhi([^i]|$)
```


## Current project member:

John Paul Montano
[http://jpmontano.com](http://jpmontano.com)
