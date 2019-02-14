**The homework**

## Float/Integer
1. `-123` - find out if it's odd or even?

-123.odd?
=> true

-123.even?
=> false

2. `6893` - show what next number will be

6893.next
=> 6894

3. `0` - show the previous number

0.pred
=> -1

4. `12` - cast it to float, then devide by `4.5` round it up

(12/4.5).round(1)
=> 2.7

(12/4.5).round
=> 3

5. `28` - call `modulo` by 6, then multiply result by `4.7` and round it down

(28%6*4.7).to_i
=> 18


## String

1. `"Brand new bicycle\r\n"` - remove trailing special characters

"Brand new bicycle\r\n".chomp
=> "Brand new bicycle"

2. `"Brand new bicycle"` - using indexes extract ` new `

"Brand new bicycle"[6..8]
=> "new"


3. `"Brand new bicycle"` - delete last word

"Brand new bicycle".chomp("bicycle")
=> "Brand new "


4. `"Brand new bicycle"` - check if the sctring's last word is `bicycle`



5. `"Brand new bicycle"` - find out what index the letter "w" has

"Brand new bicycle".index('w')
=> 8

6. `"I thought I knew everything before that night"` - split the string in 3 parts to get the following result: `"I thought I new "`, `"everything"`, `"before that night"`

"I thought I knew everything before that night".partition("everything")
=> ["I thought I knew ", "everything", " before that night"]

7. `"Final result from Float/Integer part is: "` - using interpolation place the sum of all results from first 5 examples to the end of string.

"Final result from Float/Integer part is: " + (6894 + -1 + 3 + 18).to_s
=> "Final result from Float/Integer part is: 6914"


