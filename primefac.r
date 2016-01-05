primefac <- function(n){
	i <- 2
	pfactors <- 1
	while(n > 2)
	{
		if((n %% i) == 0)
		{
			n <- n %/% i # the brute-force solution, but this will suffice for small Project-Euler problems;
					     # a better method may be used for large factorization
			pfactors <- c(pfactors, i) # appending a list to itself, which is a bad practice in general; will work because 
			i <- 2                     # the numbers are not enormous for the problems
		}
		else
		{
			i <- i + 1 # increase i, if the number does not divide evenly
		}
	}
	return(pfactors)
}