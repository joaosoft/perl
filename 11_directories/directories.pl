#!/usr/bin/perl
use strict;
use warnings;

opendir DIRHANDLE, EXPR  # To open a directory
readdir DIRHANDLE        # To read a directory
rewinddir DIRHANDLE      # Positioning pointer to the begining
telldir DIRHANDLE        # Returns current position of the dir
seekdir DIRHANDLE, POS   # Pointing pointer to POS inside dir
closedir DIRHANDLE       # Closing a directory.


##### Display all the Files
# There are various ways to list down all the files available in a particular directory. 
# First let's use the simple way to get and list down all the files using the glob operator −


# Display all the files in /tmp directory.
$dir = "/tmp/*";
my @files = glob( $dir );

foreach (@files ){
   print $_ . "\n";
}

# Display all the C source files in /tmp directory.
$dir = "/tmp/*.c";
@files = glob( $dir );

foreach (@files ){
   print $_ . "\n";
}

# Display all the hidden files.
$dir = "/tmp/.*";
@files = glob( $dir );
foreach (@files ){
   print $_ . "\n";
}


# Display all the files from /tmp and /home directories.
$dir = "/tmp/* /home/*";
@files = glob( $dir );

foreach (@files ){
   print $_ . "\n";
}


# Here is another example, which opens a directory and list out all the files available inside this directory.
opendir (DIR, '.') or die "Couldn't open directory, $!";
while ($file = readdir DIR) {
   print "$file\n";
}
closedir DIR;



# One more example to print the list of C source files you might use is −
opendir(DIR, '.') or die "Couldn't open directory, $!";
foreach (sort grep(/^.*\.c$/,readdir(DIR))){
   print "$_\n";
}
closedir DIR;


###### Create new Directory
$dir = "/tmp/perl";

# This creates perl directory in /tmp directory.
mkdir( $dir ) or die "Couldn't create $dir directory, $!";
print "Directory created successfully\n";


#### Remove a directory
$dir = "/tmp/perl";

# This removes perl directory from /tmp directory.
rmdir( $dir ) or die "Couldn't remove $dir directory, $!";
print "Directory removed successfully\n";


##### Change a Directory
$dir = "/home";

# This changes perl directory  and moves you inside /home directory.
chdir( $dir ) or die "Couldn't go inside $dir directory, $!";
print "Your new location is $dir\n";