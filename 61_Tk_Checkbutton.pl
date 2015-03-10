#!/usr/bin/perl -w

use Tk;

my $mw = MainWindow->new;
$mw->title("Test Window");
$mw->Label(-text => "This is an Checkbutton example")->pack;

$mw->Checkbutton(-text => "I like it!")->pack;
$mw->Checkbutton(-text => "I hate it!")->pack;
$mw->Checkbutton(-text => "I don't care")->pack;
$mw->Button(-text => "Exit", -command => sub { exit })->pack;
MainLoop;
