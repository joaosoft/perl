#!/usr/bin/perl

# Constants can be exported just like other package symbols. Using the standard Exporter module, 
# you can export constants from a package like this:

package Foo;
use strict;
use warnings;

use base 'Exporter';

use constant CONST => 42;

our @EXPORT_OK = ('CONST');

1;
# Then, in a client script (or other module)

use Foo 'CONST';
print CONST;
# You can use the %EXPORT_TAGS hash (see the Exporter documentation) to define groups of constants that 
# can be exported with a single import argument.

# Update: Here''s an example of how to use the %EXPORT_TAGS feature if you have multiple constants.
use constant LARRY => 42;
use constant CURLY => 43;
use constant MOE   => 44;

our @EXPORT_OK = ('LARRY', 'CURLY', 'MOE');
our %EXPORT_TAGS = ( stooges => [ 'LARRY', 'CURLY', 'MOE' ] );
Then you can say

use Foo ':stooges';
print "$_\n" for LARRY, CURLY, MOE;






########################
# Constants are just subs with empty prototype, so they can be exported like any other sub.

# file Foo.pm
package Foo;
use constant BAR => 123;
use Exporter qw(import);
our @EXPORT_OK = qw(BAR);


# file main.pl:
use Foo qw(BAR);
print BAR;


# To expand on the earlier answers, since constants are really just subs, you can also call them directly:

use Foo;
print Foo::BAR;