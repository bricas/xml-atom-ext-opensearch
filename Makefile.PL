use inc::Module::Install 0.68;

if ( -e 'MANIFEST.SKIP' ) {
    system( 'pod2text lib/XML/Atom/Ext/OpenSearch.pm > README' );
    require File::Copy;
    File::Copy::copy( 'Changes', 'Changes.yml' );
}

name 'XML-Atom-Ext-OpenSearch';
all_from 'lib/XML/Atom/Ext/OpenSearch.pm';

requires 'XML::Atom' => '0.28';

test_requires 'Test::More';

auto_install;
WriteAll;
