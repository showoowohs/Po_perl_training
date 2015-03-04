#!/usr/bin/perl

require module_test1;
 
module_test1::print_init();
module_test1::print_newline();
module_test1::print_something(module_test1::return_something("There is no spoon."));
module_test1::print_newline();
module_test1::print_exit();
