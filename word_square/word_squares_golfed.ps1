﻿#174
param($w)$a=$w|% Le*;$b=@();0..($a-1)|%{$d=$_;$c='';0..($a-1)|%{$c+=$w[(($d,$_)[$_-le$d])]};$b+=$c+($c[-2..-$c.length]-join'')};$e=$b.length;0..($e-1)+($e-2)..0|%{$b[$_]}