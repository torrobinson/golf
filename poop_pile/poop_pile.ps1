<#

Assuming script is passed a parameter of an integer >=1 that is the number of MIDDLE layers in a pile o poop.
The topmost layer must have a break in the bottom line which alternates all the way to the bottom

0=   
 (`\
(___)

1=
  (`\
 (__ )    =1
(_____)

2 =
   (`\
  (__ )
 ( ____)
(_______)

3 = 
    (`\
   (__ )
  ( ____)
 (______ )
(_________)

#>


$middleLayers = 0;

# top

" "*(1+$middleLayers) + "(``\"

## end top


# middle
if($middleLayers-gt0){
    0..($middleLayers-1)|%{
    
        " "*($middleLayers-$_)  + "(" + ("_"," ")[$_%2-ne0] + "_"*(1+$_*2) + ("_"," ")[$_%2-eq0] + ")"
    }
}
# end middle


#bottom
"(" + "_"*(3+$middleLayers*2) + ")"
#end bottom