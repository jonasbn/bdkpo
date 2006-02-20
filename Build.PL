# Build.PL for Business-DK-PO

# $Id: Build.PL,v 1.1 2006-02-20 12:36:01 jonasbn Exp $

use Module::Build;
my $build = Module::Build->new(
	dist_author       => 'Jonas B. Nielsen, (jonasbn) <jonasbn@cpan.org>',
	module_name       => 'Business::DK::PO',
	dist_version_from => 'lib/Business/DK/PO.pm',
	license           => 'artistic',
	create_makefile_pl => 'passthrough',
	requires => {
	    'Exporter'        => 0, #core
		'Carp'            => 0, #core
		'Test::Exception' => 0,
	},
);
$build->create_build_script();
