# Faster than QuickSort
It has been well proven that comparison based sorting algorithms max out at O(nlogn). However there are a few algorithms that can consistently sort certain types of data in O(n) time.

### Counting Sort
The counting sort algorithm is a system designed for sorting numerical in a given range. Due to the nature of this algorithm it always sorts in O(n+k) time, however k is equivalent to the size of the range an can thereby severly increase sort time.

### Enter the Radix Sort
The radix sort is a method of sorting integers that breaks the set of numbers to be sorted into groups of digits. By combining this method and the counting sort you can sort values in O(d*(n+b)) where d is the average number of digits in the set of integers and b is the base of the integers.

This method can allow you to sort hashed data and key value pairs in linear time.

#### The Hard Part

You must implement both a counting sort and a radix sort algorithm in your language of choice and show an example of it in being used in a case where you think sorting speed is important.  

Brownie points from me if you use immutable data structures and/or lazy evaluation to complete this task, but the challenge will be worth **15000 CST** regardless of how you implement it.  

**This challenge does not have multiple parts**


No helpful links this time, but if you choose to work in the challenge I will certainly be more than willing to discuss these sorting algos with you. As always...

***GOOD LUCK***  
***HAPPY CODING***



