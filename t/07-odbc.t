#!perl

use strict;
use warnings;

use Test::More;

plan tests => 14;

use_ok( 'SQL::ReservedWords::ODBC' );

my @methods = qw[
    is_reserved
    words
];

can_ok( 'SQL::ReservedWords::ODBC', @methods );

foreach my $method ( @methods ) {
    ok ! __PACKAGE__->can($method), "$method was not exported by default";
}

ok   my @words = SQL::ReservedWords::ODBC->words,               'Got words';
cmp_ok @words, '==', 235,                                       'Got 235 words';
ok   SQL::ReservedWords::ODBC->is_reserved('user'),             'USER is reserved';
ok ! SQL::ReservedWords::ODBC->is_reserved('bogus'),            'BOGUS is not reserved';
ok ! SQL::ReservedWords::ODBC->is_reserved(undef),              'undef is not reserved';

use_ok 'SQL::ReservedWords::ODBC', @methods;

foreach my $method ( @methods ) {
    cmp_ok __PACKAGE__->can($method), '==', SQL::ReservedWords::ODBC->can($method), "$method was exported";
}

ok   @words = words(),                                          'Got words';
ok   is_reserved('user'),                                       'USER is reserved';
