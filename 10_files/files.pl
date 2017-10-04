#!/usr/bin/perl
use strict;
use warnings;

### Opening and Closing Files
# open FILEHANDLE, EXPR
# open FILEHANDLE

# sysopen FILEHANDLE, FILENAME, MODE, PERMS
# sysopen FILEHANDLE, FILENAME, MODE

## Open Function
open(DATA, "<file.txt");



# read mode <
open(DATA, "<file.txt") or die "Couldn't open file file.txt, $!";

while(<DATA>){
   print "$_";
}

# write mode >
open(DATA, ">file.txt") or die "Couldn't open file file.txt, $!";

# For example, to open a file for updating without truncating it 
open(DATA, "+<file.txt"); or die "Couldn't open file file.txt, $!";

# To truncate the file first 
open DATA, "+>file.txt" or die "Couldn't open file file.txt, $!";

# You can open a file in the append mode. In this mode, writing point will be set to the end of the file.
open(DATA,">>file.txt") || die "Couldn't open file file.txt, $!";


# A double >> opens the file for appending, placing the file pointer at the end, 
# so that you can immediately start appending information. However, you can't 
# read from it unless you also place a plus sign in front of it −
open(DATA,"+>>file.txt") || die "Couldn't open file file.txt, $!";


# 1.	< or r
# Read Only Access

# 2.	> or w
# Creates, Writes, and Truncates

# 3.	>> or a
# Writes, Appends, and Creates

# 4.	+< or r+
# Reads and Writes

# 5.	+> or w+
# Reads, Writes, Creates, and Truncates

# 6.	+>> or a+
# Reads, Writes, Appends, and Creates


##### Sysopen Function
# The sysopen function is similar to the main open function, except that it uses the system open() function, 
# using the parameters supplied to it as the parameters for the system function −
sysopen(DATA, "file.txt", O_RDWR);

# Or to truncate the file before updating −
sysopen(DATA, "file.txt", O_RDWR|O_TRUNC );

# 1.	O_RDWR
# Read and Write

# 2.	O_RDONLY
# Read Only

# 3.	O_WRONLY
# Write Only

# 4.	O_CREAT
# Create the file

# 5.	O_APPEND
# Append the file

# 6.	O_TRUNC
# Truncate the file

# 7.	O_EXCL
# Stops if file already exists

# 8.	O_NONBLOCK
# Non-Blocking usability


##### Close Function
# To close a filehandle, and therefore disassociate the filehandle from the corresponding file, you use the close function. 
# This flushes the filehandle's buffers and closes the system's file descriptor.
close(DATA) || die "Couldn't close file properly";



open(DATA,"<import.txt") or die "Can't open data";
@lines = <DATA>;
close(DATA);



##### getc Function
#The getc function returns a single character from the specified FILEHANDLE, or STDIN if none is specified −

# getc FILEHANDLE
# If there was an error, or the filehandle is at end of file, then undef is returned instead.

###### read Function
# The read function reads a block of information from the buffered filehandle: This function is used to read binary data from the file.

# read FILEHANDLE, SCALAR, LENGTH, OFFSET
# read FILEHANDLE, SCALAR, LENGTH
# The length of the data read is defined by LENGTH, and the data is placed at the start of SCALAR if no OFFSET is specified. Otherwise data is placed after OFFSET bytes in SCALAR. The function returns the number of bytes read on success, zero at end of file, or undef if there was an error.

####### print Function
# For all the different methods used for reading information from filehandles, the main function for writing information back is the print function.

# print FILEHANDLE LIST
# print LIST
# print
# The print function prints the evaluated value of LIST to FILEHANDLE, or to the current output filehandle (STDOUT by default). For example −

# print "Hello World!\n";
# Copying Files
# Here is the example, which opens an existing file file1.txt and read it line by line and generate another copy file file2.txt.

# Open file to read
open(DATA1, "<file1.txt");

# Open new file to write
open(DATA2, ">file2.txt");

# Copy data from one file to another.
while(<DATA1>) {
   print DATA2 $_;
}
close( DATA1 );
close( DATA2 );



####### Renaming a file
# Here is an example, which shows how we can rename a file file1.txt to file2.txt. Assuming file is available in /usr/test directory.
rename ("/usr/test/file1.txt", "/usr/test/file2.txt" );
# This function renames takes two arguments and it just renames the existing file.

###### Deleting an Existing File
# Here is an example, which shows how to delete a file file1.txt using the unlink function.
unlink ("/usr/test/file1.txt");


##### Positioning inside a File
##### tell Function
# You can use to tell function to know the current position of a file and seek function to point a particular position inside the file.
tell FILEHANDLE


#### seek Function
# The seek function positions the file pointer to the specified number of bytes within a file −
seek FILEHANDLE, POSITION, WHENCE


###### File Information
y $file = "/usr/test/file1.txt";
my (@description, $size);
if (-e $file) {
   push @description, 'binary' if (-B _);
   push @description, 'a socket' if (-S _);
   push @description, 'a text file' if (-T _);
   push @description, 'a block special file' if (-b _);
   push @description, 'a character special file' if (-c _);
   push @description, 'a directory' if (-d _);
   push @description, 'executable' if (-x _);
   push @description, (($size = -s _)) ? "$size bytes" : 'empty';
   print "$file is ", join(', ',@description),"\n";
}




# 1.	-A
# Script start time minus file last access time, in days.

# 2.	-B
# Is it a binary file?

# 3.	-C
# Script start time minus file last inode change time, in days.

# 3.	-M
# Script start time minus file modification time, in days.

# 4.	-O
# Is the file owned by the real user ID?

# 5.	-R
# Is the file readable by the real user ID or real group?

# 6.	-S
# Is the file a socket?

# 7.	-T
# Is it a text file?

# 8.	-W
# Is the file writable by the real user ID or real group?

# 9.	-X
# Is the file executable by the real user ID or real group?

# 10.	-b
# Is it a block special file?

# 11.	-c
# Is it a character special file?

# 12.	-d
# Is the file a directory?

# 13.	-e
# Does the file exist?

# 14.	-f
# Is it a plain file?

# 15.	-g
# Does the file have the setgid bit set?

# 16.	-k
# Does the file have the sticky bit set?

# 17.	-l
# Is the file a symbolic link?

# 18.	-o
# Is the file owned by the effective user ID?

# 19.	-p
# Is the file a named pipe?

# 20.	-r
# Is the file readable by the effective user or group ID?

# 21.	-s
# Returns the size of the file, zero size = empty file.

# 22.	-t
# Is the filehandle opened by a TTY (terminal)?

# 23.	-u
# Does the file have the setuid bit set?

# 24.	-w
# Is the file writable by the effective user or group ID?

# 25.	-x
# Is the file executable by the effective user or group ID?

# 26.	-z
# Is the file size zero?

