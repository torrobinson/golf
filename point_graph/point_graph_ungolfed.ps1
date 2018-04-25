cls
#param($array)
$array=1,2,3,4
$arrayLength=$array.count
$lines=@();
$index=0

# Pad function
$pad={
    '{0:0#}'-f$args
};

# count down from the highest value to create the vertical axis
($array|sort)[-1]..1|%{

    # Rather than just printing, store as an array of char arrays so we can access them easier later

    $lines+=, # += will APPEND arrays, +=, will add an array TO an array
        [char[]]( # put together the line's string but cast as a char array
        # The padded value
        (&$pad $_)+

        # and the vertical axis
        "|"+

        # and the background dots
        "."*($arrayLength*4-2))
};

# Plot the points on our "2D array" of arrays of char arays
$array|%{
    $lines[$lines.count-$_][3+$index++*4]='o'
};

# Print lines
$lines|%{-join$_};

# Draw the bottom axis:
#   horizontal line
"  +"+"-"*($arrayLength*4-2)

#   and bottom numbers, padded
"  "+(1..$arrayLength|%{&$pad $_ +" "})

# When golfing, remove the pad function, it's shorter to just call '{0:00}'-f$variable