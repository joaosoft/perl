#!/usr/bin/perl
use strict;
use warnings;

# This is a comment in perl
print "hi NAME\n";

# Lines starting with = are interpreted as the start of a section 
# of embedded documentation (pod), and all subsequent lines until 
# the next =cut are ignored by the compiler. Following is the example

=begin comment
This is all part of multiline comment.
You can use as many lines as you like
These comments will be ignored by the 
compiler until the next =cut is encountered.
=cut




# Check you have Perl installed by typing the command below into your command line program:
# $perl -v

# Then run the script from the command line by typing:
# $perl /path/to/perl_tests/hello_world.pl

# You can use Perl interpreter with -e option at command line, 
# which lets you execute Perl statements from the command line.
# Let's try something at $ prompt as follows
# $perl -e 'print "Hello World\n"'


# A Perl program does not care about whitespaces. Following program works perfectly fine
print       "Hello, world\n";


# This would print with a line break in the middle
print "Hello
          world\n";

# You can use double quotes or single quotes around literal strings as follows
print "Hello, world\n";
print 'Hello, world\n';
# This will produce the following result
# Hello, world
# Hello, world\n$

