## Create a Matrix equal *2
> A = matrix( c(1,2,3,4), nrow=2 ) *2 
## Execute and return the inverse result
> solve(A) 
     [,1]  [,2]
[1,] -1.0  0.75
[2,]  0.5 -0.25

## Creating a matrix wich is returning cache of data 
cachemean <- function(D, ...) {
        
P <- D$getmean()
        
if(!is.null(P)) {
                
message("Cache from the data")
                
return(P)
        
}
        
data <- D$get()
        
m <- mean(data, ...)
        
D$setmean(D)
        
D
}
