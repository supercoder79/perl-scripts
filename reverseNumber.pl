#!/usr/bin/perl

use strict;
use warnings;

print "Enter an integer: ";

my $inputNum = <STDIN>;
chomp($inputNum);

#print "Original number: " . $inputNum . "\n";

my $tempNum = $inputNum;
my $reverseNum = 0;

while ($tempNum > 0) {
  #print "Temp num = $tempNum\tReverse num = $reverseNum\n";
  $reverseNum = ($reverseNum * 10) + ($tempNum % 10);
  $tempNum = int($tempNum / 10);
}

print "\n\nReverse Num: $reverseNum\n";
