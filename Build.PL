use strict;

use Module::Build;

my $build = Module::Build->new(
    module_name        => 'Catalyst::Plugin::I18N::Request',
    dist_author        => 'Adam Paynter <adapay@cpan.org>',
    license            => 'perl',
    create_readme      => 1,
    create_makefile_pl => 'traditional',
    requires           => {
        'Catalyst'               => 0,
        'Catalyst::Plugin::I18N' => 0,
        'Scalar::Util'           => 0,
        'URI'                    => 0,
        'URI::QueryParam'        => 0,
        'utf8'                   => 0,
    },
    build_requires     => {
        'Test::More'   => 0,
    },
);

$build->create_build_script;
