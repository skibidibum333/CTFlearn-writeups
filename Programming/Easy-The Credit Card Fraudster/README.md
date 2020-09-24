# The Credit Card Fraudster

* **Category:** Programming
* **Points:** 10
* **Level:** Easy

## [Challenge](https://ctflearn.com/challenge/970)

I just arrested someone who is probably the most wanted credit card fraudster in Europe. She is a smart cybercriminal, always a step ahead INTERPOL and she kept unnoticed for years by never buying online, but buying goods with a different card every time and in different stores. My cyber-analysts found out after collecting all evidences she hacked into one the largest payment provider in Europe, reverse-engineered the software present on the server and partly corrupted the card number validation code to accept all her payments. The change enables acceptance of any transaction with a card number multiple of 123457 and the Luhn check digit is valid.

I caught her because every year she bought a bouquet of flowers next to the same cemetery. While handcuffing her at the flower shop's exit, she said the flowers were for her lost father and today it is his death anniversary. She broke down in tears and she did some steps and threw something in the sewers. My female colleague conducted a search on her, but she couldn't find the card she used, only the receipt.

    The little flower shop
    ======================

    European Express Debit
    Card Number: 543210******1234
    SALE

    Please debit my account
    Amount: 25.00€
Can you help me to recover the card number so that I can confirm with the flower merchant's bank the card number was used in that shop and is fraudulent?

_Hints:_

1/ [Luhn_algorithm](https://www.youtube.com/watch?v=PNXXqzU4YnM)

2/ **Flag format is CTFlearn{card_number}**

## Solution
I watched to video to understand how the Luhn's algorithm works. Then I wrote  
a short Python script for bruteforcing all possible combinations until the right one is found.

```def karta_v2():
   for b in range(100000,999999):
        card='543210'+str(b)+'1234'
        new=''
        suma=0
        for i,j in zip(card,range(len(card))):
            if j%2==0:
                m=2*int(i)
                if m>9:
                    new=new+str(m-9)
                else:
                    new=new+str(m)
            elif j%2==1:
                new=new+i
        for i in new:
            suma=suma+int(i)
        if suma % 10 == 0:
            tmp = int(card)
            if int(tmp) % 123457 == 0:
                print(card)

if __name__=="__main__":
    karta_v2()```

## Flag
> **CTFlearn{5432103279251234}**
