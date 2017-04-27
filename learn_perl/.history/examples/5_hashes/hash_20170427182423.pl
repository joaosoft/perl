#!/usr/bin/perl
use strict;
use warnings;
%data = ('John Paul', 45, 'Lisa', 30, 'Kumar', 40);

print "\$data{'John Paul'} = $data{'John Paul'}\n";
print "\$data{'Lisa'} = $data{'Lisa'}\n";
print "\$data{'Kumar'} = $data{'Kumar'}\n";
# This will produce the following result 
# $data{'John Paul'} = 45
# $data{'Lisa'} = 30
# $data{'Kumar'} = 40


## Creating Hashes
$data{'John Paul'} = 45;
$data{'Lisa'} = 30;
$data{'Kumar'} = 40;

%data = ('John Paul', 45, 'Lisa', 30, 'Kumar', 40);
# For clarity, you can use => as an alias for , to indicate the key/value pairs as follows 
%data = ('John Paul' => 45, 'Lisa' => 30, 'Kumar' => 40);

# Here is one more variant of the above form, have a look at it, here all the keys have been preceded by hyphen (-) 
# and no quotation is required around them 
%data = (-JohnPaul => 45, -Lisa => 30, -Kumar => 40);


