# EEA method for R, I may start using a more standardized set of libraries for future problems

mygcd <- function(q, r){
	if(r == 0)
	{
		return(q) # returning a single number is favourable here, since 
	}
	else
	{
		return(mygcd(r, q %% r))
	}

}