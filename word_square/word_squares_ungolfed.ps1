$w="test"

# word length
$length = $w|% Le*;
$lines=@()
0..($length-1)|%{
    $letterIndex = $_
    $line=''

    # Build the top-left corner of the square
    0..($length-1)|%{
        $line+=$word[(($letterIndex,$_)[$_-le$letterIndex])]
    }    

    # Add it to a collection while mirroring it across
    $lines+=$line+($line[-2..-$line.length]-join'')

}

$linecount = $lines.length
# Print the lines forward and then backward, mirroring it vertically
0..($linecount-1)+($linecount-2)..0|%{$lines[$_]}
