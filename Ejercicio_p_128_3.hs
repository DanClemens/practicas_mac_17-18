divisores y = [x|x<-[1..y], mod y x == 0]
primo y = divisores y == [1,y]

genPrimos = [x|x<-[1..],primo x]

nPrimos n = [(genPrimos!!x)|x<-[0..n-1]]

hashC m = sum[(m!!x)*((nPrimos (length(m)))!!(length(m)-1-x))|x<-[0..length(m)-1]] 