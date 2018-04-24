cls
#param($array)
$array=2,4,6,8,10,9,8,7,6,5,4,3,2,1,3,5,7,9,11
$arrayLength=$array.count
$lines=@();
$index=0

# Pad function
$pad={
    $args|%{'{0:0#}'-f$_}
};

# count down from the highest value to create the vertical axis
($array|sort)[-1]..1|%{
    $lines+=,
    [char[]](
    # The padded value
    (&$pad $_)+

    # and the vertical axis
    "|"+

    # and the background dots
    "."*($arrayLength*3-2))

    
};





# Plot the points on our "2D array" of arrays of char arays
$array|%{
    $lines[$lines.count-$_][3+$index++*3]='o'
};




# Print lines
$lines|%{$_-join''};

# Bottom axis
#   line
"  +"+"-"*($arrayLength*3-2)
#   and numbers

"  "+(1..$arrayLength|%{&$pad $_})