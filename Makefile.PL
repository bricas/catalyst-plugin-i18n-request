use inc::Module::Install 0.77;

if( -e 'MANIFEST.SKIP' ) {
    system( 'pod2text lib/Catalyst/Plugin/I18N/Request.pm > README' );
}

perl_version '5.008';

name 'Catalyst-Plugin-I18N-Request';
all_from 'lib/Catalyst/Plugin/I18N/Request.pm';

requires 'Catalyst::Runtime' => '5.7000';
requires 'Catalyst::Plugin::I18N';
requires 'URI';
requires 'Scalar::Util';

test_requires 'Test::More';

WriteAll;
