(
$string => upper-case() => normalize-unicode() => tokenize("\s+"),
let $string := 'aa bb cc' 
return
 $string=>replace('a','b')=>normalize-space()=>tokenize("\s")
)


