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


print "What is your age? ";
my $age = <STDIN>;
if ($age >= 18) {
    print "In most countries you can vote.\n";
}


print "What is your age? ";
my $age = <STDIN>;
if ($age >= 18) {
    print "In most countries you can vote.\n";
} else {
    print "You are too young to vote\n";
}


print "What is your age? ";
my $age = <STDIN>;
if ($age >= 18) {
    print "In most countries you can vote.\n";
    if ($age >= 23) {
        print "You can drink alcohol in the USA\n";
    }
} else {
    print "You are too young to vote\n";
    if ($age > 6) {
        print "You must go to school...\n";
    }
}


print "What is your age? ";
my $age = <STDIN>;
if ($age < 6) {
    print "You are before school\n";
} else {
    if ($age < 18) {
        print "You must go to school\n";
    } else {
        if ($age < 23) {
            print "In most countries you can vote.\n";
        } else {
            print "You can drink alcohol in the USA\n";
        }
    }
}


print "What is your age? ";
my $age = <STDIN>;
if ($age < 6) {
    print "You are before school\n";
} elsif ($age < 18) {
    print "You must go to school\n";
} elsif ($age < 23) {
    print "In most countries you can vote.\n";
} else {
    print "You can drink alcohol in the USA\n";
}


# blocos vazios
print "What is your age? ";
my $age = <STDIN>;
if ($age < 0) {
}


# comentarios internos
print "What is your age? ";
my $age = <STDIN>;
if ($age < 0) {
    # TODO
}



# Os três pontos são chamados de operador yada, yada. 
# É o que as pessoas escreveriam quando estão escrevendo bastante texto e querem deixar espaço para mais. 
# Alguns escrevem ‘etc’ ou ‘bla bla bla’.
print "What is your age? ";
my $age = <STDIN>;
if ($age < 0) {
    ...
}
