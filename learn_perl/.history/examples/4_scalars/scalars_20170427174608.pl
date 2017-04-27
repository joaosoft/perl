#!/usr/bin/perl
use strict;
use warnings;

# A scalar is a single unit of data. That data might be an integer number, 
# floating point, a character, a string, a paragraph, or an entire web page.
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


## Numeric Scalars
$integer = 200;
$negative = -300;
$floating = 200.340;
$bigfloat = -1.2E-23;

# 377 octal, same as 255 decimal
$octal = 0377;

# FF hex, also 255 decimal
$hexa = 0xff;

print "integer = $integer\n";
print "negative = $negative\n";
print "floating = $floating\n";
print "bigfloat = $bigfloat\n";
print "octal = $octal\n";
print "hexa = $hexa\n";

# This will produce the following result 
# integer = 200
# negative = -300
# floating = 200.34
# bigfloat = -1.2e-23
# octal = 255
# hexa = 255


## String Scalars
$var = "This is string scalar!";
$quote = 'I m inside single quote - $var';
$double = "This is inside single quote - $var";
$escape = "This example of escape -\tHello, World!";

print "var = $var\n";
print "quote = $quote\n";
print "double = $double\n";
print "escape = $escape\n";

# This will produce the following result 
# var = This is string scalar!
# quote = I m inside single quote - $var                                                       
# double = This is inside single quote - This is string scalar!                                
# escape = This example of escape -       Hello, World


## Scalar Operations
$str = "hello" . "world";        # Concatenates strings.
$num = 5 + 10;                   # adds two numbers.
$mul = 4 * 5;                      # multiplies two numbers.
$mix = $str . $num;             # concatenates string and number.

print "str = $str\n";
print "num = $num\n";
print "mix = $mix\n";

# This will produce the following result 
# str = helloworld
# num = 15
# mix = helloworld15


## Multiline Strings
$string = 'This is
a multiline
string';

print "$string\n";
# This will produce the following result
# This is
# a multiline
# string


print <<EOF;
This is
a multiline
string
EOF
# This will also produce the same result
# This is
# a multiline
# string