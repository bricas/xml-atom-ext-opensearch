use strict;

use Module::Build;

my $build = Module::Build->new(
	module_name        => 'XML::Atom::Ext::OpenSearch',
	dist_author        => 'Brian Cassidy <bricas@cpan.org>',
	license            => 'perl',
	create_readme      => 1,
	create_makefile_pl => 'traditional',
	requires           => {
		'XML::Atom' => '0.22',
	},
    build_requires     => {
        'Test::More' => 0
    }
);

$build->create_build_script;
