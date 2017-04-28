#!/usr/bin/perl
use strict;
use warnings;

# The number 0, the strings '0' and "" , the empty list () , and undef are all false in a boolean context and all 
# other values are true. Negation of a true value by ! or not returns a special false value.

=begin
# if statement
An if statement consists of a boolean expression followed by one or more statements.

# if...else statement
An if statement can be followed by an optional else statement.

# if...elsif...else statement
An if statement can be followed by an optional elsif statement and then by an optional else statement.

# unless statement
An unless statement consists of a boolean expression followed by one or more statements.

# unless...else statement
An unless statement can be followed by an optional else statement.

# unless...elsif..else statement
An unless statement can be followed by an optional elsif statement and then by an optional else statement.

#switch statement
With the latest versions of Perl, you can make use of the switch statement. which allows a simple way of 
comparing a variable value against various conditions.
=cut



###### The ? : Operator
# Let's check the conditional operator ? :which can be used to replace if...else statements. 
# It has the following general form

# Exp1 ? Exp2 : Exp3;