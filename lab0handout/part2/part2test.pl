#!/usr/athena/bin/perl
use File::Spec;

print "\nLab 0 Part 2: Testing Starting\n\n";

$tool = File::Spec->rel2abs( "./regDeps.so" ) ;

$tbegin = time();
#invoke test script in this directory
open TB, "/mit/6.823/Spring16/drivetests.pl $tool 2>&1 |";
while(<TB>) {
  print $_;
}

$ttotal = time() - $tbegin;

print "\n\nLab 0 Part 2: Testing Complete in $ttotal seconds\n\n";