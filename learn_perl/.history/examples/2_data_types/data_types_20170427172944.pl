#!/usr/bin/perl
use strict;
use warnings;


# Scalar
=begin
Scalars are simple variables. They are preceded by a dollar sign ($). 
A scalar is either a number, a string, or a reference. 
A reference is actually an address of a variable, which we will see in the upcoming chapters.
=cut

# Arrays
=begin 
Arrays are ordered lists of scalars that you access with a numeric index, which starts with 0. 
They are preceded by an "at" sign (@).
=cut

# Hashes
=begin 
Hashes are unordered sets of key/value pairs that you access using the keys as subscripts. 
They are preceded by a percent sign (%). 
=cut

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