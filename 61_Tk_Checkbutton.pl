#!/usr/bin/perl -w

sub po_button{
	print "click!\n";
}
use Tk;

my $mw = MainWindow->new;
$mw->title("Test Window");
$mw->Label(-text => "This is an Checkbutton example")->pack;

$mw->Button(-text => "Top", -command => sub { po_button })->pack(-side => 'top', -expand => 1, -fill => 'x');
$mw->Button(-text => "Exit", -command => sub { exit })->pack(-side => 'bottom', -expand => 1, -fill => 'x');
$mw->Checkbutton(-text => "I like it!")->pack(-side => 'left', -expand => 1);
$mw->Checkbutton(-text => "I hate it!")->pack(-side => 'right', -expand => 1);
$mw->Checkbutton(-text => "I don't care")->pack(-side => 'bottom', -expand => 1);


MainLoop;
