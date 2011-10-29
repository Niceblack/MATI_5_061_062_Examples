use strict;

$\ = "\n"; # some magic =P

my @arr = (0..9);

sub compare {
    return $a % 2 <=> $b % 2;
}


print join ', ', sort compare @arr;
print join ', ', sort {$a % 2 <=> $b % 2} @arr;

print join ', ', map { $_->[0] }
    sort { $a->[1] cmp $b->[1] }
    map { [$_, $_%2] }
    @arr;
