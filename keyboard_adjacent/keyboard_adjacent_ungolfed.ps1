cls
$letter='p'
[string[]]$return=$keyboard=@()
$keyboard+=('qwertyuiop'-split''),('asdfghjkl'-split''),('zxcvbnm'-split'')


# q w e r t y u i o p
#  a s d f g h j k l
#   z x c v b n m

# 0 1 2 3 4 5 6 7 8 9
#  0 1 2 3 4 5 6 7 8
#   0 1 2 3 4 5 6

# for every row
0..2|%{
.{
    # try add letters if target is below [if row[me+1] has letter at index i, add letters at me[i,i+1]]
    $positionBelow = $keyboard[$_+1].IndexOf($letter)
    if($positionBelow-ge0){
        $return+=,$keyboard[$_][$positionBelow..($positionBelow+1)]
    }
    $positionBelow=-1

    # try add letters if target is on same row [if letter is here at i, add letters at me[i-1, i+1]] [[swallow any errors]]
    $positionHere = $keyboard[$_].IndexOf($letter)
    if($positionHere-ge0){
        $return+=,$keyboard[$_][($positionHere-1)..($positionHere+1)-ne$positionHere]
    }
    $positionHere=-1

    # try add letters if target is above [if row[me-1] has letter at i, add letters at me[i, i-1]] [[swallow any errors]]
    $positionAbove = $keyboard[$_-1].IndexOf($letter)
    if($_-1-gt-1-and$positionAbove-ge0){
        $return+=,$keyboard[$_][($positionAbove-1)..$positionAbove]
    }
    $positionAbove=-1
 }2>$x

}

((($return=(-join$return)-replace'\s','')-split'')|sort|gu)-join''

#z