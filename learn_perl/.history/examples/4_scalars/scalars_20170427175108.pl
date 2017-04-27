#!/usr/bin/perl
use strict;
use warnings;

# An array is a variable that stores an ordered list of scalar values. 
# Array variables are preceded by an "at" (@) sign. To refer to a single element of an array, 
# you will use the dollar sign ($) with the variable name followed by the index of the element in square brackets.

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


## Array Creation
@array = (1, 2, 'Hello');
@array = qw/This is an array/;

# The second line uses the qw// operator, which returns a list of strings, 
# separating the delimited string by white space. In this example, this leads 
# to a four-element array; the first element is 'this' and last (fourth) is 'array'. 
# This means that you can use different lines as follows
@days = qw/Monday
Tuesday
...
Sunday/;