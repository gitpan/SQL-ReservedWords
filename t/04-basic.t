#!perl

use strict;
use warnings;

use Test::More;

plan tests => 32;

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
ok   SQL::ReservedWords->is_reserved('USER'),                   'USER is reserved';
ok   SQL::ReservedWords->is_reserved_by_sql92('USER'),          'USER is reserved by SQL-92';
ok   SQL::ReservedWords->is_reserved_by_sql99('USER'),          'USER is reserved by SQL-99';
ok   SQL::ReservedWords->is_reserved_by_sql2003('USER'),        'USER is reserved by SQL-2003';
ok   SQL::ReservedWords->is_reserved('TABLESAMPLE'),            'TABLESAMPLE is reserved';
ok ! SQL::ReservedWords->is_reserved_by_sql92('TABLESAMPLE'),   'TABLESAMPLE is not reserved by SQL-92';
ok ! SQL::ReservedWords->is_reserved_by_sql99('TABLESAMPLE'),   'TABLESAMPLE is not reserved by SQL-99';
ok   SQL::ReservedWords->is_reserved_by_sql2003('TABLESAMPLE'), 'TABLESAMPLE is reserved by SQL-2003';
ok   SQL::ReservedWords->is_reserved('BINARY'),                 'BINARY is reserved';
ok ! SQL::ReservedWords->is_reserved_by_sql92('BINARY'),        'BINARY is not reserved by SQL-92';
ok   SQL::ReservedWords->is_reserved_by_sql99('BINARY'),        'BINARY is reserved by SQL-99';
ok   SQL::ReservedWords->is_reserved_by_sql2003('BINARY'),      'BINARY is reserved by SQL-2003';

use_ok 'SQL::ReservedWords', qw[ is_reserved is_reserved_by_sql92 is_reserved_by_sql99 is_reserved_by_sql2003 words ];

foreach my $method ( @methods ) {
    cmp_ok __PACKAGE__->can($method), '==', SQL::ReservedWords->can($method), "$method was exported";
}

ok   @words = words(),                                          'Got words';
ok   is_reserved('USER'),                                       'USER is reserved';
ok   is_reserved_by_sql92('USER'),                              'USER is reserved by SQL-92';
ok   is_reserved_by_sql99('USER'),                              'USER is reserved by SQL-99';
ok   is_reserved_by_sql2003('USER'),                            'USER is reserved by SQL-2003';
