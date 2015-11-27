# sum of all even-valued Fibonacci numbers below 4 million, assuming we start with 1, 2

threshold <- 4000000
fibptwo<- 1
fibpone <- 2
fibcurrent <- 0
sum <- 2
while (fibcurrent < threshold)
{
	fibcurrent <- fibptwo + fibpone
	fibptwo <- fibpone
	fibpone <- fibcurrent
	if(fibcurrent %% 2 == 0){sum <- sum + fibcurrent}

}
sprintf('Here is the total: %d', sum)