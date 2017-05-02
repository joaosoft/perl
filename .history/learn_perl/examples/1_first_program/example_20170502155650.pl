#!/usr/bin/perl
use strict;
use warnings;

# This is a comment in perl
print "hi NAME\n";

$a = 10;
$b = 'joao';
print "Value of a = $a\n";
print 'Value of a = $a\n';
# This will produce the following result
# Value of a = 10
# Value of a = $a\n$


$a = 10;
my $var = <<"EOF";
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
my $result = "This is \"number\"";
print "$result\n";
print "\$result\n";
# This will produce the following result
# This is "number"
# $result


# Perl Identifiers
# A Perl identifier is a name used to identify a variable, function, class, module, or other object. 
# A Perl variable name starts with either $, @ or % followed by zero or more letters, underscores, and digits (0 to 9).
# Perl does not allow punctuation characters such as @, $, and % within identifiers. 
# Perl is a case sensitive programming language. Thus $Manpower and $manpower are two different identifiers in Perl.


=begin
\\	Backslash
\'	Single quote
\"	Double quote
\a	Alert or bell
\b	Backspace
\f	Form feed
\n	Newline
\r	Carriage return
\t	Horizontal tab
\v	Vertical tab
\0nn	Creates Octal formatted numbers
\xnn	Creates Hexideciamal formatted numbers
\cX	Controls characters, x may be any character
\u	Forces next character to uppercase
\l	Forces next character to lowercase
\U	Forces all following characters to uppercase
\L	Forces all following characters to lowercase
\Q	Backslash all following non-alphanumeric characters
\E	End \U, \L, or \Q
=cut


# This is case of interpolation.
my $str = "Welcome to \ntutorialspoint.com!";
print "$str\n";

# This is case of non-interpolation.
$str = 'Welcome to \ntutorialspoint.com!';
print "$str\n";

# Only W will become upper case.
$str = "\uwelcome to tutorialspoint.com!";
print "$str\n";

# Whole line will become capital.
$str = "\UWelcome to tutorialspoint.com!";
print "$str\n";

# A portion of line will become capital.
$str = "Welcome to \Ututorialspoint\E.com!"; 
print "$str\n";

# Backsalash non alpha-numeric including spaces.
$str = "\QWelcome to tutorialspoint's family";
print "$str\n";

#This will produce the following result −
=begin
Welcome to
tutorialspoint.com!
Welcome to \ntutorialspoint.com!
Welcome to tutorialspoint.com!
WELCOME TO TUTORIALSPOINT.COM!
Welcome to TUTORIALSPOINT.com!
Welcome\ to\ tutorialspoint\'s\ family
=cut