package Test::t;
# ABSTRACT: 0 to t in 1 line

=head1 SYNOPSIS

=cut

use strict;
use warnings;

our ( @ISA, @EXPORT );

BEGIN {

    require Test::Most;
    @EXPORT = @Test::Most::EXPORT;
    Test::Most->import;

}

BEGIN {
    @ISA = qw/ Test::Builder::Module /;
}

sub import {
    
    strict->import;
    warnings->import;

    my $no_plan = 1;
    m/^(?:no_plan|defer_plan|tests)$/ and undef $no_plan for @_;
    splice @_, 1, 1, ( 'no_plan' ) if $no_plan;

    goto &Test::Most::import; # Let the good Test::Most do the magic

}

1;
