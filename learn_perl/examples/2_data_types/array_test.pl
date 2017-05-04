 #!/usr/bin/perl

 my @cases = (
    {
      teste1 => 'teste 1',
      teste2 => {
        key => 'key 1',
        value => 'value 1'
      },
      teste3   => sub { print "\nola 1\n"; },
      teste4 => undef,
    }, 
   {
      teste1 => 'teste 2',
      teste2 => {
        key => 'key 2',
        value => 'value 2'
      },
      teste3   => sub { print "\nola 2\n"; },
      teste4 => undef,
    }, 
);

for my $tc ( @cases ) {
    print "\nteste1: " . $tc->{teste1};
    print "\nteste2: " . $tc->{teste2}{key};
    $tc->{teste3}->();
}


###### CONVERSIONS OF ARRAYS
my $hashref = { meh => 1};
# hash
my %hash = ( meh => 1);
# array
my @arry = (1,2,3);
# arrayref
my $array = [1,2,3];

$promo_types = [25, 30, 40]; 
use Data::Dump 'pp';

foreach my $promo_type (@{ $promo_types || [] }) {
    print "VALOR: " . pp($promo_type). "\n";
}
