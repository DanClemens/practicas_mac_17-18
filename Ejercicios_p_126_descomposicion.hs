divisores y = [x|x<-[1..y], mod y x == 0]
primo y = divisores y == [1,y]
divisible x y = resto == 0
	where resto = mod x y
	
divisoresPrimos a = [x|x<-d, primo x]
	where d = divisores a
	
descomposicion a = [(x,maximum [y|y<-[1..a],divisible a (x^y)])|x<-d]
	where d = divisoresPrimos a