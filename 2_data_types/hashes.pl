#!/usr/bin/perl
use strict;
use warnings;

########## Hashes
=begin 
Hashes are unordered sets of key/value pairs that you access using the keys as subscripts. 
They are preceded by a percent sign (%). 
=cut

######### Hash Variables
%data = ('John Paul', 45, 'Lisa', 30, 'Kumar', 40);
print "\$data{'John Paul'} = $data{'John Paul'}\n";
print "\$data{'Lisa'} = $data{'Lisa'}\n";
print "\$data{'Kumar'} = $data{'Kumar'}\n";
# This will produce the following result
# $data{'John Paul'} = 45
# $data{'Lisa'} = 30
# $data{'Kumar'} = 40


%data = ('John Paul', 45, 'Lisa', 30, 'Kumar', 40);

print "\$data{'John Paul'} = $data{'John Paul'}\n";
print "\$data{'Lisa'} = $data{'Lisa'}\n";
print "\$data{'Kumar'} = $data{'Kumar'}\n";
# This will produce the following result 
# $data{'John Paul'} = 45
# $data{'Lisa'} = 30
# $data{'Kumar'} = 40


######## Creating Hashes
$data{'John Paul'} = 45;
$data{'Lisa'} = 30;
$data{'Kumar'} = 40;

%data = ('John Paul', 45, 'Lisa', 30, 'Kumar', 40);
# For clarity, you can use => as an alias for , to indicate the key/value pairs as follows 
%data = ('John Paul' => 45, 'Lisa' => 30, 'Kumar' => 40);

# Here is one more variant of the above form, have a look at it, here all the keys have been preceded by hyphen (-) 
# and no quotation is required around them 
%data = (-JohnPaul => 45, -Lisa => 30, -Kumar => 40);


# But it is important to note that there is a single word, i.e., without spaces keys have been used 
# in this form of hash formation and if you build-up your hash this way then keys will be accessed 
# using hyphen only as shown below.
$val = %data{-JohnPaul}
$val = %data{-Lisa}


###### Accessing Hash Elements
%data = ('John Paul' => 45, 'Lisa' => 30, 'Kumar' => 40);

print "$data{'John Paul'}\n";
print "$data{'Lisa'}\n";
print "$data{'Kumar'}\n";
# This will produce the following result 
# 45
# 30
# 40


###### Extracting Slices
%data = (-JohnPaul => 45, -Lisa => 30, -Kumar => 40);
@array = @data{-JohnPaul, -Lisa};
print "Array : @array\n";



####### Extracting Keys and Values
#This function returns an array of all the keys of the named hash. Following is the example −
# keys %HASH
%data = ('John Paul' => 45, 'Lisa' => 30, 'Kumar' => 40);
@names = keys %data;
print "$names[0]\n";
print "$names[1]\n";
print "$names[2]\n";
# This will produce the following result 
# Lisa
# John Paul
# Kumar


#values %HASH
%data = ('John Paul' => 45, 'Lisa' => 30, 'Kumar' => 40);
@ages = values %data;
print "$ages[0]\n";
print "$ages[1]\n";
print "$ages[2]\n";
# This will produce the following result 
# 30
# 45
# 40


####### Checking for Existence
%data = ('John Paul' => 45, 'Lisa' => 30, 'Kumar' => 40);
if( exists($data{'Lisa'} ) ){
   print "Lisa is $data{'Lisa'} years old\n";
}
else{
   print "I don't know age of Lisa\n";
}

#### Getting Hash Size
%data = ('John Paul' => 45, 'Lisa' => 30, 'Kumar' => 40);
@keys = keys %data;
$size = @keys;
print "1 - Hash size:  is $size\n";
@values = values %data;
$size = @values;
print "2 - Hash size:  is $size\n";

##### Add and Remove Elements in Hashes
%data = ('John Paul' => 45, 'Lisa' => 30, 'Kumar' => 40);
@keys = keys %data;
$size = @keys;
print "1 - Hash size:  is $size\n";

# adding an element to the hash;
$data{'Ali'} = 55;
@keys = keys %data;
$size = @keys;
print "2 - Hash size:  is $size\n";

# delete the same element from the hash;
delete $data{'Ali'};
@keys = keys %data;
$size = @keys;
print "3 - Hash size:  is $size\n";