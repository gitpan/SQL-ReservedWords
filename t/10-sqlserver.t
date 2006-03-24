#!perl

use strict;
use warnings;

use Test::More;

plan tests => 14;

use_ok( 'SQL::ReservedWords::SQLServer' );

my @methods = qw[
    is_reserved
    words
];

can_ok( 'SQL::ReservedWords::SQLServer', @methods );

foreach my $method ( @methods ) {
    ok ! __PACKAGE__->can($method), "$method was not exported by default";
}

ok   my @words = SQL::ReservedWords::SQLServer->words,               'Got words';
cmp_ok @words, '==', 174,                                            'Got 174 words';
ok   SQL::ReservedWords::SQLServer->is_reserved('authorization'),    'AUTHORIZATION is reserved';
ok ! SQL::ReservedWords::SQLServer->is_reserved('bogus'),            'BOGUS is not reserved';
ok ! SQL::ReservedWords::SQLServer->is_reserved(undef),              'undef is not reserved';

use_ok 'SQL::ReservedWords::SQLServer', @methods;

foreach my $method ( @methods ) {
    cmp_ok __PACKAGE__->can($method), '==', SQL::ReservedWords::SQLServer->can($method), "$method was exported";
}

ok   @words = words(),                                               'Got words';
ok   is_reserved('authorization'),                                   'AUTHORIZATION is reserved';
