
use strict;
use warnings;

use Module::Build 0.3601;


my %module_build_args = (
  "build_requires" => {
    "Module::Build" => "0.3601",
    "TAP::Harness" => 0,
    "Test::Deep" => 0
  },
  "configure_requires" => {
    "Module::Build" => "0.3601"
  },
  "dist_abstract" => "Verify that your distribution tests well in a fresh perlbrew",
  "dist_author" => [
    "Rob Hoelz <rob\@hoelz.ro>"
  ],
  "dist_name" => "Dist-Zilla-Plugin-Test-LocalBrew",
  "dist_version" => "0.04",
  "license" => "perl",
  "module_name" => "Dist::Zilla::Plugin::Test::LocalBrew",
  "recommends" => {},
  "recursive_test_files" => 1,
  "requires" => {
    "Dist::Zilla" => "4.2"
  },
  "script_files" => []
);


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
