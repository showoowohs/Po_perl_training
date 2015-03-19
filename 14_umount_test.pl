#!/usr/bin/perl

use File::Path;

sub umount_fs{
	my $cmd="sudo umount /home/pandora/Disk_100G";
	my $res = `$cmd`;
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


my $mount_path_status=check_mount_path();
print "mount_path_status = $mount_path_status\n";
if($mount_path_status == 1){
	print "umount\n";
	&umount_fs
}else{
	print "not umount\n";
}
