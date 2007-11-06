use Test::More tests => 10;

use strict;
use XML::Atom::Feed;
use XML::Atom::Ext::OpenSearch;
use XML::Atom::Ext::OpenSearch::Link;
use XML::Atom::Ext::OpenSearch::Query;

my @accessors = qw( totalResults startIndex itemsPerPage );
my $namespace = XML::Atom::Ext::OpenSearch->element_ns;
my $prefix    = $namespace->{ prefix };
my $uri       = $namespace->{ uri };

my $feed = XML::Atom::Feed->new;

# Test simple accessors
for ( @accessors ) {
    $feed->$_( 2 );
    is( $feed->$_, 2, $_ );
}

my $xml = $feed->as_xml;

# Test resulting XML
for ( @accessors ) {
    like $xml, qr/<(?:\w+:)$_ xmlns:$prefix="$uri">/;
}

# Link test
my $link = XML::Atom::Ext::OpenSearch::Link->new;
$link->href( 'http://example.com' );
isa_ok( $link, 'XML::Atom::Ext::OpenSearch::Link' );

$feed->os_link( $link );

like $feed->as_xml, qr/<(?:\w+:)link xmlns:$prefix="$uri"/;

# Query test
my $query = XML::Atom::Ext::OpenSearch::Query->new;
$query->searchTerms( 'test' );
isa_ok( $query, 'XML::Atom::Ext::OpenSearch::Query' );

$feed->Query( $query );

like $feed->as_xml, qr/<(?:\w+:)Query xmlns:$prefix="$uri"/;
