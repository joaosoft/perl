#!/usr/bin/perl

##### Perl has a special variable, @ISA, to help with this. @ISA governs (method) inheritance.

# Following are the important points to be considered while using inheritance −

# Perl searches the class of the specified object for the given method or attribute, i.e., variable.

# Perl searches the classes defined in the object class's @ISA array.

# If no method is found in steps 1 or 2, then Perl uses an AUTOLOAD subroutine, if one is found in the @ISA tree.

# If a matching method still cannot be found, then Perl searches for the method within the UNIVERSAL class (package) 
# that comes as part of the standard Perl library.

# If the method still has not found, then Perl gives up and raises a runtime exception.

package Employee;
use Person;
use strict;
our @ISA = qw(Person);    # inherits from Person


# Now Employee Class has all the methods and attributes inherited from Person class and you can use them as follows: 
# Use main.pl file to test it 
#!/usr/bin/perl

use Employee;

$object = new Employee( "Mohammad", "Saleem", 23234345);
# Get first name which is set using constructor.
$firstName = $object->getFirstName();

print "Before Setting First Name is : $firstName\n";

# Now Set first name using helper function.
$object->setFirstName( "Mohd." );

# Now get first name set by helper function.
$firstName = $object->getFirstName();
print "After Setting First Name is : $firstName\n";


# When we execute above program, it produces the following result −
# First Name is Mohammad
# Last Name is Saleem
# SSN is 23234345
# Before Setting First Name is : Mohammad
# Before Setting First Name is : Mohd.






####### Method Overriding
#!/usr/bin/perl

package Employee;
use Person;
use strict;
our @ISA = qw(Person);    # inherits from Person

# Override constructor
sub new {
   my ($class) = @_;

   # Call the constructor of the parent class, Person.
   my $self = $class->SUPER::new( $_[1], $_[2], $_[3] );
   # Add few more attributes
   $self->{_id}   = undef;
   $self->{_title} = undef;
   bless $self, $class;
   return $self;
}

# Override helper function
sub getFirstName {
   my( $self ) = @_;
   # This is child class function.
   print "This is child class helper function\n";
   return $self->{_firstName};
}

# Add more methods
sub setLastName{
   my ( $self, $lastName ) = @_;
   $self->{_lastName} = $lastName if defined($lastName);
   return $self->{_lastName};
}

sub getLastName {
   my( $self ) = @_;
   return $self->{_lastName};
}

1;




# Now let's again try to use Employee object in our main.pl file and execute it.

#!/usr/bin/perl

use Employee;

$object = new Employee( "Mohammad", "Saleem", 23234345);
# Get first name which is set using constructor.
$firstName = $object->getFirstName();

print "Before Setting First Name is : $firstName\n";

# Now Set first name using helper function.
$object->setFirstName( "Mohd." );

# Now get first name set by helper function.
$firstName = $object->getFirstName();
print "After Setting First Name is : $firstName\n";

# When we execute above program, it produces the following result −
# First Name is Mohammad
# Last Name is Saleem
# SSN is 23234345
# This is child class helper function
# Before Setting First Name is : Mohammad
# This is child class helper function
# After Setting First Name is : Mohd.







######## Default Autoloading
# Perl offers a feature which you would not find in any other programming languages: a default subroutine. 
# Which means, if you define a function called AUTOLOAD(), then any calls to undefined subroutines 
# will call AUTOLOAD() function automatically. The name of the missing subroutine is accessible within this subroutine as $AUTOLOAD.

# Default autoloading functionality is very useful for error handling. Here is an example to implement AUTOLOAD, 
# you can implement this function in your own way.

sub AUTOLOAD {
   my $self = shift;
   my $type = ref ($self) || croak "$self is not an object";
   my $field = $AUTOLOAD;
   $field =~ s/.*://;
   unless (exists $self->{$field}) {
      croak "$field does not exist in object/class $type";
   }
   if (@_) {
      return $self->($name) = shift;
   }else {
      return $self->($name);
   }
}




######## Destructors and Garbage Collection
# A destructor method is simply a member function (subroutine) named DESTROY, 
# which will be called automatically in following cases −

# When the object reference's variable goes out of scope.
# When the object reference's variable is undef-ed.
# When the script terminates
# When the perl interpreter terminates
package MyClass;
...
sub DESTROY {
   print "MyClass::DESTROY called\n";
}




########### Object Oriented Perl Example
#!/usr/bin/perl

# Following is the implementation of simple Class.
package MyClass;

sub new {
   print "MyClass::new called\n";
   my $type = shift;            # The package/type name
   my $self = {};               # Reference to empty hash
   return bless $self, $type;   
}

sub DESTROY {
   print "MyClass::DESTROY called\n";
}

sub MyMethod {
   print "MyClass::MyMethod called!\n";
}


# Following is the implemnetation of Inheritance.
package MySubClass;

@ISA = qw( MyClass );

sub new {
   print "MySubClass::new called\n";
   my $type = shift;            # The package/type name
   my $self = MyClass->new;     # Reference to empty hash
   return bless $self, $type;  
}

sub DESTROY {
   print "MySubClass::DESTROY called\n";
}

sub MyMethod {
   my $self = shift;
   $self->SUPER::MyMethod();
   print "   MySubClass::MyMethod called!\n";
}

# Here is the main program using above classes.
package main;

print "Invoke MyClass method\n";

$myObject = MyClass->new();
$myObject->MyMethod();

print "Invoke MySubClass method\n";

$myObject2 = MySubClass->new();
$myObject2->MyMethod();

print "Create a scoped object\n";
{
	my $myObject2 = MyClass->new();
}
# Destructor is called automatically here

print "Create and undef an object\n";
$myObject3 = MyClass->new();
undef $myObject3;

print "Fall off the end of the script...\n";
# Remaining destructors are called automatically here


# When we execute above program, it produces the following result −
# Invoke MyClass method
# MyClass::new called
# MyClass::MyMethod called!
# Invoke MySubClass method
# MySubClass::new called
# MyClass::new called
# MyClass::MyMethod called!
#    MySubClass::MyMethod called!
# Create a scoped object
# MyClass::new called
# MyClass::DESTROY called
# Create and undef an object
# MyClass::new called
# MyClass::DESTROY called
# Fall off the end of the script...
# MyClass::DESTROY called
# MySubClass::DESTROY called