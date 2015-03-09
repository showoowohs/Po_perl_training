#!/usr/bin/perl -w

sub po_exit{
	print "call po_exit()\n";
	exit
}
use Tk;
my $mw = new MainWindow; 
my $label = $mw -> Label(-text=>"Button Test!!") -> pack();
my $button = $mw -> Button(-text => "Quit", -command => sub { po_exit }) -> pack();
MainLoop;
