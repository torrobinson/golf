# call with array parameter, like blahblah.ps1 1,2,3,4,5

#204
#param($b)$a,$e,$c=$b.count,@(),0;$d={'{0:00}'-f$args};($b|sort)[-1]..1|%{$e+=,[char[]]((&$d $_)+"|"+"."*($a*3-2))};$b|%{$e[$e.count-$_][3+$c++*3]='o'};$e|%{-join$_};"  +"+"-"*($a*3-2);"  "+1..$a|%{&$d $_}

#195
param($b)$a,$e,$c,$x=$b.count,@(),0,'{0:00}';($b|sort)[-1]..1|%{$e+=,[char[]]($x-f$_+"|"+"."*($a*3-2))};$b|%{$e[$e.count-$_][3+$c++*3]='o'};$e|%{-join$_};"  +"+"-"*($a*3-2);"  "+(1..$a|%{$x-f$_})