package XML::Atom::Ext::OpenSearch::Link;

use strict;
use warnings;

use base qw( XML::Atom::Base );

=head1 NAME

XML::Atom::Ext::OpenSearch::Link - OpenSearch link element

=head1 SYNOPSIS


=head1 DESCRIPTION

=head1 METHODS

=cut

BEGIN {
    __PACKAGE__->mk_attr_accessors( qw( href hreflang rel type ) );
}

=head2 element_name()

=cut

sub element_name {
    return 'link';
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
