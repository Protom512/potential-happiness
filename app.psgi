#!/usr/bin/perl                                                                                                                                            
use strict;
use warnings;
use File::Basename;
use Plack::Builder;
use Plack::App::CGIBin;
my $basedir = dirname(__FILE__);
builder {
    mount '/' => Plack::App::CGIBin->new(root => $basedir, exec_cb => sub { 1 })->to_app;
};
