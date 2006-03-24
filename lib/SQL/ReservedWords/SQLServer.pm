package SQL::ReservedWords::SQLServer;

use strict;
use warnings;
use vars '$VERSION';

$VERSION = 0.5;

use constant SQLSERVER2000 => 0x01;

{
    require Sub::Exporter;

    my @exports = qw[
        is_reserved
        words
    ];

    Sub::Exporter->import( -setup => { exports => \@exports } );
}

{
    my %WORDS = (
        ADD                  => SQLSERVER2000,
        ALL                  => SQLSERVER2000,
        ALTER                => SQLSERVER2000,
        AND                  => SQLSERVER2000,
        ANY                  => SQLSERVER2000,
        AS                   => SQLSERVER2000,
        ASC                  => SQLSERVER2000,
        AUTHORIZATION        => SQLSERVER2000,
        BACKUP               => SQLSERVER2000,
        BEGIN                => SQLSERVER2000,
        BETWEEN              => SQLSERVER2000,
        BREAK                => SQLSERVER2000,
        BROWSE               => SQLSERVER2000,
        BULK                 => SQLSERVER2000,
        BY                   => SQLSERVER2000,
        CASCADE              => SQLSERVER2000,
        CASE                 => SQLSERVER2000,
        CHECK                => SQLSERVER2000,
        CHECKPOINT           => SQLSERVER2000,
        CLOSE                => SQLSERVER2000,
        CLUSTERED            => SQLSERVER2000,
        COALESCE             => SQLSERVER2000,
        COLLATE              => SQLSERVER2000,
        COLUMN               => SQLSERVER2000,
        COMMIT               => SQLSERVER2000,
        COMPUTE              => SQLSERVER2000,
        CONSTRAINT           => SQLSERVER2000,
        CONTAINS             => SQLSERVER2000,
        CONTAINSTABLE        => SQLSERVER2000,
        CONTINUE             => SQLSERVER2000,
        CONVERT              => SQLSERVER2000,
        CREATE               => SQLSERVER2000,
        CROSS                => SQLSERVER2000,
        CURRENT              => SQLSERVER2000,
        CURRENT_DATE         => SQLSERVER2000,
        CURRENT_TIME         => SQLSERVER2000,
        CURRENT_TIMESTAMP    => SQLSERVER2000,
        CURRENT_USER         => SQLSERVER2000,
        CURSOR               => SQLSERVER2000,
        DATABASE             => SQLSERVER2000,
        DBCC                 => SQLSERVER2000,
        DEALLOCATE           => SQLSERVER2000,
        DECLARE              => SQLSERVER2000,
        DEFAULT              => SQLSERVER2000,
        DELETE               => SQLSERVER2000,
        DENY                 => SQLSERVER2000,
        DESC                 => SQLSERVER2000,
        DISK                 => SQLSERVER2000,
        DISTINCT             => SQLSERVER2000,
        DISTRIBUTED          => SQLSERVER2000,
        DOUBLE               => SQLSERVER2000,
        DROP                 => SQLSERVER2000,
        DUMMY                => SQLSERVER2000,
        DUMP                 => SQLSERVER2000,
        ELSE                 => SQLSERVER2000,
        END                  => SQLSERVER2000,
        ERRLVL               => SQLSERVER2000,
        ESCAPE               => SQLSERVER2000,
        EXCEPT               => SQLSERVER2000,
        EXEC                 => SQLSERVER2000,
        EXECUTE              => SQLSERVER2000,
        EXISTS               => SQLSERVER2000,
        EXIT                 => SQLSERVER2000,
        FETCH                => SQLSERVER2000,
        FILE                 => SQLSERVER2000,
        FILLFACTOR           => SQLSERVER2000,
        FOR                  => SQLSERVER2000,
        FOREIGN              => SQLSERVER2000,
        FREETEXT             => SQLSERVER2000,
        FREETEXTTABLE        => SQLSERVER2000,
        FROM                 => SQLSERVER2000,
        FULL                 => SQLSERVER2000,
        FUNCTION             => SQLSERVER2000,
        GOTO                 => SQLSERVER2000,
        GRANT                => SQLSERVER2000,
        GROUP                => SQLSERVER2000,
        HAVING               => SQLSERVER2000,
        HOLDLOCK             => SQLSERVER2000,
        IDENTITY             => SQLSERVER2000,
        IDENTITYCOL          => SQLSERVER2000,
        IDENTITY_INSERT      => SQLSERVER2000,
        IF                   => SQLSERVER2000,
        IN                   => SQLSERVER2000,
        INDEX                => SQLSERVER2000,
        INNER                => SQLSERVER2000,
        INSERT               => SQLSERVER2000,
        INTERSECT            => SQLSERVER2000,
        INTO                 => SQLSERVER2000,
        IS                   => SQLSERVER2000,
        JOIN                 => SQLSERVER2000,
        KEY                  => SQLSERVER2000,
        KILL                 => SQLSERVER2000,
        LEFT                 => SQLSERVER2000,
        LIKE                 => SQLSERVER2000,
        LINENO               => SQLSERVER2000,
        LOAD                 => SQLSERVER2000,
        NATIONAL             => SQLSERVER2000,
        NOCHECK              => SQLSERVER2000,
        NONCLUSTERED         => SQLSERVER2000,
        NOT                  => SQLSERVER2000,
        NULL                 => SQLSERVER2000,
        NULLIF               => SQLSERVER2000,
        OF                   => SQLSERVER2000,
        OFF                  => SQLSERVER2000,
        OFFSETS              => SQLSERVER2000,
        ON                   => SQLSERVER2000,
        OPEN                 => SQLSERVER2000,
        OPENDATASOURCE       => SQLSERVER2000,
        OPENQUERY            => SQLSERVER2000,
        OPENROWSET           => SQLSERVER2000,
        OPENXML              => SQLSERVER2000,
        OPTION               => SQLSERVER2000,
        OR                   => SQLSERVER2000,
        ORDER                => SQLSERVER2000,
        OUTER                => SQLSERVER2000,
        OVER                 => SQLSERVER2000,
        PERCENT              => SQLSERVER2000,
        PLAN                 => SQLSERVER2000,
        PRECISION            => SQLSERVER2000,
        PRIMARY              => SQLSERVER2000,
        PRINT                => SQLSERVER2000,
        PROC                 => SQLSERVER2000,
        PROCEDURE            => SQLSERVER2000,
        PUBLIC               => SQLSERVER2000,
        RAISERROR            => SQLSERVER2000,
        READ                 => SQLSERVER2000,
        READTEXT             => SQLSERVER2000,
        RECONFIGURE          => SQLSERVER2000,
        REFERENCES           => SQLSERVER2000,
        REPLICATION          => SQLSERVER2000,
        RESTORE              => SQLSERVER2000,
        RESTRICT             => SQLSERVER2000,
        RETURN               => SQLSERVER2000,
        REVOKE               => SQLSERVER2000,
        RIGHT                => SQLSERVER2000,
        ROLLBACK             => SQLSERVER2000,
        ROWCOUNT             => SQLSERVER2000,
        ROWGUIDCOL           => SQLSERVER2000,
        RULE                 => SQLSERVER2000,
        SAVE                 => SQLSERVER2000,
        SCHEMA               => SQLSERVER2000,
        SELECT               => SQLSERVER2000,
        SESSION_USER         => SQLSERVER2000,
        SET                  => SQLSERVER2000,
        SETUSER              => SQLSERVER2000,
        SHUTDOWN             => SQLSERVER2000,
        SOME                 => SQLSERVER2000,
        STATISTICS           => SQLSERVER2000,
        SYSTEM_USER          => SQLSERVER2000,
        TABLE                => SQLSERVER2000,
        TEXTSIZE             => SQLSERVER2000,
        THEN                 => SQLSERVER2000,
        TO                   => SQLSERVER2000,
        TOP                  => SQLSERVER2000,
        TRAN                 => SQLSERVER2000,
        TRANSACTION          => SQLSERVER2000,
        TRIGGER              => SQLSERVER2000,
        TRUNCATE             => SQLSERVER2000,
        TSEQUAL              => SQLSERVER2000,
        UNION                => SQLSERVER2000,
        UNIQUE               => SQLSERVER2000,
        UPDATE               => SQLSERVER2000,
        UPDATETEXT           => SQLSERVER2000,
        USE                  => SQLSERVER2000,
        USER                 => SQLSERVER2000,
        VALUES               => SQLSERVER2000,
        VARYING              => SQLSERVER2000,
        VIEW                 => SQLSERVER2000,
        WAITFOR              => SQLSERVER2000,
        WHEN                 => SQLSERVER2000,
        WHERE                => SQLSERVER2000,
        WHILE                => SQLSERVER2000,
        WITH                 => SQLSERVER2000,
        WRITETEXT            => SQLSERVER2000,
    );

    sub is_reserved {
        return $WORDS{ uc pop } || 0;
    }
    
    sub reserved_by {
        my $flags       = &is_reserved;
        my @reserved_by = ();

        push @reserved_by, 'SQL Server 2000' if $flags & SQLSERVER2000;

        return @reserved_by;
    }

    sub words {
        return sort keys %WORDS;
    }
}

1;

__END__

=head1 NAME

SQL::ReservedWords::SQLServer - Reserved SQL words by SQL Server

=head1 SYNOPSIS

   if ( SQL::ReservedWords::SQLServer->is_reserved( $word ) ) {
       print "$word is a reserved SQL Server word!";
   }

=head1 DESCRIPTION

Determine if words are reserved by SQL Server.

=head1 METHODS

=over 4

=item is_reserved( $word )

Returns a boolean indicating if C<$word> is reserved by C<SQL Server 2000>.

=item words

Returns a list with all reserved words.

=back

=head1 EXPORTS

Nothing by default. Following subroutines can be exported:

=over 4

=item is_reserved

=item words

=back

=head1 SEE ALSO

http://msdn.microsoft.com/library/en-us/dnanchor/html/sqlserver.asp

=head1 AUTHOR

Christian Hansen C<chansen@cpan.org>

=head1 COPYRIGHT

This program is free software, you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
