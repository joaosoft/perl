#!/usr/bin/perl
use strict;
use warnings;

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


# A my declares the listed variables to be local (lexically) to the enclosing block, file, or eval. 
# If more than one variable is listed, the list must be placed in parentheses.
# Quick summary: my creates a new variable, local temporarily amends the value of a variable

# In the example below, $::a refers to $a in the 'global' namespace.

$a = 3.14159;
{
  my $a = 3;
  print "In block, \$a = $a\n";
  print "In block, \$::a = $::a\n";
}
print "Outside block, \$a = $a\n";
print "Outside block, \$::a = $::a\n";

# This outputs
# In block, $a = 3
# In block, $::a = 3.14159
# Outside block, $a = 3.14159
# Outside block, $::a = 3.14159