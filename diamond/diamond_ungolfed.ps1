#https://codegolf.stackexchange.com/questions/162798/diamond-creator
#param($length)
$length = 3;
'x'*$length;
0..($length*2-1)|%{
    $i = ($_,($length-($_-$length)-1))[$_-ge$length]
    " "*($length-$i-1)+"x"*($i*2+1)
}
