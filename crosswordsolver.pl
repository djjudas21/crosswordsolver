#!/usr/bin/perl -wT

use strict;
use warnings;

my $dictionary = '/usr/share/dict/words';
my $word = $ARGV[0];

if (!$word) {
	print "Please enter word with underscores for unknown letters\n";
	exit;
}

my $length = length($word);
my $upperword = uc($word);
print "Searching for matches for $length-letter word $upperword...\n";

# Build regex out of word
my $regex = '^';
for my $c (split //, $word) {
	if ($c eq '_') {
		$regex .= '\w';
	} else {
		$regex .= $c;
	}
}
$regex .= '$';

# Now open the dictionary file
open(my $dict, "<", $dictionary) or die "cannot open < $dictionary: $!";

# Check our regex against every entry
my @matches;
while(my $line = <$dict>) {
	if ($line =~ m/$regex/i) {
		push(@matches, $line);
	}
}

# Close dictionary fle
close($dict);

my $number = $#matches+1;
print "Found $number matches for $upperword\n";
sleep(1);

for my $match (@matches) {
	print "  $match";
}
