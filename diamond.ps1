#https://codegolf.stackexchange.com/questions/162798/diamond-creator

#89
#param($l)'x'*$l;0..($l*2-1)|%{$i=($_,($l-($_-$l)-1))[$_-ge$l];" "*($l-$i-1)+"x"*($i*2+1)}

#88
#param($l)'x'*$l;$w={$i=$args[0];" "*($l-$i)+"x"*($i*2-1)};1..$l|%{&$w $_}$l..1|%{&$w $_}

#83
#param($l)'x'*$l;1..$l|%{" "*($l-$_)+"x"*($_*2-1)};$l..1|%{" "*($l-$_)+"x"*($_*2-1)}

#55
param($l)'x'*$l;1..$l+$l..1|%{" "*($l-$_)+"x"*($_*2-1)}
