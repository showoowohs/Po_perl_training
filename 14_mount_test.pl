#!/usr/bin/perl

use File::Path;

sub mount_fs{
	my $cmd="sudo mount /dev/sda3 /home/pandora/Disk_100G";
	my $res=`$cmd`;
	#print "res = $res\n";
	$cmd="sudo chown -R pandora.pandora ~/Disk_100G";
	$res=`$cmd`;
}

sub check_device_note{
	my $path="/dev/sda3"; 
	my $status=0;
	if(-e $path) { 	
		$status=1;
	}else{
		$status=0;
	}
	return $status
}

sub check_mount_path{
	my $path="/home/pandora/Disk_100G"; 
	my $status=0;
	if(-e $path) { 	
		$status=1;
	}else{
		$status=0;
		my $perm="0755";
		mkdir $path, oct($perm) and $status=1 or die "Can't build $path directory:$!";
		
	}
	return $status
}

#save_eth0_information
my $device_status=check_device_note();
print "device_status = $device_status\n";

my $mount_path_status=check_mount_path();
print "mount_path_status = $mount_path_status\n";
if($device_status == 1 && $mount_path_status == 1){
	print "mount\n";
	&mount_fs
}else{
	print "not mount\n";
}
