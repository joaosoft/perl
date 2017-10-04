#!/usr/bin/perl
package xpto;

use Function::Parameters;
use Try::Tiny;


sub newXXX
{
    my $class = shift;
    my $self = {};
    bless $self, $class;
    return $self;
}



method do_something($aa, $bb ) {
    print "\n\nmethod a=" . $aa;
    print "\nmethod b=" . $bb . "\n\n";

  try {
    $aa++;
    $bb--;
  }
  catch {
    $err = $_;
  };

    print "\n\nmethod a=" . $aa;
    print "\nmethod b=" . $bb . "\n\n";

  return {} if $err;
};

$aa = 1;
$bb = 2;

do_something($self, $aa, $bb);

#$self->do_something($a, $b); # se fosse numa classe faria assim!
print "\n\na=" . $aa;
print "\nb=" . $bb . "\n\n";






######## BY REFERENCE
method do_something_ref($aa, $bb ) {
    print "\n\nmethod a=" . $$aa;
    print "\nmethod b=" . $$bb . "\n\n";

  try {
    $$aa++;
    $$bb--;
  }
  catch {
    $err = $_;
  };

    print "\n\nmethod a=" . $$aa;
    print "\nmethod b=" . $$bb . "\n\n";

    ## FORCE ERROR! to return a new refence to a hash 
    ##EXAMPLE: my $hashref = { meh => 1};
    $err = 1;

  return {} if $err;
};

$aa = 1;
$bb = 2;

$x = do_something_ref(\$self, \$aa, \$bb);
print "OUTPUT:" . $x;

#$self->do_something($a, $b); # se fosse numa classe faria assim!
print "\n\na=" . $aa;
print "\nb=" . $bb . "\n\n";







######## INSIDE A CLASS
$object = newXXX xpto();
$a1 = 10;
$b1 = 20;
print "::::::::::.TEST WITH CLASS:::::::::";
$object->do_something($a1, $b1);



########### NAMED ARGUMENTS
method do_something_named_arguments(:$x, :$y, :$color) {
    print "\n\nmethod x=" . $x;
    print "\nmethod y=" . $y;
    print "\nmethod color=" . $color . "\n\n";
};

$object = newXXX xpto();
$a1 = 10;
$b1 = 20;
$c1 = 30;
$d1 = 40;
print "::::::::::.NAMED ARGUMENTS:::::::::";
$object->do_something_named_arguments(     
     x     => 40,
     y     => 50,
     color => 0xff_00_00,);
