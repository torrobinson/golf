# input a letter, return the letters on the qwerty keyboard that are touching it, in a->z order

#384
#param($a)[string[]]$b=$c=@();$c+=('qwertyuiop'-split''),('asdfghjkl'-split''),('zxcvbnm'-split'');0..2|%{.{$d=$c[$_+1].IndexOf($a);if($d-ge0){$b+=,$c[$_][$d..($d+1)]}$d=-1;$e=$c[$_].IndexOf($a);if($e-ge0){$b+=,$c[$_][($e-1)..($e+1)-ne$e]}$e=-1;$f=$c[$_-1].IndexOf($a);if($_-1-gt-1-and$f-ge0){$b+=,$c[$_][($f-1)..$f]}$f=-1}2>$x};((($b=(-join$b)-replace'\s','')-split'')|sort|gu)-join''

#214
#('qswz','ghnv','dfvx','cefrsx','drsw','cdgrtv','bfhtvy','bgjnuy','jkou','hikmnu','ijlmo','kop','jkn','bhjm','iklp','lo','aw','deft','adewxz','fgry','hijy','bcfg','aeqs','cdsz','ghtu','asx')[[byte][char]$args[0]-97]

#165
('qswz0ghnv0dfvx0cefrsx0drsw0cdgrtv0bfhtvy0bgjnuy0jkou0hikmnu0ijlmo0kop0jkn0bhjm0iklp0lo0aw0deft0adewxz0fgry0hijy0bcfg0aeqs0cdsz0ghtu0asx'-split0)[[char]$args[0]-97]