# call with array parameter, like blahblah.ps1 1,2,3,4,5

#251
param($d)$c,$a,$b=$d.length,@(),0;$e={$n=$args[0];("0","")[$args[0]-gt9]+$n};(($d|sort)[-1]..1)|%{[char[]]$f=(&$e $_)+"|"+"."*($c*3-2);$a+=,$f};$d|%{($a[$a.length-$_])[(3+$b*3)]='o';$b++};($a|%{$_-join''});"  +"+("-")*($c*3-2);"  "+(1..$c |%{ &$e $_})