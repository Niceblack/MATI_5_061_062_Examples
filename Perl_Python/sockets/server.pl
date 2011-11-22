use strict;

use IO::Socket::INET;

my $s = IO::Socket::INET->new(
	Listen => 1,
	LocalAddr => '127.0.0.1',
	LocalPort => 50007,
	Proto => 'tcp') or die "No socket";

my $conn = $s->accept(); 
 
while (1) {
	my $line;
	#$conn->read($line, 1024);
	$conn->read($line, 1024) until $conn->atmark;
	last if (not $line);
	$conn->send($line);
}
