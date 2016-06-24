#!/usr/bin/perl

use strict;
use warnings;

print "Enter a string: ";
my $string = <STDIN>;
chomp ($string);

my %hashofChars;
my $length = length($string);

## Get length of the string
print "Length: $length\n";

for (my $i = 0; $i < $length; $i++) {

  ## Get each character of the string
  my $char = lc(substr($string, $i, 1));
  #print "Checking char $char\n";

  ## Check if there is already a key for the char existing
  if (exists $hashofChars{$char}) {
    ## We have found our character
    print "First repeating character is: $char\n";
    last;
  }
  else {
    ## Add a key in the hash for the char
    $hashofChars{$char} = 1;
  }
}
