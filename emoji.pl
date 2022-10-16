use strict;
use warnings;
use Data::Dumper;

open my $emoji_fh, "<", "/home/masterbirdy/perlSandbox/emoji-test.txt" or die "Script has failed: $!";

while (<$emoji_fh>) {
    next unless $_ =~ qr/((?:[0-9A-Z]{4,5}\s)++).*;\sfully-qualified.*#.*(E\d{1,2}\.\d)\s(?:(?=.*:.*)(.*):\s(.*)|(.*))/;
    warn Dumper($1, $2, $3, $4, $5);
}