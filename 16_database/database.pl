#!/usr/bin/perl

# Perl 5 has become very easy to write database applications using DBI module. 
# DBI stands for Database Independent Interface for Perl, which means DBI provides an abstraction 
# layer between the Perl code and the underlying database, allowing you to switch database implementations really easily.

# The DBI is a database access module for the Perl programming language.
# It provides a set of methods, variables, and conventions that provide a consistent database interface, 
# independent of the actual database being used.

# Here DBI is responsible of taking all SQL commands through the API, (i.e., Application Programming Interface) 
# and to dispatch them to the appropriate driver for actual execution. And finally, DBI is responsible of taking 
# results from the driver and giving back it to the calling scritp.


###### Notation and Conventions
# Throughout this chapter following notations will be used and it is recommended that you should also follow the same convention.
# $dsn    Database source name
# $dbh    Database handle object
# $sth    Statement handle object
# $h      Any of the handle types above ($dbh, $sth, or $drh)
# $rc     General Return Code  (boolean: true=ok, false=error)
# $rv     General Return Value (typically an integer)
# @ary    List of values returned from the database.
# $rows   Number of rows processed (if available, else -1)
# $fh     A filehandle
# undef   NULL values are represented by undefined values in Perl
# \%attr  Reference to a hash of attribute values passed to methods


###### Database example
#!/usr/bin/perl

use DBI
use strict;

my $driver = "mysql"; 
my $database = "TESTDB";
my $dsn = "DBI:$driver:database = $database";
my $userid = "testuser";
my $password = "test123";

my $dbh = DBI->connect($dsn, $userid, $password ) or die $DBI::errstr;


# If a connection is established with the datasource then a Database Handle is returned and saved 
# into $dbh for further use otherwise $dbh is set to undef value and $DBI::errstr returns an error string.


