use strict;

$\ = "\n";

sub make_adder {
    my $addition = shift;
    sub adder {
        return shift() + $addition;
    }
    return \&adder;
}

my $add = make_adder(10);
print $add->(100);
print $add->(-10);
