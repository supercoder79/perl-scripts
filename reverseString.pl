#!/usr/bin/perl

use strict;
use warnings;

print "Enter a string to reverse: ";
my $origString = <STDIN>;
chomp ($origString);

my $reverseString;

my $len = length($origString);

while ($len > 0) {
  $len--;
  $reverseString .= substr($origString, $len, 1);
}

print "Reversed string: $reverseString\n";
