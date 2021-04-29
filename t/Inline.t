# watch -*-perl-*-

use strict;
use Test::More tests => 3;
use Event ();

my $expected = Event->Inline(q{C});
is q{HASH}, ref $expected, q{returns hash reference};
is_deeply $expected, Event->Inline(q{notC});
is_deeply $expected, Event->Inline(undef);
