use inc::Module::Install 1.00;

if ( -e 'MANIFEST.SKIP' ) {
    system( 'pod2text lib/XML/Atom/Ext/OpenSearch.pm > README' );
}

name 'XML-Atom-Ext-OpenSearch';
all_from 'lib/XML/Atom/Ext/OpenSearch.pm';

requires 'XML::Atom' => '0.28';

test_requires 'Test::More';
extra_tests;

WriteAll;
