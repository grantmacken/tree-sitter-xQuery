(
document {
  element book {
    attribute size {4 + 3},
    element { 'page' } { 
      comment { 'hide me'},
      text { 'hello' }
    }
  }
},
for $s in ("one", "two", "red", "blue")
return ``[`{$s}` fish]``,
map { 
'key1' : 'value1',
'key2' : 'value2'
},
array { 'one', 'two' },
$map[?name='Mike'],
$maps ! ?name='Mike',
[ 1,2 ]?1,
<book isbn="isbn-0060229357">
 <title> xxx {$foo} </title>
</book>
)
