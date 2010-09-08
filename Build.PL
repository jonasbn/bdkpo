# Build.PL for Business-DK-PO

# $Id: Build.PL,v 1.1 2006-02-20 12:36:01 jonasbn Exp $

use Module::Build;
my $build = Module::Build->new(
	dist_author        => 'Jonas B. Nielsen, (jonasbn) <jonasbn@cpan.org>',
	module_name        => 'Business::DK::PO',
	dist_abstract      => 'danish postal order code generator/validator',
	license            => 'artistic',
	create_makefile_pl => 'traditional',
	requires => {
	    'Exporter'        => 0, #core
		'Carp'            => 0, #core
		'Test::Exception' => 0,
	},
    meta_merge => {
        resources => {
            homepage => 'http://logiclab.jira.com/wiki/display/BDKPO/Home',
            bugtracker =>
                'http://rt.cpan.org/NoAuth/Bugs.html?Dist=Business-DK-PO',
            repository => 'http://logicLAB.jira.com/svn/BDKPO',
            ProjectChangelog =>
                'http://logiclab.jira.com/browse/BDKPO#selectedTab=com.atlassian.jira.plugin.system.project%3Achangelog-panel',
            ProjectSite => 'http://logicLAB.jira.com/browse/BDKPO',
            ProjectWiki => 'http://logiclab.jira.com/wiki/display/BDKPO/Home',
        }
    },
);
$build->create_build_script();
