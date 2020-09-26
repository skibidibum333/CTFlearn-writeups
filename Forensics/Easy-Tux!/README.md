# Tux!

* **Category:** Forensics
* **Points:** 20
* **Level:** Easy

## [Challenge](https://ctflearn.com/challenge/973)

> The flag is hidden inside the Penguin! Solve this challenge before solving my 100 point Scope challenge which uses similar techniques as this one.

[Tux.jpg](Tux.jpg)

## Solution
I thought this challenge is similiar to other forensic challenges but its a bit different.
After I opened the hexdump of the file I couldn't find any flag I used 'Foremost' tool to see any  
embedded files inside the picture. I found one zip file with password. Then I used 'strings' tool to print any printable characters from original JPG  
now I noticed a BASE64 encoded string at the beginning of the file. I decoded it to ASCII and found the password  
to zip file where the flag was hidden.  
Awesome challenge!  

## Flag
> **CTFlearn{Linux_Is_Awesome}**
