#!/usr/bin/perl

my $IP_CMD="ifconfig eth0";
#print `$IP_CMD`;


sub save_eth0_information{
	my @Array_eth0 = split('\n', `$IP_CMD`);  

	#foreach my $val (@Array_eth0) {  
	#	print "$val\n";  
	#}

	if (@Array_eth0) {
		#die('not null');
		#print "@Array_eth0[0]\n";
		#print "@Array_eth0[1]\n";

		# 拆第1組 Array (get device name & Mac address)
		my @Array_eth0_1 = split(' ', @Array_eth0[0]);

		my $Devices_Name=@Array_eth0_1[0];
		print "Devices_Name = $Devices_Name\n";

		my $Eth0_Mac=@Array_eth0_1[4];
		print "Eth0_Mac = $Eth0_Mac\n";

		# 拆第2組 Array (get IP address)
		my @Array_eth0_2 = split(' ', @Array_eth0[1]);
		my @tmp= split('\:', @Array_eth0_2[1]);
		my $Mac_Address=@tmp[1];
		print "Mac_Address = $Mac_Address\n";

	}else{
		die('not eth0');
	}		
}

save_eth0_information
