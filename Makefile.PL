use strict;
use warnings;

use 5.006;

use ExtUtils::MakeMaker 6.17;

my %WriteMakefileArgs = (
  "ABSTRACT" => "A small, simple, correct HTTP/1.1 client",
  "AUTHOR" => "Christian Hansen <chansen\@cpan.org>, David Golden <dagolden\@cpan.org>",
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.17"
  },
  "DISTNAME" => "HTTP-Tiny",
  "LICENSE" => "perl",
  "MIN_PERL_VERSION" => "5.006",
  "NAME" => "HTTP::Tiny",
  "PREREQ_PM" => {
    "Carp" => 0,
    "Fcntl" => 0,
    "IO::Socket" => 0,
    "MIME::Base64" => 0,
    "Socket" => 0,
    "Time::Local" => 0,
    "bytes" => 0,
    "strict" => 0,
    "warnings" => 0
  },
  "TEST_REQUIRES" => {
    "Data::Dumper" => 0,
    "Exporter" => 0,
    "ExtUtils::MakeMaker" => 0,
    "File::Basename" => 0,
    "File::Spec" => 0,
    "File::Temp" => 0,
    "IO::Dir" => 0,
    "IO::File" => 0,
    "IO::Socket::INET" => 0,
    "IPC::Cmd" => 0,
    "Test::More" => "0.96",
    "lib" => 0,
    "open" => 0
  },
  "VERSION" => "0.091",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


my %FallbackPrereqs = (
  "Carp" => 0,
  "Data::Dumper" => 0,
  "Exporter" => 0,
  "ExtUtils::MakeMaker" => 0,
  "Fcntl" => 0,
  "File::Basename" => 0,
  "File::Spec" => 0,
  "File::Temp" => 0,
  "IO::Dir" => 0,
  "IO::File" => 0,
  "IO::Socket" => 0,
  "IO::Socket::INET" => 0,
  "IPC::Cmd" => 0,
  "MIME::Base64" => 0,
  "Socket" => 0,
  "Test::More" => "0.96",
  "Time::Local" => 0,
  "bytes" => 0,
  "lib" => 0,
  "open" => 0,
  "strict" => 0,
  "warnings" => 0
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.63_03) } ) {
  delete $WriteMakefileArgs{TEST_REQUIRES};
  delete $WriteMakefileArgs{BUILD_REQUIRES};
  $WriteMakefileArgs{PREREQ_PM} = \%FallbackPrereqs;
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);
