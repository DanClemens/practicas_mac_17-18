divisores y = [x|x<-[1..y], mod y x == 0]
primo y = divisores y == [1,y]

mimap2 :: (a -> b) -> [a] -> [b]
mimap2 a b = [a n|n<-b]

mifilter :: (a -> Bool) -> [a] -> [a]
mifilter a b = [n|n<-b, a n]