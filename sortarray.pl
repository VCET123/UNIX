#!/usr/bin/perl

# Static array
my @static_array = (5, 2, 9, 1, 7);

# Dynamic array
my @dynamic_array;

# Fill dynamic array with user input
print "Enter elements for dynamic array (press Ctrl+D to end):\n";
while (my $input = <STDIN>) {
    chomp $input;
    push @dynamic_array, $input;
}

# Sort static array
my @sorted_static = sort {$a <=> $b} @static_array;

# Sort dynamic array
my @sorted_dynamic = sort {$a <=> $b} @dynamic_array;

# Print sorted arrays
print "Sorted static array: @sorted_static\n";
print "Sorted dynamic array: @sorted_dynamic\n";
