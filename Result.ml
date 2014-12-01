type ('a, 'b) t = Success of 'a | Failure of 'b
let succeed x = Success x
let fail x = Failure x
let either successFunc failureFunc = function
  | Success s -> successFunc s
  | Failure f -> failureFunc f
let plus addS addF f1 f2 r = match f1 r, f2 r with
  | Success s1, Success s2 -> succeed @@ addS s1 s2
  | Failure f1, Success _  -> fail f1
  | Success _ , Failure f2 -> fail f2
  | Failure f1, Failure f2 -> fail @@ addF f1 f2
