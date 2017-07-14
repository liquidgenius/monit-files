#!/usr/bin/perl -w
use strict;
use warnings;
use Getopt::Long;

#my $dir = '/mnt/cifs/colossus/Series/';
my $dir;
GetOptions('dir=s' => \$dir) or die "Error: $0 --dir\n";

if (-e $dir and -d $dir) {
	exit 0;
} else {
	die "Error: Directory $dir Does not exist\n";
}
