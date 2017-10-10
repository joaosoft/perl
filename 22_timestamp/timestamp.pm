package timestamp;
use strict;
use warnings FATAL => 'all';
use Date::Format;

my $timestamp = time2str("%Y%m%d%H%M%S", time);

say STDERR "TIMESTAMP:" . $timestamp;

1;