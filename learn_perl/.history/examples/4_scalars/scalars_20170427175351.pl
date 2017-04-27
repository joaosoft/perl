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

# You can also populate an array by assigning each value individually as follows −
$array[0] = 'Monday';
...
$array[6] = 'Sunday';


## Accessing Array Elements
@days = qw/Mon Tue Wed Thu Fri Sat Sun/;

print "$days[0]\n";
print "$days[1]\n";
print "$days[2]\n";
print "$days[6]\n";
print "$days[-1]\n";
print "$days[-7]\n";
# This will produce the following result 
# Mon
# Tue
# Wed
# Sun
# Sun
# Mon

# Array indices start from zero, so to access the first element you need to give 0 as indices. 
# You can also give a negative index, in which case you select the element from the end, 
# rather than the beginning, of the array. 
# This means the following 

print $days[-1]; # outputs Sun
print $days[-7]; # outputs Mon


## Sequential Number Arrays
@var_10 = (1..10);
@var_20 = (10..20);
@var_abc = (a..z);

print "@var_10\n";   # Prints number from 1 to 10
print "@var_20\n";   # Prints number from 10 to 20
print "@var_abc\n";  # Prints number from a to z

# Here double dot (..) is called range operator. This will produce the following result
# 1 2 3 4 5 6 7 8 9 10
# 10 11 12 13 14 15 16 17 18 19 20
# a b c d e f g h i j k l m n o p q r s t u v w x y z