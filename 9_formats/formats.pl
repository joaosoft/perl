#!/usr/bin/perl
use strict;
use warnings;

# Define a Format
# Define a Format
# Following is the syntax to define a Perl format −

# format FormatName =
# fieldline
# value_one, value_two, value_three
# fieldline
# value_one, value_two
# .


# @>>>> right-justified
# @|||| centered
# @####.## numeric field holder
# @* multiline field holder


format EMPLOYEE =
===================================
@<<<<<<<<<<<<<<<<<<<<<< @<< 
$name $age
@#####.##
$salary
===================================

### Using the Format
write EMPLOYEE;







format EMPLOYEE =
===================================
@<<<<<<<<<<<<<<<<<<<<<< @<< 
$name $age
@#####.##
$salary
===================================
.

select(STDOUT);
$~ = EMPLOYEE;

@n = ("Ali", "Raza", "Jaffer");
@a  = (20,30, 40);
@s = (2000.00, 2500.00, 4000.000);

$i = 0;
foreach (@n){
   $name = $_;
   $age = $a[$i];
   $salary = $s[$i++];
   write;
}
When executed, this will produce the following result −

===================================
Ali                     20
  2000.00
===================================
===================================
Raza                    30
  2500.00
===================================
===================================
Jaffer                  40
  4000.00
===================================


#### Define a Report Header

format EMPLOYEE =
===================================
@<<<<<<<<<<<<<<<<<<<<<< @<< 
$name $age
@#####.##
$salary
===================================
.

format EMPLOYEE_TOP =
===================================
Name                    Age
===================================
.

select(STDOUT);
$~ = EMPLOYEE;
$^ = EMPLOYEE_TOP;

@n = ("Ali", "Raza", "Jaffer");
@a  = (20,30, 40);
@s = (2000.00, 2500.00, 4000.000);

$i = 0;
foreach (@n){
   $name = $_;
   $age = $a[$i];
   $salary = $s[$i++];
   write;
}
Now your report will look like −

===================================
Name                    Age
===================================
===================================
Ali                     20
  2000.00
===================================
===================================
Raza                    30
  2500.00
===================================
===================================
Jaffer                  40
  4000.00
===================================


##### Define a Pagination
format EMPLOYEE_TOP =
===================================
Name                    Age Page @<
                                 $%
===================================                               
.



#### Define a Report Footer
format EMPLOYEE_BOTTOM =
End of Page @<
            $%
.