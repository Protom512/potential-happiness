#!/usr/bin/perl
use strict;
use warnings;
use CGI;
my $q      = CGI->new;
my $number = $q->param('number');
unless (defined $number) {
    print $q->header(
        -status => 200,
        -type   => 'text/plain; charset=utf8',
    );
    print "Please set number";
    exit;
}
my $result = '';
if ($number % 3 == 0) {
    $result .= 'Fizz';
}
if ($number % 5 == 0) {
    $result .= 'Buzz';
}
$result ||= $number;
print $q->header(
    -status => 200,
    -type   => 'text/plain; charset=utf8',
);
print $result. "\n";
