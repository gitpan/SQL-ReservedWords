package SQL::ReservedWords;

use strict;
use warnings;
use vars '$VERSION';

$VERSION = 0.3;

use constant SQL92   => 0x01;
use constant SQL99   => 0x02;
use constant SQL2003 => 0x04;

{
    require Sub::Exporter;

    my @exports = qw[
        is_reserved
        is_reserved_by_sql92
        is_reserved_by_sql99
        is_reserved_by_sql2003
        words
    ];

    Sub::Exporter->import( -setup => { exports => \@exports } );
}

{
    my %WORDS = (
        'ABSOLUTE'                          => SQL92 | SQL99,
        'ACTION'                            => SQL92 | SQL99,
        'ADD'                               => SQL92 | SQL99 | SQL2003,
        'AFTER'                             =>         SQL99,
        'ALL'                               => SQL92 | SQL99 | SQL2003,
        'ALLOCATE'                          => SQL92 | SQL99 | SQL2003,
        'ALTER'                             => SQL92 | SQL99 | SQL2003,
        'AND'                               => SQL92 | SQL99 | SQL2003,
        'ANY'                               => SQL92 | SQL99 | SQL2003,
        'ARE'                               => SQL92 | SQL99 | SQL2003,
        'ARRAY'                             =>         SQL99 | SQL2003,
        'AS'                                => SQL92 | SQL99 | SQL2003,
        'ASC'                               => SQL92 | SQL99,
        'ASENSITIVE'                        =>         SQL99 | SQL2003,
        'ASSERTION'                         => SQL92 | SQL99,
        'ASYMMETRIC'                        =>         SQL99 | SQL2003,
        'AT'                                => SQL92 | SQL99 | SQL2003,
        'ATOMIC'                            =>         SQL99 | SQL2003,
        'AUTHORIZATION'                     => SQL92 | SQL99 | SQL2003,
        'AVG'                               => SQL92,
        'BEFORE'                            =>         SQL99,
        'BEGIN'                             => SQL92 | SQL99 | SQL2003,
        'BETWEEN'                           => SQL92 | SQL99 | SQL2003,
        'BIGINT'                            =>                 SQL2003,
        'BINARY'                            =>         SQL99 | SQL2003,
        'BIT'                               => SQL92 | SQL99,
        'BIT_LENGTH'                        => SQL92,
        'BLOB'                              =>         SQL99 | SQL2003,
        'BOOLEAN'                           =>         SQL99 | SQL2003,
        'BOTH'                              => SQL92 | SQL99 | SQL2003,
        'BREADTH'                           =>         SQL99,
        'BY'                                => SQL92 | SQL99 | SQL2003,
        'CALL'                              => SQL92 | SQL99 | SQL2003,
        'CALLED'                            =>         SQL99 | SQL2003,
        'CASCADE'                           => SQL92 | SQL99,
        'CASCADED'                          => SQL92 | SQL99 | SQL2003,
        'CASE'                              => SQL92 | SQL99 | SQL2003,
        'CAST'                              => SQL92 | SQL99 | SQL2003,
        'CATALOG'                           => SQL92 | SQL99,
        'CHAR'                              => SQL92 | SQL99 | SQL2003,
        'CHARACTER'                         => SQL92 | SQL99 | SQL2003,
        'CHARACTER_LENGTH'                  => SQL92,
        'CHAR_LENGTH'                       => SQL92,
        'CHECK'                             => SQL92 | SQL99 | SQL2003,
        'CLOB'                              =>         SQL99 | SQL2003,
        'CLOSE'                             => SQL92 | SQL99 | SQL2003,
        'COALESCE'                          => SQL92,
        'COLLATE'                           => SQL92 | SQL99 | SQL2003,
        'COLLATION'                         => SQL92 | SQL99,
        'COLUMN'                            => SQL92 | SQL99 | SQL2003,
        'COMMIT'                            => SQL92 | SQL99 | SQL2003,
        'CONDITION'                         => SQL92 | SQL99 | SQL2003,
        'CONNECT'                           => SQL92 | SQL99 | SQL2003,
        'CONNECTION'                        => SQL92 | SQL99,
        'CONSTRAINT'                        => SQL92 | SQL99 | SQL2003,
        'CONSTRAINTS'                       => SQL92 | SQL99,
        'CONSTRUCTOR'                       =>         SQL99,
        'CONTAINS'                          => SQL92,
        'CONTINUE'                          => SQL92 | SQL99 | SQL2003,
        'CONVERT'                           => SQL92,
        'CORRESPONDING'                     => SQL92 | SQL99 | SQL2003,
        'COUNT'                             => SQL92,
        'CREATE'                            => SQL92 | SQL99 | SQL2003,
        'CROSS'                             => SQL92 | SQL99 | SQL2003,
        'CUBE'                              =>         SQL99 | SQL2003,
        'CURRENT'                           => SQL92 | SQL99 | SQL2003,
        'CURRENT_DATE'                      => SQL92 | SQL99 | SQL2003,
        'CURRENT_DEFAULT_TRANSFORM_GROUP'   =>         SQL99 | SQL2003,
        'CURRENT_PATH'                      => SQL92 | SQL99 | SQL2003,
        'CURRENT_ROLE'                      =>         SQL99 | SQL2003,
        'CURRENT_TIME'                      => SQL92 | SQL99 | SQL2003,
        'CURRENT_TIMESTAMP'                 => SQL92 | SQL99 | SQL2003,
        'CURRENT_TRANSFORM_GROUP_FOR_TYPE'  =>         SQL99 | SQL2003,
        'CURRENT_USER'                      => SQL92 | SQL99 | SQL2003,
        'CURSOR'                            => SQL92 | SQL99 | SQL2003,
        'CYCLE'                             =>         SQL99 | SQL2003,
        'DATA'                              =>         SQL99,
        'DATE'                              => SQL92 | SQL99 | SQL2003,
        'DAY'                               => SQL92 | SQL99 | SQL2003,
        'DEALLOCATE'                        => SQL92 | SQL99 | SQL2003,
        'DEC'                               => SQL92 | SQL99 | SQL2003,
        'DECIMAL'                           => SQL92 | SQL99 | SQL2003,
        'DECLARE'                           => SQL92 | SQL99 | SQL2003,
        'DEFAULT'                           => SQL92 | SQL99 | SQL2003,
        'DEFERRABLE'                        => SQL92 | SQL99,
        'DEFERRED'                          => SQL92 | SQL99,
        'DELETE'                            => SQL92 | SQL99 | SQL2003,
        'DEPTH'                             =>         SQL99,
        'DEREF'                             =>         SQL99 | SQL2003,
        'DESC'                              => SQL92 | SQL99,
        'DESCRIBE'                          => SQL92 | SQL99 | SQL2003,
        'DESCRIPTOR'                        => SQL92 | SQL99,
        'DETERMINISTIC'                     => SQL92 | SQL99 | SQL2003,
        'DIAGNOSTICS'                       => SQL92 | SQL99,
        'DISCONNECT'                        => SQL92 | SQL99 | SQL2003,
        'DISTINCT'                          => SQL92 | SQL99 | SQL2003,
        'DO'                                => SQL92 | SQL99 | SQL2003,
        'DOMAIN'                            => SQL92 | SQL99,
        'DOUBLE'                            => SQL92 | SQL99 | SQL2003,
        'DROP'                              => SQL92 | SQL99 | SQL2003,
        'DYNAMIC'                           =>         SQL99 | SQL2003,
        'EACH'                              =>         SQL99 | SQL2003,
        'ELEMENT'                           =>                 SQL2003,
        'ELSE'                              => SQL92 | SQL99 | SQL2003,
        'ELSEIF'                            => SQL92 | SQL99 | SQL2003,
        'END'                               => SQL92 | SQL99 | SQL2003,
        'EQUALS'                            =>         SQL99,
        'ESCAPE'                            => SQL92 | SQL99 | SQL2003,
        'EXCEPT'                            => SQL92 | SQL99 | SQL2003,
        'EXCEPTION'                         => SQL92 | SQL99,
        'EXEC'                              => SQL92 | SQL99 | SQL2003,
        'EXECUTE'                           => SQL92 | SQL99 | SQL2003,
        'EXISTS'                            => SQL92 | SQL99 | SQL2003,
        'EXIT'                              => SQL92 | SQL99 | SQL2003,
        'EXTERNAL'                          => SQL92 | SQL99 | SQL2003,
        'EXTRACT'                           => SQL92,
        'FALSE'                             => SQL92 | SQL99 | SQL2003,
        'FETCH'                             => SQL92 | SQL99 | SQL2003,
        'FILTER'                            =>         SQL99 | SQL2003,
        'FIRST'                             => SQL92 | SQL99,
        'FLOAT'                             => SQL92 | SQL99 | SQL2003,
        'FOR'                               => SQL92 | SQL99 | SQL2003,
        'FOREIGN'                           => SQL92 | SQL99 | SQL2003,
        'FOUND'                             => SQL92 | SQL99,
        'FREE'                              =>         SQL99 | SQL2003,
        'FROM'                              => SQL92 | SQL99 | SQL2003,
        'FULL'                              => SQL92 | SQL99 | SQL2003,
        'FUNCTION'                          => SQL92 | SQL99 | SQL2003,
        'GENERAL'                           =>         SQL99,
        'GET'                               => SQL92 | SQL99 | SQL2003,
        'GLOBAL'                            => SQL92 | SQL99 | SQL2003,
        'GO'                                => SQL92 | SQL99,
        'GOTO'                              => SQL92 | SQL99,
        'GRANT'                             => SQL92 | SQL99 | SQL2003,
        'GROUP'                             => SQL92 | SQL99 | SQL2003,
        'GROUPING'                          =>         SQL99 | SQL2003,
        'HANDLER'                           => SQL92 | SQL99 | SQL2003,
        'HAVING'                            => SQL92 | SQL99 | SQL2003,
        'HOLD'                              =>         SQL99 | SQL2003,
        'HOUR'                              => SQL92 | SQL99 | SQL2003,
        'IDENTITY'                          => SQL92 | SQL99 | SQL2003,
        'IF'                                => SQL92 | SQL99 | SQL2003,
        'IMMEDIATE'                         => SQL92 | SQL99 | SQL2003,
        'IN'                                => SQL92 | SQL99 | SQL2003,
        'INDICATOR'                         => SQL92 | SQL99 | SQL2003,
        'INITIALLY'                         => SQL92 | SQL99,
        'INNER'                             => SQL92 | SQL99 | SQL2003,
        'INOUT'                             => SQL92 | SQL99 | SQL2003,
        'INPUT'                             => SQL92 | SQL99 | SQL2003,
        'INSENSITIVE'                       => SQL92 | SQL99 | SQL2003,
        'INSERT'                            => SQL92 | SQL99 | SQL2003,
        'INT'                               => SQL92 | SQL99 | SQL2003,
        'INTEGER'                           => SQL92 | SQL99 | SQL2003,
        'INTERSECT'                         => SQL92 | SQL99 | SQL2003,
        'INTERVAL'                          => SQL92 | SQL99 | SQL2003,
        'INTO'                              => SQL92 | SQL99 | SQL2003,
        'IS'                                => SQL92 | SQL99 | SQL2003,
        'ISOLATION'                         => SQL92 | SQL99,
        'ITERATE'                           =>         SQL99 | SQL2003,
        'JOIN'                              => SQL92 | SQL99 | SQL2003,
        'KEY'                               => SQL92 | SQL99,
        'LANGUAGE'                          => SQL92 | SQL99 | SQL2003,
        'LARGE'                             =>         SQL99 | SQL2003,
        'LAST'                              => SQL92 | SQL99,
        'LATERAL'                           =>         SQL99 | SQL2003,
        'LEADING'                           => SQL92 | SQL99 | SQL2003,
        'LEAVE'                             => SQL92 | SQL99 | SQL2003,
        'LEFT'                              => SQL92 | SQL99 | SQL2003,
        'LEVEL'                             => SQL92 | SQL99,
        'LIKE'                              => SQL92 | SQL99 | SQL2003,
        'LOCAL'                             => SQL92 | SQL99 | SQL2003,
        'LOCALTIME'                         =>         SQL99 | SQL2003,
        'LOCALTIMESTAMP'                    =>         SQL99 | SQL2003,
        'LOCATOR'                           =>         SQL99,
        'LOOP'                              => SQL92 | SQL99 | SQL2003,
        'LOWER'                             => SQL92,
        'MAP'                               =>         SQL99,
        'MATCH'                             => SQL92 | SQL99 | SQL2003,
        'MAX'                               => SQL92,
        'MEMBER'                            =>                 SQL2003,
        'MERGE'                             =>                 SQL2003,
        'METHOD'                            =>         SQL99 | SQL2003,
        'MIN'                               => SQL92,
        'MINUTE'                            => SQL92 | SQL99 | SQL2003,
        'MODIFIES'                          =>         SQL99 | SQL2003,
        'MODULE'                            => SQL92 | SQL99 | SQL2003,
        'MONTH'                             => SQL92 | SQL99 | SQL2003,
        'MULTISET'                          =>                 SQL2003,
        'NAMES'                             => SQL92 | SQL99,
        'NATIONAL'                          => SQL92 | SQL99 | SQL2003,
        'NATURAL'                           => SQL92 | SQL99 | SQL2003,
        'NCHAR'                             => SQL92 | SQL99 | SQL2003,
        'NCLOB'                             =>         SQL99 | SQL2003,
        'NEW'                               =>         SQL99 | SQL2003,
        'NEXT'                              => SQL92 | SQL99,
        'NO'                                => SQL92 | SQL99 | SQL2003,
        'NONE'                              =>         SQL99 | SQL2003,
        'NOT'                               => SQL92 | SQL99 | SQL2003,
        'NULL'                              => SQL92 | SQL99 | SQL2003,
        'NULLIF'                            => SQL92,
        'NUMERIC'                           => SQL92 | SQL99 | SQL2003,
        'OBJECT'                            =>         SQL99,
        'OCTET_LENGTH'                      => SQL92,
        'OF'                                => SQL92 | SQL99 | SQL2003,
        'OLD'                               =>         SQL99 | SQL2003,
        'ON'                                => SQL92 | SQL99 | SQL2003,
        'ONLY'                              => SQL92 | SQL99 | SQL2003,
        'OPEN'                              => SQL92 | SQL99 | SQL2003,
        'OPTION'                            => SQL92 | SQL99,
        'OR'                                => SQL92 | SQL99 | SQL2003,
        'ORDER'                             => SQL92 | SQL99 | SQL2003,
        'ORDINALITY'                        =>         SQL99,
        'OUT'                               => SQL92 | SQL99 | SQL2003,
        'OUTER'                             => SQL92 | SQL99 | SQL2003,
        'OUTPUT'                            => SQL92 | SQL99 | SQL2003,
        'OVER'                              =>         SQL99 | SQL2003,
        'OVERLAPS'                          => SQL92 | SQL99 | SQL2003,
        'PAD'                               => SQL92 | SQL99,
        'PARAMETER'                         => SQL92 | SQL99 | SQL2003,
        'PARTIAL'                           => SQL92 | SQL99,
        'PARTITION'                         =>         SQL99 | SQL2003,
        'PATH'                              => SQL92 | SQL99,
        'POSITION'                          => SQL92,
        'PRECISION'                         => SQL92 | SQL99 | SQL2003,
        'PREPARE'                           => SQL92 | SQL99 | SQL2003,
        'PRESERVE'                          => SQL92 | SQL99,
        'PRIMARY'                           => SQL92 | SQL99 | SQL2003,
        'PRIOR'                             => SQL92 | SQL99,
        'PRIVILEGES'                        => SQL92 | SQL99,
        'PROCEDURE'                         => SQL92 | SQL99 | SQL2003,
        'PUBLIC'                            => SQL92 | SQL99,
        'RANGE'                             =>         SQL99 | SQL2003,
        'READ'                              => SQL92 | SQL99,
        'READS'                             =>         SQL99 | SQL2003,
        'REAL'                              => SQL92 | SQL99 | SQL2003,
        'RECURSIVE'                         =>         SQL99 | SQL2003,
        'REF'                               =>         SQL99 | SQL2003,
        'REFERENCES'                        => SQL92 | SQL99 | SQL2003,
        'REFERENCING'                       =>         SQL99 | SQL2003,
        'RELATIVE'                          => SQL92 | SQL99,
        'RELEASE'                           =>         SQL99 | SQL2003,
        'REPEAT'                            => SQL92 | SQL99 | SQL2003,
        'RESIGNAL'                          => SQL92 | SQL99 | SQL2003,
        'RESTRICT'                          => SQL92 | SQL99,
        'RESULT'                            =>         SQL99 | SQL2003,
        'RETURN'                            => SQL92 | SQL99 | SQL2003,
        'RETURNS'                           => SQL92 | SQL99 | SQL2003,
        'REVOKE'                            => SQL92 | SQL99 | SQL2003,
        'RIGHT'                             => SQL92 | SQL99 | SQL2003,
        'ROLE'                              =>         SQL99,
        'ROLLBACK'                          => SQL92 | SQL99 | SQL2003,
        'ROLLUP'                            =>         SQL99 | SQL2003,
        'ROUTINE'                           => SQL92 | SQL99,
        'ROW'                               =>         SQL99 | SQL2003,
        'ROWS'                              => SQL92 | SQL99 | SQL2003,
        'SAVEPOINT'                         =>         SQL99 | SQL2003,
        'SCHEMA'                            => SQL92 | SQL99,
        'SCOPE'                             =>         SQL99 | SQL2003,
        'SCROLL'                            => SQL92 | SQL99 | SQL2003,
        'SEARCH'                            =>         SQL99 | SQL2003,
        'SECOND'                            => SQL92 | SQL99 | SQL2003,
        'SECTION'                           => SQL92 | SQL99,
        'SELECT'                            => SQL92 | SQL99 | SQL2003,
        'SENSITIVE'                         =>         SQL99 | SQL2003,
        'SESSION'                           => SQL92 | SQL99,
        'SESSION_USER'                      => SQL92 | SQL99 | SQL2003,
        'SET'                               => SQL92 | SQL99 | SQL2003,
        'SETS'                              =>         SQL99,
        'SIGNAL'                            => SQL92 | SQL99 | SQL2003,
        'SIMILAR'                           =>         SQL99 | SQL2003,
        'SIZE'                              => SQL92 | SQL99,
        'SMALLINT'                          => SQL92 | SQL99 | SQL2003,
        'SOME'                              => SQL92 | SQL99 | SQL2003,
        'SPACE'                             => SQL92 | SQL99,
        'SPECIFIC'                          => SQL92 | SQL99 | SQL2003,
        'SPECIFICTYPE'                      =>         SQL99 | SQL2003,
        'SQL'                               => SQL92 | SQL99 | SQL2003,
        'SQLCODE'                           => SQL92,
        'SQLERROR'                          => SQL92,
        'SQLEXCEPTION'                      => SQL92 | SQL99 | SQL2003,
        'SQLSTATE'                          => SQL92 | SQL99 | SQL2003,
        'SQLWARNING'                        => SQL92 | SQL99 | SQL2003,
        'START'                             =>         SQL99 | SQL2003,
        'STATE'                             =>         SQL99,
        'STATIC'                            =>         SQL99 | SQL2003,
        'SUBMULTISET'                       =>                 SQL2003,
        'SUBSTRING'                         => SQL92,
        'SUM'                               => SQL92,
        'SYMMETRIC'                         =>         SQL99 | SQL2003,
        'SYSTEM'                            =>         SQL99 | SQL2003,
        'SYSTEM_USER'                       => SQL92 | SQL99 | SQL2003,
        'TABLE'                             => SQL92 | SQL99 | SQL2003,
        'TABLESAMPLE'                       =>                 SQL2003,
        'TEMPORARY'                         => SQL92 | SQL99,
        'THEN'                              => SQL92 | SQL99 | SQL2003,
        'TIME'                              => SQL92 | SQL99 | SQL2003,
        'TIMESTAMP'                         => SQL92 | SQL99 | SQL2003,
        'TIMEZONE_HOUR'                     => SQL92 | SQL99 | SQL2003,
        'TIMEZONE_MINUTE'                   => SQL92 | SQL99 | SQL2003,
        'TO'                                => SQL92 | SQL99 | SQL2003,
        'TRAILING'                          => SQL92 | SQL99 | SQL2003,
        'TRANSACTION'                       => SQL92 | SQL99,
        'TRANSLATE'                         => SQL92,
        'TRANSLATION'                       => SQL92 | SQL99 | SQL2003,
        'TREAT'                             =>         SQL99 | SQL2003,
        'TRIGGER'                           =>         SQL99 | SQL2003,
        'TRIM'                              => SQL92,
        'TRUE'                              => SQL92 | SQL99 | SQL2003,
        'UNDER'                             =>         SQL99,
        'UNDO'                              => SQL92 | SQL99 | SQL2003,
        'UNION'                             => SQL92 | SQL99 | SQL2003,
        'UNIQUE'                            => SQL92 | SQL99 | SQL2003,
        'UNKNOWN'                           => SQL92 | SQL99 | SQL2003,
        'UNNEST'                            =>         SQL99 | SQL2003,
        'UNTIL'                             => SQL92 | SQL99 | SQL2003,
        'UPDATE'                            => SQL92 | SQL99 | SQL2003,
        'UPPER'                             => SQL92,
        'USAGE'                             => SQL92 | SQL99,
        'USER'                              => SQL92 | SQL99 | SQL2003,
        'USING'                             => SQL92 | SQL99 | SQL2003,
        'VALUE'                             => SQL92 | SQL99 | SQL2003,
        'VALUES'                            => SQL92 | SQL99 | SQL2003,
        'VARCHAR'                           => SQL92 | SQL99 | SQL2003,
        'VARYING'                           => SQL92 | SQL99 | SQL2003,
        'VIEW'                              => SQL92 | SQL99,
        'WHEN'                              => SQL92 | SQL99 | SQL2003,
        'WHENEVER'                          => SQL92 | SQL99 | SQL2003,
        'WHERE'                             => SQL92 | SQL99 | SQL2003,
        'WHILE'                             => SQL92 | SQL99 | SQL2003,
        'WINDOW'                            =>         SQL99 | SQL2003,
        'WITH'                              => SQL92 | SQL99 | SQL2003,
        'WITHIN'                            =>         SQL99 | SQL2003,
        'WITHOUT'                           =>         SQL99 | SQL2003,
        'WORK'                              => SQL92 | SQL99,
        'WRITE'                             => SQL92 | SQL99,
        'YEAR'                              => SQL92 | SQL99 | SQL2003,
        'ZONE'                              => SQL92 | SQL99
    );

    sub words {
        return sort keys %WORDS;
    }

    sub is_reserved {
        return $WORDS{ uc pop } || 0;
    }

    sub is_reserved_by_sql92 {
        return &is_reserved & SQL92;
    }

    sub is_reserved_by_sql99 {
        return &is_reserved & SQL99;
    }

    sub is_reserved_by_sql2003 {
        return &is_reserved & SQL2003;
    }
}

