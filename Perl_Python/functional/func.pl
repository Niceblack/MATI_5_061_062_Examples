use strict;

$\ = "\n";

my @arr = (0..9);

my @even = grep { not $_ % 2 } @arr;
my @odd = grep /[13579]$/, @arr;

print join ', ', @even;
print join ', ', @odd;

my @squarr = map {$_**2} @arr;
print join ', ', @squarr;

use List::Util qw(reduce sum);
print reduce {$a + $b} @squarr; # should use sum here too

