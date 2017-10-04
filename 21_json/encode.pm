#!/usr/bin/perl
use strict;
use warnings;
use JSON;

my $expected_productoffers =  {
  product_id  => '123',
  version     => 4,
  offers      => [],
  references  => [
    "reference_type" => "EAN",
    "reference_value" => "111111111"
  ]
};


print STDERR "ENCODING\n" . encode_json($expected_productoffers);



1;