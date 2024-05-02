use strict;
use warnings;



sub parse_operator {
	my ($op) = @_;

	open (my $fhi, '<', "ps-manpages.hxpipe");

	my $engage = 0;
	my $signature = "";
	my $description = "";
	my $example = "";
	my $errors = "";
	my $see_also = "";

	my $mode = \$description;

	while (<$fhi>) {
		next if /^\|br$/;
		next if /^-\\n$/;
		next if /^A.+$/;
		if (/^-$op$/) { $engage = 1; }
		elsif (/^\|hr$/ && $engage) { print $see_also; close($fhi); exit(4); }
		elsif (/- (.+)$/) { $signature .= "\n$1"; }
		elsif (/^-\\n\s+(.+)/) {
			my $capture = $1;
			if ($capture =~ /EXAMPLE:/) {  $mode = \$example; next; }
			elsif ($capture =~ /SEE\s+ALSO:/) { $mode = \$see_also; next; }
			elsif ($capture =~ /ERRORS:/) {  $mode = \$errors; next; }
			else {	$$mode .= "\n$1"; }
		}
		elsif (/^-([a-z]+)$/ && $engage) { $$mode .= "\n$1"; }
	}
}


&parse_operator("abs");
