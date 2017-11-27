--Aproximar pi
aproximaPi::Double->Double
aproximaPi t = t^2 * fromIntegral(length (cuadradosD t))
aproximaPi2 t = t^2 * fromIntegral(length (centrosD t))

cuadradoD::Double->Double->Bool
cuadradoD x y = if (sqrt((x^2)+(y^2))<=1)
	then True
	else False
	
centros t  = [[x,y]|x<-[(-1+(t/2)),(-1+t+(t/2))..(1-(t/2))],y<-[(-1+(t/2)),(-1+t+(t/2))..(1-(t/2))]]

cuadradosD t = [n|n<-centros t, cuadradoD (head(n)) (head(tail(n)))==True]

centrosD t = [[x,y]|x<-[(-1+(t/2)),(-1+t+(t/2))..(1-(t/2))],y<-[(-1+(t/2)),(-1+t+(t/2))..(1-(t/2))],cuadradoD x y == True] 