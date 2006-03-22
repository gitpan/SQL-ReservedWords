#!perl

use strict;
use warnings;

use Test::More;

plan tests => 37;

use_ok( 'SQL::ReservedWords' );

my @methods = qw[
    is_reserved
    is_reserved_by_sql92
    is_reserved_by_sql99
    is_reserved_by_sql2003
    words
];

can_ok( 'SQL::ReservedWords', @methods );

foreach my $method ( @methods ) {
    ok ! __PACKAGE__->can($method), "$method was not exported by default";
}

ok   my @words = SQL::ReservedWords->words,                     'Got words';
cmp_ok @words, '==', 337,                                       'Got 337 words';
ok   SQL::ReservedWords->is_reserved('user'),                   'USER is reserved';
ok   SQL::ReservedWords->is_reserved_by_sql92('user'),          'USER is reserved by SQL-92';
ok   SQL::ReservedWords->is_reserved_by_sql99('user'),          'USER is reserved by SQL-99';
ok   SQL::ReservedWords->is_reserved_by_sql2003('user'),        'USER is reserved by SQL-2003';
ok   SQL::ReservedWords->is_reserved('tablesample'),            'TABLESAMPLE is reserved';
ok ! SQL::ReservedWords->is_reserved_by_sql92('tablesample'),   'TABLESAMPLE is not reserved by SQL-92';
ok ! SQL::ReservedWords->is_reserved_by_sql99('tablesample'),   'TABLESAMPLE is not reserved by SQL-99';
ok   SQL::ReservedWords->is_reserved_by_sql2003('tablesample'), 'TABLESAMPLE is reserved by SQL-2003';
ok   SQL::ReservedWords->is_reserved('binary'),                 'BINARY is reserved';
ok ! SQL::ReservedWords->is_reserved_by_sql92('binary'),        'BINARY is not reserved by SQL-92';
ok   SQL::ReservedWords->is_reserved_by_sql99('binary'),        'BINARY is reserved by SQL-99';
ok   SQL::ReservedWords->is_reserved_by_sql2003('binary'),      'BINARY is reserved by SQL-2003';
ok ! SQL::ReservedWords->is_reserved('bogus'),                  'BOGUS is not reserved';
ok ! SQL::ReservedWords->is_reserved_by_sql92('bogus'),         'BOGUS is not reserved by SQL-92';
ok ! SQL::ReservedWords->is_reserved_by_sql99('bougus'),        'BOGUS is not reserved by SQL-99';
ok ! SQL::ReservedWords->is_reserved_by_sql2003('bogus'),       'BOGUS is not reserved by SQL-2003';
ok ! SQL::ReservedWords->is_reserved(undef),                    'undef is not reserved';

use_ok 'SQL::ReservedWords', @methods;

foreach my $method ( @methods ) {
    cmp_ok __PACKAGE__->can($method), '==', SQL::ReservedWords->can($method), "$method was exported";
}

ok   @words = words(),                                          'Got words';
ok   is_reserved('user'),                                       'USER is reserved';
ok   is_reserved_by_sql92('user'),                              'USER is reserved by SQL-92';
ok   is_reserved_by_sql99('user'),                              'USER is reserved by SQL-99';
ok   is_reserved_by_sql2003('user'),                            'USER is reserved by SQL-2003';