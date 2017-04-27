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


$a = 10;
print "Value of a = $a\n";
print 'Value of a = $a\n';
# This will produce the following result
# Value of a = 10
# Value of a = $a\n$


$a = 10;
$var = <<"EOF";
This is the syntax for here document and it will continue
until it encounters a EOF in the first line.
This is case of double quote so variable value will be 
interpolated. For example value of a = $a
EOF
print "$var\n";

$var = <<'EOF';
This is case of single quote so variable value will not be 
interpolated. For example value of a = $a
EOF
print "$var\n";
# This will produce the following result

# This is the syntax for here document and it will continue
# until it encounters a EOF in the first line.
# This is case of double quote so variable value will be
# interpolated. For example value of a = 10

# This is case of single quote so variable value will be
# interpolated. For example value of a = $a


# Escaping Characters
# Perl uses the backslash (\) character to escape any type of character that might 
# interfere with our code. Let's take one example where we want to print double quote and $ sign
$result = "This is \"number\"";
print "$result\n";
print "\$result\n";
# This will produce the following result
# This is "number"
# $result