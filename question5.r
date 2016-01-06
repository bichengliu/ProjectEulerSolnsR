source("mygcd.r")
prod <- 1 # this will keep out final result

for(i in 1:20)
{
	if((prod %% i) != 0) # if i does not divide prod
	{
		prod <- prod*i %/% mygcd(prod, i)
	}
}

sprintf('Here is the product: %d', prod)