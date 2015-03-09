#!/usr/bin/perl -w

use Tk;
my $mw = new MainWindow; 
my $label = $mw -> Label(-text=>"Button Test!!") -> pack();
my $button = $mw -> Button(-text => "Quit", -command => sub { exit }) -> pack();
MainLoop;
