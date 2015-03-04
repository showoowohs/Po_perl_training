#!/usr/bin/perl

use List::Util qw(shuffle);
# through shuffle() 我們 can get a 隨機排列的 array 

my @data = ("a" .. "z");
print "data = @data\n";
my @shuffle_test = shuffle(@data);
print "shuffle_test = @shuffle_test\n";
