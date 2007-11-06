package XML::Atom::Ext::OpenSearch;

use strict;
use warnings;

use base qw( XML::Atom::Base );
use XML::Atom::Feed;

use XML::Atom::Ext::OpenSearch::Query;

our $VERSION = '0.01';

=head1 NAME

XML::Atom::Ext::OpenSearch - XML::Atom extension for OpenSearch data

=head1 SYNOPSIS

    my $feed = XML::Atom::Feed->new;
    $feed->totalResults( $total );

=head1 DESCRIPTION

=head1 METHODS

=head2 totalResults( $results )

=head2 startIndex( $index )

=head2 itemsPerPage( $items )

=head2 Query( )

=head2 add_Query( $object )

=cut

BEGIN {
    XML::Atom::Feed->mk_elem_accessors(
        qw(totalResults startIndex itemsPerPage),
        [   XML::Atom::Namespace->new(
                "opensearch" => q{http://a9.com/-/spec/opensearch/1.1/}
            )
        ]
    );

    XML::Atom::Feed->mk_object_list_accessor(
        Query => 'XML::Atom::Ext::OpenSearch::Query' );
}

=head2 element_ns()

=cut

sub element_ns {
    return XML::Atom::Namespace->new(
        "opensearch" => q{http://a9.com/-/spec/opensearch/1.1/} );
}

=head1 AUTHOR

Brian Cassidy E<lt>bricas@cpan.orgE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright 2007 by Brian Cassidy

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself. 

=head1 SEE ALSO

=over 4 

=item * L<XML::Atom>

=back

=cut

1;
