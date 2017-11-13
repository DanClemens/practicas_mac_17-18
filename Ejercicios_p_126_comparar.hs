evaluaciones::[a]->[(a->b)]->[[b]]

evaluaciones a b = [[n x|n<-b]|x<-a]

igualCero x = x==0
mayorCero x = x>0

comparar a = [[(!!)x 0 >0,(!!)x 1==0,(!!)x 2==0]|x<-a]
