#!/usr/bin/perl
use strict;
use warnings;

# Variables are the reserved memory locations to store values. 
# This means that when you create a variable you reserve some space in memory.

# We have learnt that Perl has the following three basic data types −
# - Scalars ($)
# - Arrays (@)
# - Hashes (%)

## Scalar Variables
$age = 25;             # An integer assignment
$name = "John Paul";   # A string 
$salary = 1445.50;     # A floating point

print "Age = $age\n";
print "Name = $name\n";
print "Salary = $salary\n";
# This will produce the following result
# Age = 25
# Name = John Paul
# Salary = 1445.5


## Array Variables
@ages = (25, 30, 40);             
@names = ("John Paul", "Lisa", "Kumar");

print "\$ages[0] = $ages[0]\n";
print "\$ages[1] = $ages[1]\n";
print "\$ages[2] = $ages[2]\n";
print "\$names[0] = $names[0]\n";
print "\$names[1] = $names[1]\n";
print "\$names[2] = $names[2]\n";
# Result
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
