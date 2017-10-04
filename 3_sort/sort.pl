#!/usr/bin/perl
use strict;
use warnings;

## Sorting Arrays
# The sort() function sorts each element of an array according to the ASCII Numeric standards. 
# This function has the following syntax 

# sort [ SUBROUTINE ] LIST

# This function sorts the LIST and returns the sorted array value. 
# If SUBROUTINE is specified then specified logic inside the SUBTROUTINE is applied while sorting the elements.

# define an array
my @foods = qw(pizza steak chicken burgers);
print "Before: @foods\n";

# sort this array
@foods = sort(@foods);
print "After: @foods\n";
# This will produce the following result
# Before: pizza steak chicken burgers
# After: burgers chicken pizza steak

# Please note that sorting is performed based on ASCII Numeric value of the words. 
# So the best option is to first transform every element of the array into lowercase letters and then perform the sort function.



######### EXAMPLE
my $data = {'John' => 45, 'Lisa' => 30, 'Kumar' => 40, 'Ana' => 40, 'Pedro' => 40};
my @expected = sort map {%$data } (1..1);

print "\n\n##############RESULTADO##################";
use Data::Dump 'pp';
print "\n\n" . pp(@expected);
print "\n\n###############mak#######################";