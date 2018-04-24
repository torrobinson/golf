# call with array parameter, like blahblah.ps1 1,2,3,4,5

#214
param($b)$a,$e,$c=$b.count,@(),0;$d={$args|%{'{0:0#}'-f$_}};($b|sort)[-1]..1|%{$e+=,[char[]]((&$d $_)+"|"+"."*($a*3-2))};$b|%{$e[$e.count-$_][3+$c++*3]='o'};$e|%{$_-join''};"  +"+"-"*($a*3-2);"  "+(1..$a|%{&$d $_})