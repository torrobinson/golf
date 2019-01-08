#727 chars
$b,$0,$1,$2,$l='1|2|3
-+-+-
4|5|6
-+-+-
7|8|9',(123,456,789,147,258,369,159,357),(0,2,4,14,16,18,28,30,32),@(),@();function p($p,$i){$b=[char[]]$b;$b[$1[$i-1]]=$p;return -join$b}function m($p,$r){($r=$r-split''|?{$_})|?{$_-notin($p|?{$_-in$r})}}function w($p){$w=@();$0|%{$r=m $p $_;if($r.count-eq1){$w+=$r}};return $w}function c($w,$p){$0|%{if((m $p $_).count-eq0){cls;$b;'YOU '+("LOSE","WIN")[$w];exit}}}cls;$b;for(;($2+$l).count-lt9){$p='';for(;$p-eq''){$p=Read-Host 'Enter space to place your piece';if($p-in$2+$l){$p=''}}1;$b=p "O"$p;$2+=$p;c 1 $2;$z,$m=@(),0;$k=w $2;$z+=w $l;$z+=$k;$z+=5;$z+=(1,3,7,9)|sort{random};$z+=(2..8)|sort{random};$z|%{if($m-eq0){if($_-notin($2+$l)){$b=p "X"$_;$l+=$_;$m=1;c 0 $l}}};cls;$b}'TIE'
