use strict;

use IO::Socket::INET;

my $sock = IO::Socket::INET->new(PeerAddr => '127.0.0.1',
                                 PeerPort => '50007',
                                 Proto    => 'tcp');
my $line;
#$sock->connect();
$sock->send('Hello World');
$sock->flush();
$sock->read($line, 1024) until $sock->atmark;

print $line, " recieved";


