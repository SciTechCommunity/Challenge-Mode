# Egyptian Pizza Fractions
### Greetings and Welcome @Challengers!
I have come to you with simple task, but as you all know a simple task from the mouth of a client might end up a tad more complex than necessary. Here he comes now...
___
##### Alright! Let's start simple!  
I have a need to divide some pizzas among some groups of customers. We tend to scale the size of our pizzas to match the number of slices each guest will need, but after recently hiring a data scientist to analyze our sales/cost ratio he informed us of a slightly different approach. **Egyptian Fractions.**

Unfortunately I won't be able to go into much detail being underqualified and all, so I'll hand it over to him.
___
##### I'm sure you can handle the implementation, so I'll just give you the theory.  
Given a rational number n

- n >= 0, with denominator strictly positive -

as two integers.
Decompose this number as a sum of rationals with numerators equal to one and without repetitions.
*(`2/3 = 1/2 + 1/6` is correct but not `2/3 = 1/3 + 1/3`, 1/3 is repeated)*

The algorithm must be "greedy", so at each stage the new rational obtained in the decomposition must have a denominator as small as possible. In this manner the sum of a few fractions in the decomposition gives a rather good approximation of the rational to decompose.

`2/3 = 1/3 + 1/3` doesn't fit because of the repetition but also because the first 1/3 has a denominator bigger than the one in 1/2 in the decomposition `2/3 = 1/2 + 1/6`.

Some Examples:

`decompose(21,23) == [1/2, 1/3, 1/13, 1/359, 1/644046]`
The decomposition of 21/23 as
`21/23 = 1/2 + 1/3 + 1/13 + 1/598 + 1/897`
is exact but don't fulfill our requirement because 598 is bigger than 359.
Same for `21/23 = 1/2 + 1/3 + 1/23 + 1/46 + 1/69` *(23 is bigger than 13)*
or 
`21/23 = 1/2 + 1/3 + 1/15 + 1/110 + 1/253` *(15 is bigger than 13)*.

The rational given to decompose could be greater than one or equal to one, in which case the first "fraction" will be an integer *(with an implicit denominator of 1)*.

If the numerator parses to zero the function "decompose" returns [].
The number could also be a decimal which can be expressed as a rational *(ex: 0.6)*
___
##### Uh...
Wow! I didn't catch any of that, but he says it's the most efficient way to share pizza. I'm not sure if that decomposing thing will help you with what I'm asking, but I will provide you with the `# of pizzas` and the `# of group members` thing and I will need back the **total number of pizza slices for each group member.** So that I can inform our guests! I will call this function.....`PieSlicer9k`! So yes I will call `./PieSlicer9k # of pizzas # of members` from my kiosk terminal and expect to receive the number of slices. My scientist says he will also need those decompose values along with my numbers to be stored in a local `pparlor.dat` file for his research, but he hasn't said anything about a format so just go hog wild!

Oh and I found this [link](http://en.wikipedia.org/wiki/Egyptian_fraction), dunno if it will help.
___
##### Well there you have it!
The bounty on this one is **9000 CST**.
Might be worth a shot.  
***GOOD LUCK***  
***HAPPY CODING!***
