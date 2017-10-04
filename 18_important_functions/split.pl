#!/usr/bin/perl

my ($nome1, $nome2, $nome3, $nome4) = split(/\_/, "joao_luis_ramos_ribeiro" );
print "\n\nNOME: " . $nome4 . $nome3 . $nome2 . $nome1. "\n\n";
# OU
my ($nome1, $nome2, $nome3, $nome4) = split("_", "joao_luis_ramos_ribeiro" );
print "\n\nNOME: " . $nome4 . $nome3 . $nome2 . $nome1. "\n\n";