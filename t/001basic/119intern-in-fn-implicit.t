#!/usr/bin/perl

use warnings;
use strict;
$ENV{"DALE_TEST_ARGS"} ||= "";
my $test_dir = $ENV{"DALE_TEST_DIR"} || ".";
$ENV{PATH} .= ":.";

use Data::Dumper;
use Test::More tests => 3;

my @res = `dalec $ENV{"DALE_TEST_ARGS"} -lm $test_dir/t/src/intern-in-fn-implicit.dt -o intern-in-fn-implicit`;
is(@res, 0, 'No compilation errors');

@res = `./intern-in-fn-implicit`;
is($?, 0, 'Program executed successfully');

chomp for @res;
is_deeply(\@res, [qw(0 1 2)],
    'Got expected results');

`rm intern-in-fn-implicit`;

1;
