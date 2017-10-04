#!/usr/bin/perl
use strict;
use warnings;

### Define and Call a Subroutine
sub subroutine_name{
   # body of the subroutine
}

# The typical way of calling that Perl subroutine is as follows 
# subroutine_name( list of arguments );

# Function definition
sub Hello{
   print "Hello, World!\n";
}

# Function call
Hello();



##### Passing Arguments to a Subroutine
# Function definition
sub Average{
   # get total number of arguments passed.
   $n = scalar(@_);
   $sum = 0;

   foreach $item (@_){
      $sum += $item;
   }
   $average = $sum / $n;

   print "Average for the given numbers : $average\n";
}

# Function call
Average(10, 20, 30);
# Average for the given numbers : 20



##### Passing Lists to Subroutines
# Function definition
sub PrintList{
   my @list = @_;
   print "Given list is @list\n";
}
$a = 10;
@b = (1, 2, 3, 4);

# Function call with list parameter
PrintList($a, @b);
# Given list is 10 1 2 3 4



### Passing Hashes to Subroutines
# Function definition
sub PrintHash{
   my (%hash) = @_;

   foreach my $key ( keys %hash ){
      my $value = $hash{$key};
      print "$key : $value\n";
   }
}
%hash = ('name' => 'Tom', 'age' => 19);

# Function call with hash parameter
PrintHash(%hash);
# name : Tom
# age : 19


###### Returning Value from a Subroutine
# Function definition
sub Average{
   # get total number of arguments passed.
   $n = scalar(@_);
   $sum = 0;

   foreach $item (@_){
      $sum += $item;
   }
   $average = $sum / $n;

   return $average;
}

# Function call
$num = Average(10, 20, 30);
print "Average for the given numbers : $num\n";
# Average for the given numbers : 20



##### Private Variables in a Subroutine
sub somefunc {
   my $variable; # $variable is invisible outside somefunc()
   my ($another, @an_array, %a_hash); # declaring many variables at once
}

# Global variable
$string = "Hello, World!";

# Function definition
sub PrintHello{
   # Private variable for PrintHello function
   my $string;
   $string = "Hello, Perl!";
   print "Inside the function $string\n";
}
# Function call
PrintHello();
print "Outside the function $string\n";

# Inside the function Hello, Perl!
# Outside the function Hello, World!


##### Temporary Values via local()

# Global variable
$string = "Hello, World!";

sub PrintHello{
   # Private variable for PrintHello function
   local $string;
   $string = "Hello, Perl!";
   PrintMe();
   print "Inside the function PrintHello $string\n";
}
sub PrintMe{
   print "Inside the function PrintMe $string\n";
}

# Function call
PrintHello();
print "Outside the function $string\n";

# Inside the function PrintMe Hello, Perl!
# Inside the function PrintHello Hello, Perl!
# Outside the function Hello, World!


#### State Variables via state()
# There are another type of lexical variables, which are similar to private variables but they maintain their state and 
# they do not get reinitialized upon multiple calls of the subroutines.
# These variables are defined using the state operator and available starting from Perl 5.9.4.
use feature 'state';

sub PrintCount{
   state $count = 0; # initial value

   print "Value of counter is $count\n";
   $count++;
}

for (1..5){
   PrintCount();
}

# When above program is executed, it produces the following result −
# Value of counter is 0
# Value of counter is 1
# Value of counter is 2
# Value of counter is 3
# Value of counter is 4



{
   my $count = 0; # initial value

   sub PrintCount {
      print "Value of counter is $count\n";
      $count++;
   }
}

for (1..5){
   PrintCount();
}


##### Subroutine Call Context
# The context of a subroutine or statement is defined as the type of return value that is expected. 
# This allows you to use a single function that returns different values based on what the user is expecting to receive. 
# For example, the following localtime() returns a string when it is called in scalar context, 
# but it returns a list when it is called in list context.
my $datestring = localtime( time );

($sec,$min,$hour,$mday,$mon, $year,$wday,$yday,$isdst) = localtime(time);
# Now the individual variables contain the corresponding values returned by localtime() subroutine.

