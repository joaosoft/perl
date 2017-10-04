#!/usr/bin/perl
use strict;
use warnings;
use Data::Dumper;

# This is a comment in perl
print "hi NAME\n";

$a = 10;
$b = 'hi joao';
print "Value of a = $a\n";
print "Value of b = $b\n";

my %simple_hash = ( a => 'aaa', b => 'bbb');
print "Key: $_ and Value: $simple_hash{$_}\n" foreach (keys%simple_hash);



######## 1; 

# 1 at the end of a module means that the module returns true to use/require statements. 
# It can be used to tell if module initialization is successful. Otherwise, use/require will fail.

# $somevar is a variable which is accessable only inside the block. It is used to simulate "static" variables. 
# Starting from Perl 5.10 you can use keyword state keyword to have the same results:

## Starting from Perl 5.10 you can specify "static" variables directly.
sub Somesub {
    #state $somevar;
}

# When you load a module "Foo" with use Foo or require(), perl executes the Foo.pm file like an ordinary script. 
# It expects it to return a true value if the module was loaded correctly. The  1; does that. It could be 2; or "hey there"; just as well.

# The block around the declaration of $somevar and the function Somesub limits the scope of the variable. 
# hich have the state keyword.