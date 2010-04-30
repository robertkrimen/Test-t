#!/usr/bin/env perl
use Test::Most 'no_plan';

ok( system( $^X, 't/assets/t-strict' ), 't-strict' );

1;
