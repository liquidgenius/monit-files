#!/usr/bin/perl
use strict;
use warnings;
use Getopt::Long;

my $search;
GetOptions('search=s' => \$search) or die "Error: $0 --search\n";

system("df -h | grep -q \"$search\"") == 0 or die "Error searching";
exit 0;
