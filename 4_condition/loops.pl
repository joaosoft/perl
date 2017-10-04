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

$name = "Ali";
$age = 10;
$status = ($age > 60 )? "A senior citizen" : "Not a senior citizen";
print "$name is  - $status\n";
# This will produce the following result
# Ali is - Not a senior citizen


###### Loop Control Statements
=begin
Loop control statements change the execution from its normal sequence. 
When execution leaves a scope, all automatic objects that were created in that scope are destroyed.

# next statement
Causes the loop to skip the remainder of its body and immediately retest its condition prior to reiterating.

# last statement
Terminates the loop statement and transfers execution to the statement immediately following the loop.

# continue statement
A continue BLOCK, it is always executed just before the conditional is about to be evaluated again.

# redo statement
The redo command restarts the loop block without evaluating the conditional again. The continue block, if any, is not executed.

# goto statement
Perl supports a goto command with three forms: goto label, goto expr, and goto &name.
=cut


###### The Infinite Loop
# A loop becomes infinite loop if a condition never becomes false. 
# The for loop is traditionally used for this purpose. Since none of the three expressions 
# that form the for loop are required, you can make an endless loop by leaving the conditional expression empty.

for( ; ; ) {
   printf "This loop will run forever.\n";
}
# You can terminate the above infinite loop by pressing the Ctrl + C keys.
# When the conditional expression is absent, it is assumed to be true. You may have an initialization and increment expression, but as a programmer more commonly use the for (;;) construct to signify an infinite loop.


for (my $i=0; $i <= 9; $i++) {
   print "$i\n";
}


# foreach
foreach my $i (0..9) {
  print "$i\n";
}


for my $i (0..9) {
  print "$i\n";
}


# Infinite loop
for (;;) {
  # do something
}

while (1) {
  # do something
}