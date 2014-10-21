use strict;
use warnings;
use Cwd;
our @fake_error = (1); # same working
our %process_state = (
    unprocessed => 0,
    working     => 1,
    processed   => 2,
    failed      => 3,
);
our @expect_fail=[51,0,3];
my $file='t/01-mysql.t';

my $res = do $file;

if (!defined $res) {
    die "Error executing '$file': ",$@||$!,"\nCwd=". cwd(),"\n";
    
    
}


