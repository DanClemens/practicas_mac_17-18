esConjunto [] = True
esConjunto c = if(pertenece (head(c)) (tail(c)) == True) then False
			   else esConjunto (tail(c))
			   
pertenece a []  = False
pertenece a l = if head(l) == a then True
				else pertenece a (tail(l))
				
subConjunto [] c2 = True
subConjunto c1 c2 = if pertenece(head(c1)) c2 then subConjunto (tail(c1)) c2
					else False