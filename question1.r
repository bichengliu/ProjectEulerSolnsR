threshold <- 1000
i <- 1
sum <- 0
while (i < threshold)
{
	# if the number divides 3, then add it to our sum
	if((i %% 3) == 0)
	{
		sum <- sum + i
	}

	# if the number divides 5, and not 3, add it to our sum; this is to prevent double-counting
	else if((i %% 5) == 0)
	{
		sum <- sum + i
	}

	# update i, this is important for while loops
	i <- i + 1
}

sprintf('Here is the total: %d', sum)