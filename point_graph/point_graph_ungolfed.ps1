$array=2,4,6,8,10,9,8,7,6,5,4,3,2,1
$arrayLength = $array.length
$lines=@();

# Pad function
$pad = {
    $n=$args[0];("0","")[$args[0]-gt9] + $n
}
# For every row, of unique values sorted descending
(($array|sort)[-1]..1)|%{
    [char[]]$charArray=
    # The padded value
    (&$pad $_)+

    # and the vertical axis
    "|"+

    # and the background dots
    "."*($arrayLength*3-2)

    $lines+=,$charArray
}





# Plot the points on our "2D array" of arrays of char arays
$index=0
$array|%{
    ($lines[$lines.length-$_])[(3+$index*3)] = 'o'
    $index++
}




# Print lines
($lines|%{$_-join''})

# Bottom axis
#   line
"  +"+("-")*($arrayLength*3-2)
#   and numbers

"  "+ (1..$arrayLength |%{ &$pad $_})