#!/usr/bin/perl

use strict;
use warnings;

my $i = 0;
my $j = 0;

for ($i = 2; $i <= 200; $i++) {
    my $count = 0;
    for ($j = 2; $j <= sqrt($i); $j++) {
        if ($i % $j == 0) {
            $count++;
            last; # Break the loop if $i is divisible by any number
        }
    }
    if ($count == 0) {
        print "$i\n";
    }
}
