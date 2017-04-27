#!/usr/bin/perl
use strict;
use warnings;

## Array Variables
@ages = (25, 30, 40);             
@names = ("John Paul", "Lisa", "Kumar");

print "\$ages[0] = $ages[0]\n";
print "\$ages[1] = $ages[1]\n";
print "\$ages[2] = $ages[2]\n";
print "\$names[0] = $names[0]\n";
print "\$names[1] = $names[1]\n";
print "\$names[2] = $names[2]\n";
# This will produce the following result
# $ages[0] = 25
# $ages[1] = 30
# $ages[2] = 40
# $names[0] = John Paul
# $names[1] = Lisa
# $names[2] = Kumar


## Hash Variables
%data = ('John Paul', 45, 'Lisa', 30, 'Kumar', 40);
print "\$data{'John Paul'} = $data{'John Paul'}\n";
print "\$data{'Lisa'} = $data{'Lisa'}\n";
print "\$data{'Kumar'} = $data{'Kumar'}\n";
# This will produce the following result
# $data{'John Paul'} = 45
# $data{'Lisa'} = 30
# $data{'Kumar'} = 40


## Variable Context
# Perl treats same variable differently based on Context, i.e., 
# situation where a variable is being used. Let's check the following example
@names = ('John Paul', 'Lisa', 'Kumar');
@copy = @names;
$size = @names;
print "Given names are : @copy\n";
print "Number of names are : $size\n";
# This will produce the following result
# Given names are : John Paul Lisa Kumar
# Number of names are : 3

=begin
#Context
Scalar
Assignment to a scalar variable evaluates the right-hand side in a scalar context.

# List
Assignment to an array or a hash evaluates the right-hand side in a list context.

# Boolean
Boolean context is simply any place where an expression is being evaluated to see whether it's true or false.

# Void
This context not only doesn't care what the return value is, it doesn't even want a return value.

# Interpolative
This context only happens inside quotes, or things that work like quotes.
=cut
