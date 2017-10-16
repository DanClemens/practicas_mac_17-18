{-factorial 0 = 1
factorial n = n * factorial (n-1) -}

{-factorial n
 |n==0= 1
 |n > 0= n * factorial (n-1)
 |otherwise = error "valor negativo"-}
 
 factorial n = if (n==0) then 1 else n*factorial (n-1)