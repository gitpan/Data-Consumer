use strict;
use warnings;
use Cwd;
our %process_state = (
    processed   => 10,
);
our $object='Data::Consumer';
my $file='t/01-mysql.t';

my $res = do $file;

if (!defined $res) {
    die "Error executing '$file': ",$@||$!,"\nCwd=". cwd(),"\n";
    
    
}


