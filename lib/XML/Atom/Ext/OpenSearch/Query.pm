package XML::Atom::Ext::OpenSearch::Query;

use strict;
use warnings;

use base qw( XML::Atom::Base );

=head1 NAME

XML::Atom::Ext::OpenSearch::Query - OpenSearch query element

=head1 SYNOPSIS

    my $query = XML::Atom::Ext:OpenSearch::Query->new;
    $query->title( 'foo' );
    $feed->add_Query( $query );

=head1 DESCRIPTION

=head1 METHODS

=head2 role( )

=head2 title( )

=head2 totalResults( )

=head2 searchTerms( )

=head2 count( )

=head2 startIndex( )

=head2 startPage( )

=head2 language( )

=head2 outputEncoding( )

=head2 inputEncoding( )

=cut

BEGIN {
    __PACKAGE__->mk_attr_accessors(
        qw(
            role title totalResults searchTerms count startIndex
            startPage language outputEncoding inputEncoding
            )
    );
}

=head2 element_name()

=cut

sub element_name {
    return 'Query';
}

=head2 element_ns()

=cut

sub element_ns {
    return XML::Atom::Ext::OpenSearch->element_ns;
}

=head1 AUTHOR

Brian Cassidy E<lt>bricas@cpan.orgE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright 2007 by Brian Cassidy

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself. 

=head1 SEE ALSO

=over 4 

=item * L<XML::Atom::Ext::OpenSearch>

=back

=cut

1;
