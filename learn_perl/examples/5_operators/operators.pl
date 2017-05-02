#!/usr/local/bin/perl

use integer;
 
$a = 60;
$b = 13;

print "Value of \$a = $a and value of \$b = $b\n";

$c = $a & $b;
print "Value of \$a & \$b = $c\n";

$c = $a | $b;
print "Value of \$a | \$b = $c\n";

$c = $a ^ $b;
print "Value of \$a ^ \$b = $c\n";

$c = ~$a;
print "Value of ~\$a = $c\n";

$c = $a << 2;
print "Value of \$a << 2 = $c\n";

$c = $a >> 2;
print "Value of \$a >> 2 = $c\n";
# When the above code is executed, it produces the following result 
# Value of $a = 60 and value of $b = 13
# Value of $a & $b = 12
# Value of $a | $b = 61
# Value of $a ^ $b = 49
# Value of ~$a = -61
# Value of $a << 2 = 240
# Value of $a >> 2 = 15




####### Perl Logical Operators
# 1.	and
# Called Logical AND operator. If both the operands are true then then condition becomes true.

# Example − ($a and $b) is false.

# 2.	&&
# C-style Logical AND operator copies a bit to the result if it exists in both operands.

# Example − ($a && $b) is false.

# 3.	or
# Called Logical OR Operator. If any of the two operands are non zero then then condition becomes true.

# Example − ($a or $b) is true.

# 4.	||
# C-style Logical OR operator copies a bit if it exists in eather operand.

# Example − ($a || $b) is true.

# 5.	not
# Called Logical NOT Operator. Use to reverses the logical state of its operand. If a condition is true then Logical NOT operator will make false.

# Example − not($a and $b) is true.


#!/usr/local/bin/perl
 
$a = true;
$b = false;

print "Value of \$a = $a and value of \$b = $b\n";

$c = ($a and $b);
print "Value of \$a and \$b = $c\n";

$c = ($a  && $b);
print "Value of \$a && \$b = $c\n";

$c = ($a or $b);
print "Value of \$a or \$b = $c\n";

$c = ($a || $b);
print "Value of \$a || \$b = $c\n";

$a = 0;
$c = not($a);
print "Value of not(\$a)= $c\n";
# When the above code is executed, it produces the following result 
# Value of $a = true and value of $b = false
# Value of $a and $b = false
# Value of $a && $b = false
# Value of $a or $b = true
# Value of $a || $b = true
# Value of not($a)= 1




########## Quote-like Operators
# There are following Quote-like operators supported by Perl language. 
# In the following table, a {} represents any pair of delimiters you choose.


# 1.	q{ }
# Encloses a string with-in single quotes

# Example − q{abcd} gives 'abcd'

# 2.	qq{ }
# Encloses a string with-in double quotes

# Example − qq{abcd} gives "abcd"

# 3.	qx{ }
# Encloses a string with-in invert quotes

# Example − qx{abcd} gives `abcd`

# Miscellaneous Operators
# There are following miscellaneous operators supported by Perl language. Assume variable a holds 10 and variable b holds 20 then −





######### Miscellaneous Operators

# 1.	.
# Binary operator dot (.) concatenates two strings.

# Example − If $a = "abc", $b = "def" then $a.$b will give "abcdef"

# 2.	x
# The repetition operator x returns a string consisting of the left operand repeated the number of times specified by the right operand.

# Example − ('-' x 3) will give ---.

# 3.	..
# The range operator .. returns a list of values counting (up by ones) from the left value to the right value

# Example − (2..5) will give (2, 3, 4, 5)

# 4.	++
# Auto Increment operator increases integer value by one

# Example − $a++ will give 11

# 5.	--
# Auto Decrement operator decreases integer value by one

# Example − $a-- will give 9

# 6.	->
# The arrow operator is mostly used in dereferencing a method or variable from an object or a class name

# Example − $obj->$a is an example to access variable $a from object $obj.


$a = "abc";
$b = "def";

print "Value of \$a  = $a and value of \$b = $b\n";
 
$c = $a . $b;
print "Value of \$a . \$b = $c\n";

$c = "-" x 3;
print "Value of \"-\" x 3 = $c\n";

@c = (2..5);
print "Value of (2..5) = @c\n";

$a = 10;
$b = 15;
print "Value of \$a  = $a and value of \$b = $b\n";

$a++;
$c = $a ;
print "Value of \$a after \$a++ = $c\n";

$b--;
$c = $b ;
print "Value of \$b after \$b-- = $c\n";
# When the above code is executed, it produces the following result 
# Value of $a = abc and value of $b = def
# Value of $a . $b = abcdef
# Value of "-" x 3 = ---
# Value of (2..5) = 2 3 4 5
# Value of $a = 10 and value of $b = 15
# Value of $a after $a++ = 11
# Value of $b after $b-- = 14



######### Perl Operators Precedence
# left	terms and list operators (leftward)
# left	->
# nonassoc	++ --
# right	**
# right	! ~ \ and unary + and -
# left	=~ !~
# left	* / % x
# left	+ - .
# left	<< >>
# nonassoc	named unary operators
# nonassoc	< > <= >= lt gt le ge
# nonassoc	== != <=> eq ne cmp ~~
# left	&
# left	| ^
# left	&&
# left	|| //
# nonassoc	..  ...
# right	?:
# right	= += -= *= etc.
# left	, =>
# nonassoc	list operators (rightward)
# right	not
# left	and
# left	or xor


$a = 20;
$b = 10;
$c = 15;
$d = 5;
$e;

print "Value of \$a  = $a, \$b = $b, \$c = $c and \$d = $d\n";
 
$e = ($a + $b) * $c / $d;
print "Value of (\$a + \$b) * \$c / \$d is  = $e\n";

$e = (($a + $b) * $c )/ $d;
print "Value of ((\$a + \$b) * \$c) / \$d is  = $e\n";

$e = ($a + $b) * ($c / $d);
print "Value of (\$a + \$b) * (\$c / \$d ) is  = $e\n";

$e = $a + ($b * $c ) / $d;
print "Value of \$a + (\$b * \$c )/ \$d is  = $e\n";

# When the above code is executed, it produces the following result
# Value of $a = 20, $b = 10, $c = 15 and $d = 5
# Value of ($a + $b) * $c / $d is = 90
# Value of (($a + $b) * $c) / $d is = 90
# Value of ($a + $b) * ($c / $d ) is = 90
# Value of $a + ($b * $c )/ $d is = 50