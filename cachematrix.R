makeCacheMatrix<- function(x=matrix()) {
        A <- NULL
        set <- function(y) {
                x <<- y
                A <<- NULL
        }
        get <- function() x
        setcache <- function(solve) A <<- solve
        getcache <- function() A
        list(set = set, get = get,
             setcache = setcache,
             getcache = getcache)
}


## CacheSolve
cacheSolve <- function(x,...) {
        A <- x$getcache()
        if(!is.null(A)) {
                message("getting cached data")
                return(A)
        }
        data <- x$get()
        A <- solve(data)
        x$setcache(A)
        A
}
