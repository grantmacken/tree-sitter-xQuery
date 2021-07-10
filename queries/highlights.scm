(string_literal) @string
[
(integer_literal)
(decimal_literal)
(double_literal)
] @number
;(identifier) @variable
;(context_item_expr) @method
; (_ 
;   [
;    ns_builtin: (identifier)
;    unprefixed: (identifier)
;    prefix: (identifier)
;    local_part: (identifier)
; ] @property)

(function_call
  (EQName 
    [
    ns_builtin: (identifier)
    prefix: (identifier)
    local_part: (identifier)
    ] @function))

; binary exressions
(range_expr [ "to" ] @keyword.operator)
(additive_expr [ "-" "+"] @operator)
(multiplicative_expr [ "*" ] @operator)
(multiplicative_expr [ "div" "idiv" "mod" ] @keyword.operator)
(comparison_expr [ "eq" "ne" "lt" "le" "gt" "ge" "is" ] @keyword.operator)
(comparison_expr [ "=" "!=" "<" "<=" ">" ">="  "<<" ">>" ] @operator)
(unary_expr [ "-" "+"] @operator)
(and_expr [ "and" ] @keyword.operator)
(or_expr [ "or" ] @keyword.operator)

(map_constructor ["map"] @keyword.function)

; sequences types
 [ "as" ] @keyword.operator

[
 "let"
] @keyword

"function" @keyword.function
"return" @keyword.return

;"." @punctuation.delimiter
"," @punctuation.delimiter
":" @punctuation.delimiter
";" @punctuation.delimiter

"(" @punctuation.bracket
")" @punctuation.bracket
"{" @punctuation.bracket
"}" @punctuation.bracket
"[" @punctuation.bracket
"]" @punctuation.bracket

(comment) @comment

(ERROR) @error
