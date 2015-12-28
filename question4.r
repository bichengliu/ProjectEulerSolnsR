# trying to find the maximum palindrome of a number that is a product of two 3-digit numbers

i <- 100
j <- 100
threshold <- 1000
largestproduct <- 1




while(i < threshold)
{

	while(j < threshold)
	{
		currentproduct <- i * j
		if((currentproduct %/% 100000 == currentproduct %% 10) &
		 ((currentproduct %/% 10000) %% 10) == ((currentproduct %/% 10) %% 10) &
		  ((currentproduct %/% 1000) %% 10) == ((currentproduct %/% 100) %% 10) &
		  currentproduct > largestproduct)
		{
			largestproduct <- currentproduct
			largesti <- i
			largestj <- j
		}
		j <- j + 1
	}
	i <- i + 1
	j <- 100
}

sprintf('Here is the largest product: %d', largestproduct)
sprintf(' it was the result of %d, and %d', largesti, largestj)