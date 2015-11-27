number <- 600851475143
intsqrt <- 775147 # this was computed before, although there are methods of finding the integer square root of a number
i <- 0
prime_factors <- c(1)
ctr <- 2
while (number > 2)
{
	ctr <- 2 # go through the number a nonzero amount of times
	while(ctr < intsqrt) # this can also be number, but this was done for efficiency's sake
	{
		if(number %% ctr == 0) # if it is a prime factor, then we append to prime_factors - not the most efficient method
		{
			prime_factors <- c(prime_factors, ctr) # append this to the vector, also not efficient
			number <- number / ctr # divide our number by the counter value

		}
		ctr <- ctr + 1 # update counter value
	}
}

sprintf('Largest Prime Factor: %d', max(prime_factors))