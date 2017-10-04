

# What is this qw I often see in Perl code?

# qw stands for quote word. It looks like some other operators such as q and qq, or qr, but actually it works more like split.

# If you want to include a list of strings in your code, this is one way:

my @name = ('foo', 'bar', 'zorg');
# Instead of that you can use the qw operator:

my @name = qw(foo bar zorg);
# Which is the same as:

my @name = qw(foo bar    zorg);
# or even

my @name = qw(
    foo
    bar
    zorg
);
# qw will take the values provided in the parentheses and split them up where it finds one or more spaces.

# So it has the same result as this code:

my @name = split /\s+/,  q(foo bar      zorg);
# Of course, there is no point in using split where we can use a qw. (And the split version would give different result if there was a whitespace or newline before the first word.)

# Why is it called quote word?
# Qw is slightly limited. Since it splits strings via spaces, no string in the created array can contain spaces. 
# For example, this creates a 3-element array:

my @name = ('foo', 'bar', 'zorg morg');