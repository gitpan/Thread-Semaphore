use strict;
use warnings;

BEGIN {
    use Config;
    if (! $Config{'useithreads'}) {
        print("1..0 # Skip: Perl not compiled with 'useithreads'\n");
        exit(0);
    }
}

use Test::More 'tests' => 1;

use_ok('Thread::Semaphore');

if (! exists($ENV{'PERL_CORE'})) {
    diag('Testing Thread::Semaphore ' . $Thread::Semaphore::VERSION);
}

# EOF
