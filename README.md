# armassignment2
1.Does any of the above three components play a role in the defining the Precession of the number ? If so which are the component or Components  which play the  role in defining precession  and how ? Explain this with example in your own words
2.What is Normal and Subnormal  Values as per IEEE 754  standards  explain this  with the  help of number line
3.IEEE 754vv defines standards for rounding floating points numbers to a represent able value. There are five methods defines by IEEE for this – Take time and  understand what these five methods and explain it in your words using diagrams, illustrations of your own.


Ans1:The fractional part plays main role in defining the precision.The length of the fractional part detremines the precision.For ex:15675.656 This no. is represented as 1.5675656*10^4 if significand is 8 bits and 1.56756 if significand is 5 bits. former has more precision.

Ans2:A value is siad to be normalized when the number is represented with having a single bit before the decimal. e.g decimal number 100.5 is represented in binary as 1100100.1 When the number is normalised it is represented as 1.1001001 * 10^6.
Subnormal numbers are under the denormal number category. A number which has a magnitude smaller than the smallest normal number is called a subnormal number


Ans3:The five methods for rounding floating point numbers:

Round to nearest, ties to even – rounds to the nearest value :rounded to nearest value that has 0 as least significant bit

Round to nearest, ties away from zero : rounded to nearest value above given number for positive number and below for negative numbers

Round toward 0 : rounding is directed towards zero

Round toward +∞ : rounding is directed towards +ve infinity

Round toward -∞ : rounding is directed towards -ve infinity

ex: +13.3 -13.3  14.4

Round to nearest, ties to even : +14.0 -14.0 +14.0

Round to nearest, ties away from zero : +14.0 -14.0 +15.0

toward 0 : +13.0 -13.0 +14.0

toward +∞ : +14.0 -13.0 +15.0

toward -∞ : +13.0 -14.0 +14.0
 
