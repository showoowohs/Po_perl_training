#!/usr/bin/perl -w

# 1. check cpan
# 2. check Gtk2 via cpan shell ($m Gtk2 , $install Gtk2) P.S install need root permission
# 3. check Tk via cpan shell ($m Tk , $install Tk) P.S install need root permission

use Tk;
 
use strict;
use warnings;
 
my $mw = MainWindow->new;

# set Lable txet
my $some = $mw->Label(-text => "Tk's job!!")->pack;

# set size 
$some = $mw->Canvas(-width => 100, -height => 100)->pack;
MainLoop;
