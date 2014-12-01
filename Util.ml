let rec (--) n m =
  if n > m then [] 
  else n::(n+1 -- m)
let id x = x
let const x y = x
let (>>) f g x = g @@ f x
