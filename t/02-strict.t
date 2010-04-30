#!/usr/bin/env perl
use Test::Most 'no_plan';
use File::Spec;

ok( system( $^X, File::Spec->canonpath( 't/assets/t-strict' ) ), 't-strict' );

1;
