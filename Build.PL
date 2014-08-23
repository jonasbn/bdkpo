# Build.PL for Business-DK-PO

use Module::Build;
my $build = Module::Build->new(
    dist_author        => 'Jonas B. Nielsen, (jonasbn) <jonasbn@cpan.org>',
    module_name        => 'Business::DK::PO',
    dist_abstract      => 'danish postal order code generator/validator',
    license            => 'artistic',
    create_readme      => 1,
    create_makefile_pl => 'traditional',
    requires           => {
        'Exporter'           => 0,    #core
        'Carp'               => 0,    #core
        'Test::Exception'    => 0,
        'Test::Kwalitee'     => 0,
        'Test::Perl::Critic' => 0,
        'perl'               => '5.006', #5.6
    },
    meta_merge => {
        resources => {
            homepage => 'http://logiclab.jira.com/wiki/display/BDKPO/Home',
            bugtracker =>
                'http://rt.cpan.org/NoAuth/Bugs.html?Dist=Business-DK-PO',
            repository => 'https://github.com/jonasbn/bdkpo',
            ProjectChangelog =>
                'http://logiclab.jira.com/browse/BDKPO#selectedTab=com.atlassian.jira.plugin.system.project%3Achangelog-panel',
            ProjectSite => 'http://logicLAB.jira.com/browse/BDKPO',
            ProjectWiki => 'http://logiclab.jira.com/wiki/display/BDKPO/Home',
        }
    },
);
$build->create_build_script();
