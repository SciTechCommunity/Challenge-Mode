# Arraygami
In this challenge you will be writing a function `fold(arr,x)` that folds a given array of integers by the middle x-times.

An example says more than a thousand words:
```
Fold 1-times:
fold([1,2,3,4,5], 1) = [6,6,3]

A little visualization (NOT for the algorithm but for the idea of folding):

 Step 1         Step 2        Step 3       Step 4       Step5
                     5/           5|         5\          
                    4/            4|          4\      
1 2 3 4 5      1 2 3/         1 2 3|       1 2 3\       6 6 3
----*----      ----*          ----*        ----*        ----*


Fold 2-times:
fold([1,2,3,4,5], 2) = [9,6]
```
As you see, if the count of numbers is odd, the middle number will stay. Otherwise the fold-point is between the middle-numbers, so all numbers would be added. If an array with one element is folded, it stays as the same array.

### Input:
An array `arr` of numbers `n` such that `1 ≤ length(arr) ≥ 2^31 ` and` -2^30 ≤ n ≥ 2^31` folded x times where `0 ≤ x ≥ 2^31`.

This is a challenge for beginners and therefore worth only **2000 CST**.  
***GOOD LUCK!!!***  
***HAPPY CODING!!!***
