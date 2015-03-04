#!/usr/bin/perl

# 變成 module 時 package name 要與 file name 相同
# P.S file name 結尾 need to .pm 才可以被呼叫
package module_test1;

sub print_newline {
	print "\n";
}

sub print_something {
	$a = shift;
	print "$a\n";
}

sub return_something {
	return shift;
}

sub print_exit {
	$msg1 = "exit";
	print "$msg1\n";
}

sub print_init {
	$msg2 = "init";
	print "$msg2\n";
}

# need set 1; 才能夠給別人載入
1;

