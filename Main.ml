open Util
open Result

let failOnMod n' msg n = if n mod n' = 0 then Failure msg else Success n
let aa     = failOnMod 3 "あぁ^～"
let kokoro = failOnMod 5 "心が"
let pyon   = failOnMod 7 "ぴょんぴょんするんじゃぁ^～"
let (&&&) = plus const (^)
let gochiusa = aa &&& kokoro &&& pyon >> either string_of_int id

let () = List.iter (gochiusa >> Printf.printf "%s\n") (1--105)