1;

__END__

=head1 NAME

SQL::ReservedWords - Reserved SQL words by ANSI/ISO

=head1 SYNOPSIS

   if ( SQL::ReservedWords->is_reserved("user") ) {
       die "Don't use reserved words in column names!";
   }

   # or

   use SQL::ReservedWords 'is_reserved';

   if ( is_reserved("group") ) {
       die "Don't use reserved words in column names!";
   }

=head1 DESCRIPTION

Determine if words are reserved by ANSI/ISO SQL standard.

=head1 METHODS

=over 4

=item is_reserved( $word )

Returns a boolean indicating if C<$word> is reserved by either C<SQL-92>,
C<SQL-99> or C<SQL-2003>.

=item is_reserved_by_sql92( $word )

Returns a boolean indicating if C<$word> is reserved by C<SQL-92>.

=item is_reserved_by_sql99( $word )

Returns a boolean indicating if C<$word> is reserved by C<SQL-99>.

=item is_reserved_by_sql2003( $word )

Returns a boolean indicating if C<$word> is reserved by C<SQL-2003>.

=item words

Returns a list with all reserved words.

=back

=head1 EXPORTS

Nothing by default. Following subroutines can be exported:

=over 4

=item is_reserved

=item is_reserved_by_sql92

=item is_reserved_by_sql99

=item is_reserved_by_sql2003

=item words

=back

=head1 AUTHOR

Christian Hansen C<ch@ngmedia.com>

=head1 COPYRIGHT

This program is free software, you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
