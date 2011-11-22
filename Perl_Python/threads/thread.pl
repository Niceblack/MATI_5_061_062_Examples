use threads;

my $thr = threads->create(\&sub1);

my $z = 10;

sub sub1 {
    print("In the thread\n");
    $z++;
    1;
}

my @ReturnData = $thr->join();

print @ReturnData, ", $z\n";
