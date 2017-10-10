#!/usr/bin/perl
use strict;
use warnings;

use Switch 'Perl6';

$val = 1;

given ($val) {
  when (1) {handle_num_1();}
  when ($str1) {handle_str_1();}
  when ([ 0. . 9 ]) {
    handle_num_any();
    last
  }
  when (/\d/) {handle_dig_any();}
  when (/.*/) {handle_str_any();}
  default {
    say STDERR "handle anything else";
  }
}