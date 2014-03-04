#!/usr/bin/perl -w

while (<>) {
	if (/^<<</) {
		$coin = int rand(2);
		while (<>) {
			if (/^>>>/) {
				last;
			} elsif (/^===/) {
				$coin = $coin?0:1;
				next;
			} else {
				print if $coin;
				next;
			}
				
		}
	}
	else {
		print;
	}
}
# coin;