my $sth = $dbh->prepare("INSERT INTO TEST_TABLE
                       (FIRST_NAME, LAST_NAME, SEX, AGE, INCOME )
                         values
                       ('john', 'poul', 'M', 30, 13000)");
$sth->execute() or die $DBI::errstr;
$sth->finish();
$dbh->commit or die $DBI::errstr;


## Using Bind Values
my $first_name = "john";
my $last_name = "poul";
my $sex = "M";
my $income = 13000;
my $age = 30;
my $sth = $dbh->prepare("INSERT INTO TEST_TABLE
                        (FIRST_NAME, LAST_NAME, SEX, AGE, INCOME )
                          values
                        (?,?,?,?)");
$sth->execute($first_name,$last_name,$sex, $age, $income) 
          or die $DBI::errstr;
$sth->finish();
$dbh->commit or die $DBI::errstr;



######### READ Operation
my $sth = $dbh->prepare("SELECT FIRST_NAME, LAST_NAME
                        FROM TEST_TABLE 
                        WHERE AGE > 20");
$sth->execute() or die $DBI::errstr;
print "Number of rows found :" + $sth->rows;
while (my @row = $sth->fetchrow_array()) {
   my ($first_name, $last_name ) = @row;
   print "First Name = $first_name, Last Name = $last_name\n";
}
$sth->finish();


## Using Bind Values
$age = 20;
my $sth = $dbh->prepare("SELECT FIRST_NAME, LAST_NAME
                        FROM TEST_TABLE
                        WHERE AGE > ?");
$sth->execute( $age ) or die $DBI::errstr;
print "Number of rows found :" + $sth->rows;
while (my @row = $sth->fetchrow_array()) {
   my ($first_name, $last_name ) = @row;
   print "First Name = $first_name, Last Name = $last_name\n";
}
$sth->finish();



######### UPDATE Operation
my $sth = $dbh->prepare("UPDATE TEST_TABLE
                        SET   AGE = AGE + 1 
                        WHERE SEX = 'M'");
$sth->execute() or die $DBI::errstr;
print "Number of rows updated :" + $sth->rows;
$sth->finish();
$dbh->commit or die $DBI::errstr;

## Using Bind Values
$sex = 'M';
my $sth = $dbh->prepare("UPDATE TEST_TABLE
                        SET   AGE = AGE + 1
                        WHERE SEX = ?");
$sth->execute('$sex') or die $DBI::errstr;
print "Number of rows updated :" + $sth->rows;
$sth->finish();
$dbh->commit or die $DBI::errstr;

# or like this

$sex = 'M';
$income = 10000;
my $sth = $dbh->prepare("UPDATE TEST_TABLE
                        SET   INCOME = ?
                        WHERE SEX = ?");
$sth->execute( $income, '$sex') or die $DBI::errstr;
print "Number of rows updated :" + $sth->rows;
$sth->finish();


######### DELETE Operation
$age = 30;
my $sth = $dbh->prepare("DELETE FROM TEST_TABLE
                         WHERE AGE = ?");
$sth->execute( $age ) or die $DBI::errstr;
print "Number of rows deleted :" + $sth->rows;
$sth->finish();
$dbh->commit or die $DBI::errstr;

## Using do Statement
$dbh->do('DELETE FROM TEST_TABLE WHERE age =30');

# do returns a true value if it succeeded, and a false value if it failed. Actually, 
# if it succeeds it returns the number of affected rows. In the example it would 
# return the number of rows that were actually deleted.


######### Begin Transaction
# Perl DBI module provided begin_work API, which enables transactions (by turning AutoCommit off) 
# until the next call to commit or rollback. After the next commit or rollback, AutoCommit will automatically be turned on again.
$rc  = $dbh->begin_work  or die $dbh->errstr;

######### COMMIT Operation
$dbh->commit or die $dbh->errstr;

######### ROLLBACK Operation
# you can revert those changes to use rollback API.
$dbh->rollback or die $dbh->errstr;


######### AutoCommit Option
my $dbh = DBI->connect($dsn, $userid, $password,
              {AutoCommit => 1}) 
              or die $DBI::errstr;
# Here AutoCommit can take value 1 or 0, where 1 means AutoCommit is on and 0 means AutoCommit is off.


######### Automatic Error Handling
# When you make the connect call, you can specify a RaiseErrors option that handles errors for you automatically. 
# When an error occurs, DBI will abort your program instead of returning a failure code. 
# If all you want is to abort the program on an error, this can be convenient. Here's what it looks like −
my $dbh = DBI->connect($dsn, $userid, $password,
              {RaiseError => 1})
              or die $DBI::errstr;
# Here RaiseError can take value 1 or 0.




########## Disconnecting Database
$rc = $dbh->disconnect  or warn $dbh->errstr;



########## Using NULL Values
$sth = $dbh->prepare(qq{
       INSERT INTO TEST_TABLE (FIRST_NAME, AGE) VALUES (?, ?)
       });
 $sth->execute("Joe", undef);

#  Here qq{} is used to return a quoted string to prepare API. 
#  However, care must be taken when trying to use NULL values in a WHERE clause. Consider −

$sql_clause = defined $age? "age = ?" : "age IS NULL";
$sth = $dbh->prepare(qq{
       SELECT FIRST_NAME FROM TEST_TABLE WHERE $sql_clause
       });
$sth->execute(defined $age ? $age : ());



######### Some Other DBI Functions
## available_drivers
@ary = DBI->available_drivers;
@ary = DBI->available_drivers($quiet);


## installed_drivers
# Returns a list of driver name and driver handle pairs for all drivers 'installed' 
%drivers = DBI->installed_drivers();

## data_sources
# Returns a list of data sources (databases) available via the named driver
@ary = DBI->data_sources($driver);


## quote
# Quote a string literal for use as a literal value in an SQL statement
$sql = $dbh->quote($value);
$sql = $dbh->quote($value, $data_type);


$sql = sprintf "SELECT foo FROM bar WHERE baz = %s",
                $dbh->quote("Don't");


$quoted = $dbh->quote("one\ntwo\0three")
may produce results which will be equivalent to
CONCAT('one', CHAR(12), 'two', CHAR(0), 'three')



######### Methods Common to All Handles
## err
# Returns the native database engine error code from the last driver method called.
$str = $h->errstr;
or
$str = $DBI::errstr
or
$str = $h->errstr


## rows
# This returns the number of rows effected by previous SQL statement and equivalent to $DBI::rows.
$rv = $h->rows;
or
$rv = $DBI::rows

## trace
# DBI sports an extremely useful ability to generate runtime tracing information 
$h->trace($trace_settings);



######## Interpolated Statements are Prohibited
# Thus don't use interpolated statement instead use bind value to prepare dynamic SQL statement.
while ($first_name = <>) {
   my $sth = $dbh->prepare("SELECT * 
                          FROM TEST_TABLE 
                          WHERE FIRST_NAME = '$first_name'");
   $sth->execute();
   # and so on ...
}
