# 07601

* **Category:** Forensics
* **Points:** 60
* **Level:** Medium

## [Challenge](https://ctflearn.com/challenge/97)

> https://mega.nz/#!CXYXBQAK!6eLJSXvAfGnemqWpNbLQtOHBvtkCzA7-zycVjhHPYQQ I think I lost my flag in there. Hopefully, it won't get attacked...

## Solution
I used strings to original AGT.jpg and find some  
```
Secret Stuff.../UX
Secret Stuff.../.DS_StoreUX
        O^I
Secret Stuff.../Don't Open This.../UX
Secret Stuff.../Don't Open This.../.DS_StoreUX
        O^I
Secret Stuff.../Don't Open This.../I Warned You.jpegUX
 O^I
__MACOSX/UX
 O^I
__MACOSX/Secret Stuff.../UX
 O^I
__MACOSX/Secret Stuff.../Don't Open This.../UX
        O^Ip
__MACOSX/Secret Stuff.../Don't Open This.../._I Warned You.jpegUX
```
signs that there are some embedded files used foremost. And found  
three Zip files. Two of them contained pictures, so I ran strings on them again and found the flag  
in one of them.  

## Flag
> **CTF{Du$t1nS_D0jo}**
