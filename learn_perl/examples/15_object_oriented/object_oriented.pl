!/usr/bin/perl -w

######### Object Basics
# There are three main terms, explained from the point of view of how Perl handles objects. 
# The terms are object, class, and method.

# ----- An object within Perl is merely a reference to a data type that knows what class it belongs to. 
# The object is stored as a reference in a scalar variable. Because a scalar only contains a reference to the object, 
# the same scalar can hold different objects in different classes.

# ----- A class within Perl is a package that contains the corresponding methods required to create and manipulate objects.

# ----- A method within Perl is a subroutine, defined with the package. The first argument to the method is an 
# object reference or a package name, depending on whether the method affects the current object or the class.




# Perl provides a bless() function, which is used to return a reference which ultimately becomes an object.




######## Defining a Class
# To declare a class named Person in Perl we do −

package Person;
sub new {
   my $class = shift;
   my $self = {
      _firstName => shift,
      _lastName  => shift,
      _ssn       => shift,
   };
   # Print all the values just for clarification.
   print "First Name is $self->{_firstName}\n";
   print "Last Name is $self->{_lastName}\n";
   print "SSN is $self->{_ssn}\n";
   bless $self, $class;
   return $self;
}


# Now Let us see how to create an Object.
$object = new Person( "Mohammad", "Saleem", 23234345);


# You can use simple hash in your consturctor if you don't want to assign any value to any class variable. For example −
package Person;
sub new {
   my $class = shift;
   my $self = {};
   bless $self, $class;
   return $self;
}


# Defining Methods
sub getFirstName {
   return $self->{_firstName};
}

# Another helper function to set person’s first name −
sub setFirstName {
   my ( $self, $firstName ) = @_;
   $self->{_firstName} = $firstName if defined($firstName);
   return $self->{_firstName};
}


# Now lets have a look into complete example: Keep Person package and helper functions into Person.pm file.
package Person;

sub new {
   my $class = shift;
   my $self = {
      _firstName => shift,
      _lastName  => shift,
      _ssn       => shift,
   };
   # Print all the values just for clarification.
   print "First Name is $self->{_firstName}\n";
   print "Last Name is $self->{_lastName}\n";
   print "SSN is $self->{_ssn}\n";
   bless $self, $class;
   return $self;
}
sub setFirstName {
   my ( $self, $firstName ) = @_;
   $self->{_firstName} = $firstName if defined($firstName);
   return $self->{_firstName};
}

sub getFirstName {
   my( $self ) = @_;
   return $self->{_firstName};
}
1;



# Now let's make use of Person object in employee.pl file as follows −
#!/usr/bin/perl
use Person;

$object = new Person( "Mohammad", "Saleem", 23234345);
# Get first name which is set using constructor.
$firstName = $object->getFirstName();

print "Before Setting First Name is : $firstName\n";

# Now Set first name using helper function.
$object->setFirstName( "Mohd." );

# Now get first name set by helper function.
$firstName = $object->getFirstName();
print "Before Setting First Name is : $firstName\n";

# When we execute above program, it produces the following result −
# First Name is Mohammad
# Last Name is Saleem
# SSN is 23234345
# Before Setting First Name is : Mohammad
# Before Setting First Name is : Mohd.
