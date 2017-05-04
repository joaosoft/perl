#!/usr/local/bin/perl

#################
# The ||= operator is logical-OR-assign. It's similar to +=, which is add-assign. It computes the logical OR of the LHS and RHS, 
# and then assigns the result to the LHS, which therefore must be a valid lvalue.

# In other words, just as

$a += 3;
print "\n\n\na=$a";
# is equivalent to

$a = $a+3;
print "\n\na=$a";
# we can say that

$a ||= 1;
print "\n\na=$a";
# is equivalent to

$a = $a||1;
print "\n\na=$a\n\n\n";


# se true $a senão 1
$a = 0;
$a = $a||1;
print "\n\na=$a\n\n\n";